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
public partial class ManageMenu : System.Web.UI.Page
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
        //to retrieve the session
        Restaurant restaurant = (Restaurant)Session["userRestaurant"];
        //to show the restaurant name
        lblName.Text = restaurant.Name;
    }
    void gvBind()
    {
        dt = new DataTable();
        con = new SqlConnection(conStr);
        con.Open();
        //sql command
        adapt = new SqlDataAdapter("select * from MenuItem where restaurantID = @restaurantID", con);
        //sql parameters
        adapt.SelectCommand.Parameters.Add(new SqlParameter { ParameterName = "@restaurantID", Value = Session["restaurantID"].ToString() });
        adapt.Fill(dt);
        if (dt.Rows.Count > 0) //check whether the rows is more than zero
        {
            gvMenu.DataSource = dt;
            gvMenu.DataBind();
        }
        con.Close();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //retrieve the restaurant session
        Restaurant r = (Restaurant)Session["userRestaurant"];
        string imagefile = "notavailable"; //initialize an imagefile into notavailable
        if (FileUpload1.HasFile)  //check if the file has the photo
        {
            imagefile = FileUpload1.FileName; 
            FileUpload1.SaveAs(Server.MapPath("../images/" + imagefile));//store the file in the images folder          
        }
        Random rnd = new Random(); //declare a random number generator
        int rId = rnd.Next(0, 100); //initialize the random number generator for restaurantID

        MenuItem m = new MenuItem()
        {
            MenuItemID = "M" + rId,
            Name = tbxName.Text,
            Description = tbxDesc.Text,
            Price = Convert.ToDouble(tbxPrice.Text),
            Photo = imagefile,
            Restaurant = r
        };
        int id = MenuItemDB.insertMenuItem(m); //insert the menuitem into database
        lblOutput.Text = "Successfully added!";
        tbxName.Text = "";
        tbxDesc.Text = "";
        tbxPrice.Text = "";
        imagefile = "notavailable";
        gvBind();
    }

    protected void gvMenu_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvMenu.EditIndex = e.NewEditIndex; //to update the menu item
        gvBind();
    }

    protected void gvMenu_RowUpdating(object sender, GridViewUpdateEventArgs e) //to update the menuitem from database
    {
        Label lblMenuID = gvMenu.Rows[e.RowIndex].FindControl("lblMenuID") as Label;
        TextBox tbxMname = gvMenu.Rows[e.RowIndex].FindControl("tbxMname") as TextBox;
        TextBox tbxMdesc = gvMenu.Rows[e.RowIndex].FindControl("tbxMdesc") as TextBox;
        TextBox tbxMprice = gvMenu.Rows[e.RowIndex].FindControl("tbxMprice") as TextBox;
        FileUpload fuPhoto = gvMenu.Rows[e.RowIndex].FindControl("fuPhoto") as FileUpload;
        SqlCommand cmd;
        con = new SqlConnection(conStr);
        con.Open();
        //update record
        if(fuPhoto.HasFile==true)
         cmd = new SqlCommand("update MenuItem set name='" + tbxMname.Text + "',description='" + tbxMdesc.Text + "',price='" + tbxMprice.Text + "',photo='" + fuPhoto.FileName + "' where menuItemID='" + lblMenuID.Text+"'", con);
        else
            cmd = new SqlCommand("update MenuItem set name='" + tbxMname.Text + "',description='" + tbxMdesc.Text + "',price='" + tbxMprice.Text + "' where menuItemID='" + lblMenuID.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvMenu.EditIndex = -1;
        gvBind();
    }

    protected void gvMenu_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //to delete a row from database
        GridViewRow row = (GridViewRow)gvMenu.Rows[e.RowIndex];
        Label Label1 = (Label)row.FindControl("Label1");
        con = new SqlConnection(conStr);
        con.Open();
        //sql command
        SqlCommand cmd = new SqlCommand("delete from menuItem where menuItemID=@menuItemID", con);
        //sql parameters
        cmd.Parameters.AddWithValue("@menuItemID", Label1.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        gvBind();
    }




    protected void gvMenu_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //to cancel edit
        gvMenu.EditIndex = -1;
        gvBind();
    }
}