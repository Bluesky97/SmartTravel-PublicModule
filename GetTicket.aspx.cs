using System;
using System.Collections.Generic;
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
public partial class GetTicket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblNoOfTicket.Visible = false;
            List<TicketType> ticketTypes = TicketTypeDB.getTicketByOwner(Convert.ToInt32(Session["attraction"])); //get data from database
            //to check whether the data is not null
            if (ticketTypes.Count != 0)
            {
                List<TicketType> ticAvail = new List<TicketType>();
                Session["ticket"] = ticAvail; //create ticket session
                lvTicket.DataSource = ticketTypes;
                lvTicket.DataBind();
            }
            else
                lblNoOfTicket.Visible = true; //show the message if the data is null

            pnlDetail.Visible = false;
            pnlBook.Visible = false;

            tbxDate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd"); //users are not allowed to select past date

        }


    }

    protected void btnBook_Click(object sender, EventArgs e) //to book the ticket of attraction
    {
        bool exist = false;
        TicketType t = TicketTypeDB.getTicket(Convert.ToInt32(Session["ticketID"])); //get the ticket details from database
        //to add the cart item classes for ticket details 
        CartItem c = new CartItem(t, Convert.ToInt32(Session["ticketID"]), t.Type, t.Description, Convert.ToDouble(t.Price), tbxDate.Text, Convert.ToInt32(tbxNoOfGuests.Text), t.Price);
        ShoppingCart sc = (ShoppingCart)Session["cart"]; //retrieve the shopping cart session
        if (sc == null) //check the shopping cart is null
        {
            sc = new ShoppingCart();
            sc.TicketAdd(c); //add into the cart item classes
            lblOutput.Text = "Ticket added to the Shopping Cart"; //show the messages when user add into cart item
        }
        else
        {
            List<CartItem> ci = sc.TicketCI;
            foreach (CartItem citm in ci) //use foreach to check the data is already added into cart item
                if (citm.TICketID == t.TicketID)
                    exist = true;
            if (exist == false)
            {
                sc.TicketAdd(c);
                lblOutput.Text = "Ticket added to the shopping cart"; //show the messages when user add into cart item
            }
            else
                lblOutput.Text = "You have already added this Ticket to the shopping cart"; //show the messages when user already add into cart item
        }
        Session["cart"] = sc; //brings session into cart session
    }

    protected void lvTicket_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        //to select the ticket details
        if (e.CommandName == "Ticket")
        {
            Session["ticketID"] = e.CommandArgument.ToString(); //brings the ticket id into the session
            pnlDetail.Visible = true;
            pnlBook.Visible = true;
        }
        lblTicket.Text = "You have been selected Ticket: " + e.CommandArgument.ToString(); //to show the message, user select the ticket
    }
}
