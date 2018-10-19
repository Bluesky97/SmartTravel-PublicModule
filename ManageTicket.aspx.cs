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
public partial class ShowTicket : System.Web.UI.Page
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
        //to retrieve the attraction session
        Attraction attraction = (Attraction)Session["userAttraction"];
        //to show the attraction name
        lblName.Text = attraction.Name;
    }
    void gvBind()
    {
        //to show the ticket type into the gridview
        List<TicketType> ticketTypes = TicketTypeDB.getTicketByOwner(Convert.ToInt32(Session["attractionID"]));
        gvTicket.DataSource = ticketTypes;
        gvTicket.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //retrieve the attraction session 
        Attraction a = (Attraction)Session["userAttraction"];
        //declare random number generator
        Random rnd = new Random();
        //initialize the random number generator
        int rId = rnd.Next(30, 1000);

        TicketType t = new TicketType()
        {
            TicketID = rId,
            Type = tbxType.Text,
            Description = tbxDesc.Text,
            Price = Convert.ToDouble(tbxPrice.Text),
            Attraction = a
        };
        int id = TicketTypeDB.insertTicket(t); //to insert ticket into database
        lblOutput.Text = "Successfully added!"; //to show the message
        tbxType.Text = "";
        tbxPrice.Text = "";
        tbxDesc.Text = "";
        gvBind();
    }

    protected void gvTicket_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void gvTicket_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //to edit
        gvTicket.EditIndex = e.NewEditIndex;
        gvBind();
    }

    protected void gvTicket_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //to update ticket from database
        Label tID = gvTicket.Rows[e.RowIndex].FindControl("lblID") as Label;
        TextBox textType = gvTicket.Rows[e.RowIndex].FindControl("tbxType") as TextBox;
        TextBox textDesc = gvTicket.Rows[e.RowIndex].FindControl("tbxDesc") as TextBox;
        TextBox textPrice = gvTicket.Rows[e.RowIndex].FindControl("tbxPrice") as TextBox;
        con = new SqlConnection(conStr);
        con.Open();
        //update record
        SqlCommand cmd = new SqlCommand("update TicketType set type='" + textType.Text + "',description='" + textDesc.Text + "',price='" + textPrice.Text + "' where ticketID=" + Convert.ToInt32(tID.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvTicket.EditIndex = -1;
        gvBind();
    }

    protected void gvTicket_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //to delete a row from database
        List<TicketType> ticketTypes = TicketTypeDB.getTicketByOwner(Convert.ToInt32(Session["attractionID"]));
        TicketType t = ticketTypes[e.RowIndex];
        TicketTypeDB.deleteTicket(t.TicketID);
        ticketTypes.Remove(t);
        DataBind();
        gvBind();
    }


    protected void gvTicket_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //to cancel update
        gvTicket.EditIndex = -1;
        gvBind();
    }
}