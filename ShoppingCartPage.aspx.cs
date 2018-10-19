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
public partial class ShoppingCartPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Text = "";
        lblNoItem.Text = "";
        ShoppingCart sc = (ShoppingCart)Session["Cart"]; //retrieve the shopping cart session

        if (sc != null) //check the shopping cart session is not null
        { 
            //get the cartitem list for room, ticket and restaurant
            List<CartItem> hList = sc.RoomCI;
            List<CartItem> tList = sc.TicketCI;
            List<CartItem> rList = sc.RestaurantCI;

            //check hotel list is more than zero
            if (hList.Count > 0)
            {
                pnlAcm.Visible = true;
                Label1.Visible = true;
                //show the hotel list into gridview
                gvAccomodation.DataSource = hList;
                gvAccomodation.DataBind();
            }
            else
                pnlAcm.Visible = false;
            //check ticket list is more than zero
            if (tList.Count > 0)
            {
                Label2.Visible = true;
                pnlTicket.Visible = true;
                //show the ticket details into the gridview
                gvTicket.DataSource = tList;
                gvTicket.DataBind();
            }
            else
                pnlTicket.Visible = false;
            //check the restaurant details is more than zero
            if (rList.Count > 0)
            {
                Label9.Visible = true;
                pnlRestaurant.Visible = true;
                //show the restaurant details into the gridview
                gvRestaurant.DataSource = rList;
                gvRestaurant.DataBind();
            }
            else
                pnlRestaurant.Visible = false;
            //show the total amount, tax, net amount from the shopping cart session -- show with the dollar sign
            lblTotalAmt.Text = "Total Amount    $" + sc.TotalPrice;
            lblNetAmount.Text = sc.TotalPrice.ToString("C");
            sc.NetAMount = sc.TotalPrice;
            lblTax.Text = sc.Tax.ToString("C");
            lblAmtPayable.Text = sc.AmtPayable.ToString("C");

            //if the room list, ticket list and restaurant list are null
            if (hList.Count == 0 && tList.Count == 0 && rList.Count == 0)
            {
                //show the message where the shopping cart is empty
                lblNoItem.Text = "Shopping Cart is Empty!";
                pnlInfo.Visible = false;
            }
            else
                //show with the panel info
                pnlInfo.Visible = true;
        }
        else
        {
            //show the message where the shopping cart is empty
            lblNoItem.Text = "Shopping Cart is Empty!";
            pnlInfo.Visible = false;
            pnlAcm.Visible = true;
            pnlTicket.Visible = true;
            pnlRestaurant.Visible = true;
        }
    }

    protected void gvAccomodation_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Room")
        {
            Session["roomID"] = e.CommandArgument.ToString();
            Response.Redirect("HotelBooking.aspx");
        }
        else
        {
            ShoppingCart sc = (ShoppingCart)Session["cart"]; //retrieve the shopping cart session
            double total = sc.TotalPrice; //initialize the total price
            List<CartItem> hList = sc.RoomCI; //show the hotel room from the cart item list
            foreach (CartItem a in hList) //use foreach to check with the data from cart item list
                if (a.SCRoom.RoomID == e.CommandArgument.ToString())
                {
                    total = total - a.RoomTotalAmt; //if the user remove the hotel room, total price will be minus 
                    hList.Remove(a); //remove the hotel room
                    break;
                }
            //show the price
            lblTotalAmt.Text = total.ToString("C");
            gvAccomodation.DataSource = hList;
            gvAccomodation.DataBind();
            if (hList.Count == 0)
                pnlAcm.Visible = false;
            Page_Load(sender, e);
        }
    }
    //if user apply with the discount coupon
    protected void btnApply_Click(object sender, EventArgs e)
    {
        //retrieve the shopping cart session
        ShoppingCart sc = (ShoppingCart)Session["cart"];
        //initialize the total amount with double
        double tAmt = Convert.ToDouble(sc.TotalPrice);
        //get discount coupon from database
        DiscountCoupon dc = DiscountCouponDB.getDiscountCouponByCode(tbxDC.Text);
        //check if discount coupon is not null
        if (dc != null)
        {
            if (dc.EndDate > DateTime.Now) //check the enddate from datetime.now functions
            {
                Session["DC"] = dc; //create a session for discount coupon
                if (dc.Percentage == null) // check if the percentage is null
                {
                    double netAMT = sc.TotalPrice - dc.Amount; //total price will be minus from the amount
                    sc.DiscountedAmt = dc.Amount; //show the amount price of discount coupon
                    lblDiscountAmt.Text = "$" +  dc.Amount; //show with the dollar sign
                    sc.NetAMount = (tAmt - dc.Amount); 
                    lblNetAmount.Text = "$" + sc.NetAMount;
                    lblTax.Text = sc.Tax.ToString("C");
                    lblAmtPayable.Text = sc.AmtPayable.ToString("C");
                    Session["AmtPayable"] = sc.AmtPayable; //create a session for amt payable
                }
                else
                {
                    sc.DiscountedAmt = tAmt * Convert.ToDouble(dc.Percentage); //if the amount is null, then the price will be minus from the percentage
                    sc.NetAMount = tAmt - (tAmt * Convert.ToDouble(dc.Percentage)); //netamount times with discount percentage
                    lblDiscountAmt.Text = "$" + sc.DiscountedAmt; //show with the dollar sign
                    lblNetAmount.Text = "$" + sc.NetAMount;
                    lblTax.Text = sc.Tax.ToString("C"); 
                    lblAmtPayable.Text = sc.AmtPayable.ToString("C");
                    Session["AmtPayable"] = sc.AmtPayable; //create a session for amt payable
                }
               
            }
            else
                lblError.Text = "Coupon has expired"; //if the coupon code has expired, show the error message
        }
        else
            lblError.Text = "Coupon Code is not valid"; //when the coupon code is not valid
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentPage.aspx"); //redirect to the payment page
    }

    protected void gvTicket_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Ticket") //check with ticket details
        {
            Session["ticketID"] = e.CommandArgument.ToString(); //brings the session of ticketID
            Response.Redirect("TicketBooking.aspx"); //redirect to the ticket booking details
        }
        else
        {
            //retrieve the shopping cart session
            ShoppingCart sc = (ShoppingCart)Session["cart"];
            //initializes the total price -- double
            double total = sc.TotalPrice; 
            List<CartItem> tList = sc.TicketCI; //retrieve the cart item into tList
            foreach (CartItem a in tList) //use foreach to check if the data is exists
                if (a.TICketID.ToString() == e.CommandArgument.ToString())
                {
                    total = total - a.TICtotalAMT; //if user remove the item from shopping cart session, total price will be minus
                    tList.Remove(a); //remove the ticket item
                    break;
                }
            //show the total amount with dollar sign
            lblTotalAmt.Text = total.ToString("C");
            //show the ticket details into gridview
            gvTicket.DataSource = tList;
            gvTicket.DataBind();
            if (tList.Count == 0) //if the ticket item is counted as 0
                pnlTicket.Visible = false; //pnlTicket will not show the ticket information -- attraction details.
            Page_Load(sender, e);
        }
    }

    protected void gvRestaurant_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //retrieve the shopping cart session
        ShoppingCart sc = (ShoppingCart)Session["cart"];
        double total = sc.TotalPrice;
        List<CartItem> rList = sc.RestaurantCI;
        foreach (CartItem a in rList) //use foreach to check the cartitem list for restaurant details
            if (a.REStaurantID.ToString() == e.CommandArgument.ToString()) //if the user may want to remove the restaurant item details
            {
                total = 0; //set the total amount for making reservation -- 0
                rList.Remove(a); //to remove the restaurant item details from shopping cart session
                break;
            }
        //show the total amount with dollar sign
        lblTotalAmt.Text = total.ToString("C");
        //show the restaurant details into gridview
        gvRestaurant.DataSource = rList;
        gvRestaurant.DataBind();
        //if the restaurant details counted as 0
        if (rList.Count == 0)
            //the panel will not showing
            pnlRestaurant.Visible = false;
        Page_Load(sender, e);
    }
}