using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
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
public partial class RestaurantReservationHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userRestaurant"] == null)
        {
            Response.Redirect("LoginForm.aspx");
        }
        lblNoResult.Text = "";
        lblFeedback.Visible = false;

        if (!IsPostBack)
        {
            //Displaying upcoming and past bookings
            lblCustomer.Visible = false;
            dlCustomer.Visible = false;
            gvFeedback.Visible = false;
            lblTitle.Text = "Upcoming Booking";
            gvHistory.Visible = false;
            //Getting current signed in user
            Restaurant restaurant = (Restaurant)Session["userRestaurant"];
            //Getting booked rooms from database and display them           
            List<ItemBooking> itemList = ItemBookingDB.getAllRestaurantItemBooking();
            List<ItemBooking> upcoming = new List<ItemBooking>();
            List<ItemBooking> history = new List<ItemBooking>();
            foreach (ItemBooking it in itemList)
            {
                //Checking the date to show only the upcoming events 
                if (it.RestaurantID.OrgEmail == restaurant.OrgEmail)
                {
                    if (it.StartDate > DateTime.Now && it.ItemBookingStatus != "Canceled")
                    {
                        ItemBooking item = it;
                        upcoming.Add(item);
                        gvUpcoming.DataSource = upcoming;
                        gvUpcoming.DataBind();
                        //Keep the list of upcoming bookings in a session for further use
                        Session["upcoming"] = upcoming;
                    }
                    //Displaying the past bookings
                    else
                    {
                        ItemBooking item = it;
                        history.Add(item);
                        gvHistory.DataSource = history;
                        gvHistory.DataBind();
                        //Keep the list of past bookings in a session for further use
                        Session["history"] = history;
                    }
                }
            }
            Restaurant rt = (Restaurant)Session["userRestaurant"];
            //Getting feedback from database and display them           
            List<Review> feedbackList = ReviewDB.getAllRestaurantReviewByID(rt.RestaurantID);
            gvFeedback.DataSource = feedbackList;
            gvFeedback.DataBind();
            Session["Feedback"] = feedbackList;
        }
    }
    protected void bind()
    {
        gvUpcoming.DataSource = (List<ItemBooking>)Session["Upcoming"];
        gvUpcoming.DataBind();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //Showing result when user search by bookings by booking id
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        lblTitle.Text = "Search Results";
        gvUpcoming.Visible = false;
        gvHistory.Visible = false;
        //Getting current signed in user
        Restaurant restaurant = (Restaurant)Session["userRestaurant"];
        //Getting booked rooms from session and display them                 
        List<ItemBooking> itemList = (List<ItemBooking>)Session["Upcoming"];
        List<ItemBooking> itemList2 = (List<ItemBooking>)Session["History"];
        List<ItemBooking> upcoming = new List<ItemBooking>();
        List<ItemBooking> history = new List<ItemBooking>();
        //Searching in upcoming bookings
        if (itemList != null)
        {
            foreach (ItemBooking it in itemList)
            {
                if (tbxBookingID.Text == it.BookingID.BookingID.ToString())
                {
                    //showing results for upcoming bookings
                    ItemBooking item = it;
                    upcoming.Add(item);
                    gvUpcoming.DataSource = upcoming;
                    gvUpcoming.DataBind();
                    gvUpcoming.Visible = true;
                    lblNoResult.Visible = false;

                }
                else
                    lblNoResult.Text = "Sorry! No booking is found!";
            }
        }
        //Searching in past booking
        if (itemList2 != null)
        {
            foreach (ItemBooking it in itemList2)
            {
                if (tbxBookingID.Text == it.BookingID.BookingID.ToString())
                {
                    //showing results for past bookings
                    ItemBooking item = it;
                    history.Add(item);
                    gvHistory.DataSource = history;
                    gvHistory.DataBind();
                    lblNoResult.Text = "";
                    gvHistory.Visible = true;

                }
                else
                    lblNoResult.Text = "Sorry! No booking is found!";
            }
        }
        //if booking is not found 
        if (itemList == null && itemList2 == null)
            lblNoResult.Text = "Sorry! No booking is found!";
        //if user click search without providing booking id, it will show upcoming bookings
        if (tbxBookingID.Text == "")
        {
            lblNoResult.Text = "";
            lblTitle.Text = "Upcoming Booking";
            List<ItemBooking> itemList3 = (List<ItemBooking>)Session["Upcoming"];
            //Showing upcoming bookings
            gvUpcoming.DataSource = itemList3;
            gvUpcoming.DataBind();
            gvHistory.Visible = false;
            gvUpcoming.Visible = true;
        }
    }

    protected void gvUpcoming_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Cancelling to update status
        gvUpcoming.EditIndex = -1;
        bind();
    }

    protected void gvUpcoming_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Customer")
        {
            //Displaying the customer details of the selected booking
            lblCustomer.Visible = true;
            dlCustomer.Visible = true;
            //Retrieving customer object with method
            Customer c = CustomerDB.getACustomerByEmail(e.CommandArgument.ToString());
            List<Customer> customerList = new List<Customer>();
            customerList.Add(c);
            //Displaying customer details
            dlCustomer.DataSource = customerList;
            dlCustomer.DataBind();
            Session["Customer"] = customerList;
        }
    }

    protected void gvUpcoming_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //Enablling the selected row to update the status
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        gvUpcoming.EditIndex = e.NewEditIndex;
        bind();
    }

    protected void gvUpcoming_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Allowing access to service provider to update booking status
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        List<ItemBooking> itemList = (List<ItemBooking>)Session["Upcoming"];
        ItemBooking item = itemList[Convert.ToInt32(gvUpcoming.PageSize * gvUpcoming.PageIndex + e.RowIndex)];
        //Checking pending bookings to update status
        if (item.ItemBookingStatus == "Pending")
        {
            if (e.NewValues["ItemBookingStatus"].ToString() == "Pending" || e.NewValues["ItemBookingStatus"].ToString() == "Approved" || e.NewValues["ItemBookingStatus"].ToString() == "Rejected")
            {
                lblNoResult.Text = "";
                gvUpcoming.EditIndex = -1;
                //Sending email with company email
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
                MailMessage msg = new MailMessage("smarttravel1005@gmail.com", item.BookingID.CID.CustEmail);
                if (e.NewValues["ItemBookingStatus"].ToString() == "Approved")
                {
                    //Informing customer about approve booking
                    try
                    {
                        msg.Subject = "Your Booking has been confirmed";
                        msg.Body = "Your reservation booking at " + item.RestaurantID.Name + " has been confirmed. Check out the updated status on our website. Your booking ID is " + item.BookingID.BookingID + "\r\n";
                        msg.Body += "Thanks you for choosing SmartTravel";
                        client.Send(msg);
                        item.ItemBookingStatus = Convert.ToString(e.NewValues["ItemBookingStatus"]);
                        //updating item booking status into database
                        int add = ItemBookingDB.UpdateItemBooking(item);
                        bind();
                    }
                    //If email cannot be sent
                    catch (Exception er)
                    {
                        lblNoResult.Text = "Internet connection required: " + er.ToString();
                    }

                }
                //Informing customer about approve booking
                else if (e.NewValues["ItemBookingStatus"].ToString() == "Rejected")
                {
                    msg.Subject = "Your Booking has been rejected";
                    msg.Body = "We're sorry to inform you that your reservation booking at " + item.RestaurantID.Name + " has been rejected. Check out the updated status on our website. Your booking ID is " + item.BookingID.BookingID + "\r\n";
                    msg.Body += "Thanks you for choosing SmartTravel";
                    client.Send(msg);
                }
            }
            else
                lblNoResult.Text = "Status can only be Pending, Approved or Rejected!";
        }
        else
            lblNoResult.Text = "Status can be changed only for the Pending Booking";
    }
    protected void bindF()
    {
        gvFeedback.DataSource = (List<Review>)Session["Feedback"];
        gvFeedback.DataBind();
    }
    protected void gvHistory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        gvFeedback.Visible = true;
        lblFeedback.Visible = true;
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        //Displaying customer details for past bookings
        if (e.CommandName == "Customer")
        {
            gvFeedback.Visible = false;
            lblFeedback.Visible = false;
            lblCustomer.Visible = true;
            dlCustomer.Visible = true;
            //Retrieving customer object to display details
            Customer c = CustomerDB.getACustomerByEmail(e.CommandArgument.ToString());
            List<Customer> customerList = new List<Customer>();
            customerList.Add(c);
            //Displaying customer details for past bookings
            dlCustomer.DataSource = customerList;
            dlCustomer.DataBind();
            Session["Customer"] = customerList;
        }
    }

    protected void gvHistory_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvHistory.PageIndex = e.NewPageIndex;
        //Getting past booking from database and display them           
        List<ItemBooking> bookingList = (List<ItemBooking>)Session["History"];
        gvHistory.DataSource = bookingList;
        gvHistory.DataBind();
    }

    protected void gvFeedback_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Allowing access to report feedbacks
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        gvFeedback.Visible = true;
        List<Review> feedbackList = (List<Review>)Session["Feedback"];
        //Calculating selected feedback with paging 
        Review feedback = feedbackList[Convert.ToInt32(gvFeedback.PageSize * gvFeedback.PageIndex + e.RowIndex)];
        feedback.RevID = feedback.RevID.ToString();
        feedback.ReportStatus = "Reported!";
        //updating report status into database
        int update = ReviewDB.updateHotelReview(feedback);
        gvFeedback.EditIndex = -1;
        bindF();
    }

    protected void gvFeedback_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvFeedback.EditIndex = e.NewEditIndex;
        bindF();
    }

    protected void gvFeedback_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gvFeedback.EditIndex = -1;
        bindF();
    }

    protected void gvFeedback_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvFeedback.PageIndex = e.NewPageIndex;
        //Getting past booking from database and display them           
        List<Review> bookingList = (List<Review>)Session["Feedback"];
        gvFeedback.DataSource = bookingList;
        gvFeedback.DataBind();
    }

    protected void lBtnUpcoming_Click(object sender, EventArgs e)
    {
        //Displaying upcoming bookings and allowing to view feedback
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        gvFeedback.Visible = false;
        lblNoResult.Text = "";
        lblTitle.Text = "Upcoming Booking";
        //Displaying upcoming bookings and allowing to view feedback
        List<ItemBooking> itemList = (List<ItemBooking>)Session["Upcoming"];
        gvUpcoming.DataSource = itemList;
        gvUpcoming.DataBind();
        gvHistory.Visible = false;
        gvUpcoming.Visible = true;
    }

    protected void lBtnHistory_Click(object sender, EventArgs e)
    {
        //Displaying past bookings and allowing to view feedback
        lblCustomer.Visible = false;
        dlCustomer.Visible = false;
        lblNoResult.Text = "";
        lblTitle.Text = "Past Booking";
        //Displaying past bookings and allowing to view feedback
        List<ItemBooking> itemList = (List<ItemBooking>)Session["History"];
        gvHistory.DataSource = itemList;
        gvHistory.DataBind();
        gvHistory.Visible = true;
        gvUpcoming.Visible = false;
    }
}