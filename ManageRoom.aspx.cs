using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//INFT 3970 - FYP Project
//Start Date : 10th May 2018
//Submission Date : 1st August 2018
//Names     :Andrian Alexander Putra(c3271469)
//          :Zhang Chuhan(c3270145)
//          :Thet Paing Htun(c3271285)
//          :Hay Marn Oo(c3271471)
public partial class ManageRoom : System.Web.UI.Page
{
    public static string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    SqlConnection con;
    SqlDataAdapter adapt;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvBind(); //to bind the data
        }
        //to retrieve the hotel session
        Hotel hotel = (Hotel)Session["userHotel"];
        //to show the hotel name
        lblName.Text = hotel.Name;
    }
    void gvBind()
    {
        dt = new DataTable();
        con = new SqlConnection(conStr);
        con.Open();
        //sql command
        adapt = new SqlDataAdapter("select * from Room where hotelID = @hotelID", con);
        //sql parameters
        adapt.SelectCommand.Parameters.Add(new SqlParameter { ParameterName = "@hotelID", Value = Session["hotelID"].ToString() });
        adapt.Fill(dt);
        if (dt.Rows.Count > 0) //check if the rows has value
        {
            gvRoom.DataSource = dt;
            gvRoom.DataBind();
        }
        con.Close();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string imagefile = "notavailable.jpg";
        if (FileUpload1.HasFile) //checking whether the file upload has the file
        {
            imagefile = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/images/" + imagefile));//store the file in the images folder          
        }

        Hotel h = (Hotel)Session["userHotel"]; //retrieve the hotel session
        Random rnd = new Random(); //declara random number generator
        int rId = rnd.Next(0, 100); //initialize the random number generator

        Room r = new Room()
        {
            RoomID = "RM" + rId,
            RoomName = tbxName.Text,
            Type = tbxType.Text,
            Capacity = Convert.ToInt32(tbxCap.Text),
            RoomSize = tbxSize.Text,
            Desc = tbxDesc.Text,
            Remarks = tbxRemarks.Text,
            Services = tbxServices.Text,
            Pictures = imagefile,
            Price = Convert.ToDouble(tbxPrice.Text),
            Hotel = h
        };
        int id = RoomDB.insertRoom(r); //to insert room into database
        lblOutput.Text = "Successfully added!"; //to show the message, where hotel owner successfully added room into database
        tbxName.Text = "";
        tbxType.Text = "";
        tbxCap.Text = "";
        tbxSize.Text = "";
        tbxDesc.Text = "";
        tbxRemarks.Text = "";
        tbxServices.Text = "";
        imagefile = "notavailable";
        tbxPrice.Text = "";
        gvBind();
    }

    protected void gvRoom_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvRoom.EditIndex = e.NewEditIndex; //to edit
        gvBind();
    }

    protected void gvRoom_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //to update row from database
        Label lId = gvRoom.Rows[e.RowIndex].FindControl("lblID") as Label;
        TextBox tbxRname = gvRoom.Rows[e.RowIndex].FindControl("tbxRname") as TextBox;
        TextBox tbxRtype = gvRoom.Rows[e.RowIndex].FindControl("tbxRtype") as TextBox;
        TextBox tbxRcap = gvRoom.Rows[e.RowIndex].FindControl("tbxRcap") as TextBox;
        TextBox tbxRsize = gvRoom.Rows[e.RowIndex].FindControl("tbxRsize") as TextBox;
        TextBox tbxRdesc = gvRoom.Rows[e.RowIndex].FindControl("tbxRdesc") as TextBox;
        TextBox tbxRremarks = gvRoom.Rows[e.RowIndex].FindControl("tbxRremarks") as TextBox;
        TextBox tbxRsvc = gvRoom.Rows[e.RowIndex].FindControl("tbxRsvc") as TextBox;
        FileUpload fuPhoto = gvRoom.Rows[e.RowIndex].FindControl("fuPhoto") as FileUpload;
        TextBox tbxRprice = gvRoom.Rows[e.RowIndex].FindControl("tbxRprice") as TextBox;
        SqlCommand cmd;
        con = new SqlConnection(conStr);
        con.Open();
        //update record
        if(fuPhoto.HasFile==true)
             cmd = new SqlCommand("update Room set roomName='" + tbxRname.Text + "',type='" + tbxRtype.Text + "',capacity='" + tbxRcap.Text + "',roomSize='" + tbxRsize.Text + "',description='" + tbxRdesc.Text + "' ,remarks='" + tbxRremarks.Text + "',services='" + tbxRsvc.Text + "',photo='" + fuPhoto.FileName + "',price='" + tbxRprice.Text + "' where roomID='"+lId.Text+"'", con);
        else
            cmd = new SqlCommand("update Room set roomName='" + tbxRname.Text + "',type='" + tbxRtype.Text + "',capacity='" + tbxRcap.Text + "',roomSize='" + tbxRsize.Text + "',description='" + tbxRdesc.Text + "' ,remarks='" + tbxRremarks.Text + "',services='" + tbxRsvc.Text + "',price='" + tbxRprice.Text + "' where roomID='" + lId.Text + "'", con);

        cmd.ExecuteNonQuery();
        con.Close();
        gvRoom.EditIndex = -1;
        gvBind();
    }

    protected void gvRoom_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //to delete a row from database
        GridViewRow row = (GridViewRow)gvRoom.Rows[e.RowIndex];
        Label Label1 = (Label)row.FindControl("Label1");
        con = new SqlConnection(conStr);
        con.Open();
        //sql command
        SqlCommand cmd = new SqlCommand("delete from room where roomID=@roomID", con);
        //sql parameters
        cmd.Parameters.AddWithValue("@roomID", Label1.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        DataBind();
        gvBind();
    }

    protected void gvRoom_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvRoom.EditIndex = -1; //to cancel edit
        gvBind();
    }
}