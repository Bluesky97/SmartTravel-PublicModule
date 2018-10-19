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
public partial class CustomerBookingHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("LoginForm.aspx"); //redirect to the login form, if the user is null
        }
        gvUpcoming.Visible = true;
        if (!IsPostBack)
        {
            //retrieve the user session
            Customer customer = (Customer)Session["user"];
            //get the data from booking database
            List<Booking> bookingList = BookingDB.getAllBookingByCID(customer);
            //add the new list for upcoming booking
            List<Booking> upcoming = new List<Booking>();
            foreach (Booking it in bookingList) //use foreach to get the itembooking details
            {
                List<ItemBooking> itemBookings = ItemBookingDB.getAllItemBookingbyBookingID(it.BookingID);

                ItemBooking itemBookingId = itemBookings[0]; //set an array for itembooking -- start from zero

                //use for loop to count how many itembookings 
                for (int i = 0; i < itemBookings.Count - 1; i++)
                {
                    //use if statement, to check with the startdate
                    if (itemBookingId.StartDate < itemBookings[i + 1].StartDate)
                    {
                        //get the itembooking details and increase an array by one
                        itemBookingId = itemBookings[i + 1];
                    }
                }
                //check the start date from datetime.now functions
                if (itemBookingId.StartDate > DateTime.Now)
                {
                    //add the booking item into item list
                    Booking item = it;
                    upcoming.Add(item);
                    //show the upcoming item into gridview
                    gvUpcoming.DataSource = upcoming;
                    gvUpcoming.DataBind();
                }
            }
            Session["Upcoming"] = upcoming; //create upcoming session
            //create a new list for history booking
            List<Booking> history = new List<Booking>();
            //use foreach to check the bookinglist
            foreach (Booking it in bookingList)
            {
                //check the date with datetime.now functions
                if (it.Date < DateTime.Now)
                {
                    //show the history booking
                    Booking item = it;
                    history.Add(item);
                    gvHistory.DataSource = history;
                    gvHistory.DataBind();
                }
            }
            Session["History"] = history; //create a history session
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //Search the upcoming bookings by booking ID
        dlRoom.Visible = false;
        dlTicket.Visible = false;
        dlRestaurant.Visible = false;
        lblTitle.Text = "Search Results";
        //Getting booked rooms from session and display them                 
        List<Booking> itemList = (List<Booking>)Session["Upcoming"];
        List<Booking> upcoming = new List<Booking>();
        foreach (Booking it in itemList)
        {
            //Display the entered booking
            if (tbxBookingID.Text == it.BookingID.ToString())
            {
                Booking item = it;
                upcoming.Add(item);
                gvUpcoming.DataSource = upcoming;
                gvUpcoming.DataBind();
                gvUpcoming.Visible = true;
                lblNoResult.Text = "";
                return;
            }
            //Display message when user entered wrong booking ID
            else
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Sorry! No booking is found!";
            }

        }
        //Show upcoming booking when the search is clicked without searching
        if (tbxBookingID.Text == "")
        {
            lblNoResult.Visible = false;
            lblNoResult.Text = "";
            List<Booking> itemList3 = (List<Booking>)Session["Upcoming"];
            gvUpcoming.DataSource = itemList3;
            gvUpcoming.DataBind();
        }
        else
        {
            lblNoResult.Visible = true;
            lblNoResult.Text = "Sorry! No booking is found!";
        }
    }

    protected void gvUpcoming_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        gvUpcoming.PageIndex = e.NewPageIndex;
        List<Booking> bookingList = (List<Booking>)Session["Upcoming"];
        gvUpcoming.DataSource = bookingList;
        gvUpcoming.DataBind();
    }

    protected void gvUpcoming_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblNoResult.Visible = false;
        lblNoResult.Visible = false;
        if (e.CommandName == "Select") //if user select the upcoming bookinglist
        {
            dlRoom.Visible = false;
            dlTicket.Visible = false;
            dlRestaurant.Visible = false;
            List<Booking> bookingList = (List<Booking>)Session["Upcoming"]; //retrieve the upcoming session
            Booking book = bookingList[gvUpcoming.PageIndex * gvUpcoming.PageSize + Convert.ToInt32(e.CommandArgument)];
            List<ItemBooking> itemList = ItemBookingDB.getAllRoomItemBooking();
            List<ItemBooking> item = new List<ItemBooking>();
            foreach (ItemBooking it in itemList) //use foreach to check with itembooking database
            {
                //check with the booking
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlRoom.Visible = true;
                    ItemBooking room = it;
                    item.Add(room);
                    //show the room details into datalist
                    dlRoom.DataSource = item;
                    dlRoom.DataBind(); 
                    Session["RoomItem"] = item; //create a session for room item
                }
            }
            //get the itembooking ticket details from database
            List<ItemBooking> tList = ItemBookingDB.getAllTicketItemBooking();
            //add the new list to itembooking
            List<ItemBooking> tickets = new List<ItemBooking>();
            //use foreach to check with itembooking database
            foreach (ItemBooking it in tList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlTicket.Visible = true;
                    ItemBooking ticket = it;
                    tickets.Add(ticket);
                    //show the ticket details into datalist
                    dlTicket.DataSource = tickets;
                    dlTicket.DataBind();
                    Session["TicketItem"] = tickets; //create a session for ticket item
                }
            }
            //get the itembooking restaurant details from database
            List<ItemBooking> rList = ItemBookingDB.getAllRestaurantItemBooking();
            //add the new list to itembooking
            List<ItemBooking> restaurants = new List<ItemBooking>();
            //use foreach to check with itembooking database
            foreach (ItemBooking it in rList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlRestaurant.Visible = true;
                    ItemBooking restaurant = it;
                    restaurants.Add(restaurant);
                    //show the restaurant details into datalist
                    dlRestaurant.DataSource = restaurants;
                    dlRestaurant.DataBind();
                    Session["RestaurantItem"] = restaurants; //create a restaurant item into datalist
                }
            }
        }
    }


    protected void dlRoom_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //When user clicked a booking to cancel, server will send the notification email
        if (e.CommandName == "cancel")
        {
            ItemBooking item = ItemBookingDB.getAllItemBookingbyID(e.CommandArgument.ToString());
            if (item.ItemBookingStatus == "Approved")
            {
                //Deleting dividend of service provider
                Dividend d = DividendDB.getADividendByItemBookingID(item.ItemBookingID);
                DividendDB.deleteDividend(d);
            }
            //Sending email to both customer and service provider to inform about service cancellation
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
            try
            {
                MailMessage msg = new MailMessage("smarttravel1005@gmail.com", item.RoomID.HID.OrgEmail.ToString());
                msg.Subject = "Booking cancellation";
                msg.Body = "Your booking " + item.BookingID.BookingID + " has been cancelled";
                client.Send(msg);
            }
            //When email server is not accessible
            catch (Exception er)
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Internet connection required ";
            }
            try
            {
                //Sending email to Customer
                MailMessage msg1 = new MailMessage("smarttravel1005@gmail.com", item.BookingID.CID.CustEmail.ToString());
                msg1.Subject = "Booking cancellation";
                msg1.Body = "Your booking " + item.BookingID.BookingID + " has been cancelled";
                client.Send(msg1);
            }
            //When email server is not accessible
            catch (Exception er)
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Internet connect required: " + er;
            }
            //Booking cancellation text displayed
            lblNoResult.Visible = true;
            lblNoResult.Text = "Your booking has been cancelled";

            //Updating booking status
            item.ItemBookingStatus = "Canceled";
            int update = ItemBookingDB.UpdateItemBooking(item);
            List<ItemBooking> itemList = ItemBookingDB.getAllRoomItemBooking();
            List<ItemBooking> items = new List<ItemBooking>();
            //Reloading data to show the updated booking status
            Booking book = item.BookingID;
            foreach (ItemBooking it in itemList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlRoom.Visible = true;
                    ItemBooking room = it;
                    items.Add(room);
                    dlRoom.DataSource = items;
                    dlRoom.DataBind();
                    Session["RoomItem"] = items;
                }
            }

        }
    }

    protected void dlTicket_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //When user clicked a booking to cancel, server will send the notification email
        if (e.CommandName == "cancel")
        {
            ItemBooking item = ItemBookingDB.getAllItemBookingbyID(e.CommandArgument.ToString());
            if (item.ItemBookingStatus == "Approved")
            {
                //Deleting dividend of service provider
                Dividend d = DividendDB.getADividendByItemBookingID(item.ItemBookingID);
                DividendDB.deleteDividend(d);
            }
            //Sending email to both customer and service provider to inform about service cancellation
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
            try
            {
                MailMessage msg = new MailMessage("smarttravel1005@gmail.com", item.TicketID.Attraction.OrgEmail.ToString());
                msg.Subject = "Booking cancellation";
                msg.Body = "Your arranged booking " + item.BookingID.BookingID + " has been cancelled";
                client.Send(msg);
            }
            //When email server is not accessible
            catch (Exception er)
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Internet connection required: ";
            }
            //Sending email to Customer
            try
            {
                MailMessage msg1 = new MailMessage("smarttravel1005@gmail.com", item.BookingID.CID.CustEmail.ToString());
                msg1.Subject = "Booking cancellation";
                msg1.Body = "Your booking " + item.BookingID.BookingID + " has been cancelled";
                if (item.ItemBookingStatus != "Canceled")
                    client.Send(msg1);
            }
            //When email server is not accessible
            catch (Exception er)
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Internet connection required: ";
            }

            //Booking cancellation text displayed
            lblNoResult.Visible = true;
            lblNoResult.Text = "Your booking has been cancelled";

            //Updating booking status
            item.ItemBookingStatus = "Canceled";
            int update = ItemBookingDB.UpdateItemBooking(item);
            List<ItemBooking> itemList = ItemBookingDB.getAllTicketItemBooking();
            List<ItemBooking> items = new List<ItemBooking>();
            //Reloading data to show the updated booking status
            Booking book = item.BookingID;
            foreach (ItemBooking it in itemList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlRoom.Visible = true;
                    ItemBooking room = it;
                    items.Add(room);
                    dlTicket.DataSource = items;
                    dlTicket.DataBind();
                    Session["TicketItem"] = items;
                }
            }

        }
    }



    protected void dlRestaurant_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //When user clicked a booking to cancel, server will send the notification email
        if (e.CommandName == "cancel")
        {
            ItemBooking item = ItemBookingDB.getAllItemBookingbyID(e.CommandArgument.ToString());
            //Sending email to both customer and service provider to inform about service cancellation
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
            try
            {
                MailMessage msg = new MailMessage("smarttravel1005@gmail.com", item.RestaurantID.OrgEmail.ToString());
                msg.Subject = "Booking cancellation";
                msg.Body = "Your arranged booking " + item.BookingID.BookingID + " has been cancelled";
                client.Send(msg);
            }
            //When email server is not accessible
            catch (Exception er)
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Internet connection required";
            }
            try
            {
                //Sending email to Customer
                MailMessage msg1 = new MailMessage("smarttravel1005@gmail.com", item.BookingID.CID.CustEmail.ToString());
                msg1.Subject = "Booking cancellation";
                msg1.Body = "Your booking " + item.BookingID.BookingID + " has been cancelled";
                if (item.ItemBookingStatus != "Canceled")
                    client.Send(msg1);
            }
            //When email server is not accessible
            catch (Exception er)
            {
                lblNoResult.Visible = true;
                lblNoResult.Text = "Internet connection required ";
            }

            //Booking cancellation text displayed
            lblNoResult.Visible = true;
            lblNoResult.Text = "Your booking has been cancelled";

            //Updating booking status
            item.ItemBookingStatus = "Canceled";
            int update = ItemBookingDB.UpdateItemBooking(item);

            List<ItemBooking> itemList = ItemBookingDB.getAllRestaurantItemBooking();
            List<ItemBooking> items = new List<ItemBooking>();
            //Reloading data to show the updated booking status
            Booking book = item.BookingID;
            foreach (ItemBooking it in itemList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlRoom.Visible = true;
                    ItemBooking room = it;
                    items.Add(room);
                    dlRestaurant.DataSource = items;
                    dlRestaurant.DataBind();
                    Session["RestaurantItem"] = items;
                }
            }

        }
    }

    protected void btnSearch2_Click(object sender, EventArgs e)
    {
        //Search the past bookings by booking ID
        gvRoom.Visible = false;
        gvTicket.Visible = false;
        gvRestaurant.Visible = false;
        //Retrieving bookings from session
        List<Booking> itemList2 = (List<Booking>)Session["History"];
        List<Booking> history = new List<Booking>();
        foreach (Booking it in itemList2)
        {
            //If booking is found, bookings will show up in grid view
            if (tbxId.Text == it.BookingID.ToString())
            {
                Booking item = it;
                history.Add(item);
                gvHistory.DataSource = history;
                gvHistory.DataBind();
                lblNoResult.Text = "";
                return;
                lblNone.Visible = false;
            }
            else
            {
                lblNone.Visible = true;
                lblNone.Text = "Sorry! No booking is found!";
            }
        }
        //Show all past bookings when the search text box is empty
        if (tbxBookingID.Text == "")
        {
            lblNone.Text = "";
            List<Booking> itemList3 = (List<Booking>)Session["History"];
            gvHistory.DataSource = itemList3;
            gvHistory.DataBind();
        }
    }

    protected void gvHistory_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvHistory.PageIndex = e.NewPageIndex;
        //Getting current signed in user
        Customer customer = (Customer)Session["user"];
        //Getting upcoming booking from database and display them           
        List<Booking> bookingList = (List<Booking>)Session["History"];
        gvHistory.DataSource = bookingList;
        gvHistory.DataBind();
    }

    protected void gvHistory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lbladded.Visible = false;
        gvRoom.Visible = false;
        pnlFeedback.Visible = false;
        //show the full details of selected role
        if (e.CommandName == "Select")
        {
            List<Booking> bookingList = (List<Booking>)Session["History"];
            Booking book = bookingList[gvHistory.PageIndex * gvHistory.PageSize + Convert.ToInt32(e.CommandArgument)];
            //Checking room item booking to display
            List<ItemBooking> itemList = ItemBookingDB.getAllRoomItemBooking();
            List<ItemBooking> item = new List<ItemBooking>();
            //Showing each item that is under the selected booking
            foreach (ItemBooking it in itemList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    gvRoom.Visible = true;
                    ItemBooking room = it;
                    item.Add(room);
                }
            }
            //Not showing rooms when there's no rooms under selected booking
            if (item.Count > 0)
            {
                gvRoom.DataSource = item;
                gvRoom.DataBind();
                Session["OldRoom"] = item;
            }
            List<ItemBooking> tList = ItemBookingDB.getAllTicketItemBooking();
            List<ItemBooking> tickets = new List<ItemBooking>();
            foreach (ItemBooking it in tList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlTicket.Visible = true;
                    ItemBooking ticket = it;
                    tickets.Add(ticket);
                    gvTicket.DataSource = tickets;
                    gvTicket.DataBind();
                    Session["OldTicket"] = tickets;
                }
            }
            List<ItemBooking> rList = ItemBookingDB.getAllRestaurantItemBooking();
            List<ItemBooking> restaurants = new List<ItemBooking>();
            foreach (ItemBooking it in rList)
            {
                if (it.BookingID.BookingID.ToString() == book.BookingID.ToString())
                {
                    dlRestaurant.Visible = true;
                    ItemBooking restaurant = it;
                    restaurants.Add(restaurant);
                    gvRestaurant.DataSource = restaurants;
                    gvRestaurant.DataBind();
                    Session["OldRestaurant"] = restaurants;
                }
            }
        }
    }



    protected void gvRoom_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //Allowing access to show the feedback panel to give feedback
        lbladded.Visible = false;
        if (e.CommandName == "feedback")
        {
            //Retrieving the selected item details
            List<ItemBooking> itemList = (List<ItemBooking>)Session["OldRoom"];
            ItemBooking item = ItemBookingDB.getAllItemBookingbyID(e.CommandArgument.ToString());
            //Showing feedback panel to allow giving feedbacks
            lblTitle.Text = item.RoomID.Hotel.Name;
            pnlFeedback.Visible = true;
            pnlFeedback0.Visible = false;
            pnlFeedback1.Visible = false;
            gvRoom.Visible = true;
            Session["retrieve"] = item;
        }
    }

    protected void btnGiveFeedback_Click(object sender, EventArgs e)
    {
        //Recording the feedback when user clicked to add feedback
        pnlFeedback.Visible = false;
        //Retrieving the clicked feedback panel
        ItemBooking item = (ItemBooking)Session["retrieve"];
        Review review = new Review();
        //Receiving the written comment and rating to add in the database
        review.Date = DateTime.Now;
        review.Time = DateTime.Now;
        review.Feedback = tbxComment.Text;
        review.Rating = Convert.ToInt32(tbxRatings.Text);
        review.ReportStatus = ddlHotel.SelectedItem.Text;
        review.HotelID = item.RoomID.Hotel;
        Customer c = (Customer)Session["user"];
        review.CustEmail = c;
        //Adding feedback with method
        int add = ReviewDB.addReviewRoom(review);
        lbladded.Visible = true;
        //Displaying message to inform user
        lbladded.Text = "Feedback submitted successfully! Thanks for your feedback................";
    }



    protected void gvTicket_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //Allowing access to show the feedback panel to give feedback
        lbladded.Visible = false;
        if (e.CommandName == "feedback")
        {
            //Retrieving the selected item details to show respective feedback panel
            List<ItemBooking> itemList = (List<ItemBooking>)Session["OldTicket"];
            ItemBooking item = ItemBookingDB.getAllItemBookingbyID(e.CommandArgument.ToString());
            lblTitle0.Text = item.TicketID.Attraction.Name;
            //Showing feedback panel to allow giving feedbacks
            pnlFeedback0.Visible = true;
            pnlFeedback.Visible = false;
            pnlFeedback1.Visible = false;
            dlTicket.Visible = true;
            Session["retrieve"] = item;
            gvRoom.Visible = false;
        }
    }

    protected void btnGiveFeedback0_Click(object sender, EventArgs e)
    {
        //Recording the feedback when user clicked to add feedback
        pnlFeedback0.Visible = false;
        ItemBooking item = (ItemBooking)Session["retrieve"];
        Review review = new Review();
        //Receiving the written comment and rating to add in the database
        review.Feedback = tbxComment0.Text;
        review.Rating = Convert.ToInt32(tbxRatings0.Text);
        review.AttractionID = item.TicketID.Attraction;
        review.ReportStatus = ddlTicket.SelectedItem.Text;
        review.Date = DateTime.Now;
        review.Time = DateTime.Now;
        Customer c = (Customer)Session["user"];
        review.CustEmail = c;
        //Adding feedback with method
        int add = ReviewDB.addReviewTicket(review);
        lbladded.Visible = true;
        lbladded.Text = "Feedback submitted successfully! Thanks for your feedback";
    }



    protected void gvRestaurant_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //Allowing access to show the feedback panel to give feedback
        lbladded.Visible = false;
        if (e.CommandName == "feedback")
        {
            //Retrieving the selected item details to show respective feedback panel
            List<ItemBooking> itemList = (List<ItemBooking>)Session["OldRestaurant"];
            ItemBooking item = ItemBookingDB.getAllItemBookingbyID(e.CommandArgument.ToString());
            lblTitle1.Text = "Restaurant Name: " + item.RestaurantID.Name;
            //Showing feedback panel to allow giving feedbacks
            pnlFeedback1.Visible = true;
            pnlFeedback0.Visible = false;
            pnlFeedback.Visible = false;
            dlRestaurant.Visible = true;
            Session["retrieve"] = item;
            gvRoom.Visible = false;
            dlTicket.Visible = false;
        }
    }

    protected void btnGiveFeedback1_Click(object sender, EventArgs e)
    {
        //Recording the feedback when user clicked to add feedback
        pnlFeedback1.Visible = false;
        //Retrieving the clicked feedback panel
        ItemBooking item = (ItemBooking)Session["retrieve"];
        Review review = new Review();
        //Receiving the written comment and rating to add in the database
        review.Feedback = tbxComment1.Text;
        review.Rating = Convert.ToInt32(tbxRatings1.Text);
        review.RestaurantID = item.RestaurantID;
        review.ReportStatus = ddlRestaurant.SelectedItem.Text;
        review.Date = DateTime.Now;
        review.Time = DateTime.Now;
        Customer c = (Customer)Session["user"];
        review.CustEmail = c;
        //Adding feedback with method
        int add = ReviewDB.addReviewRestaurant(review);
        lbladded.Visible = true;
        lbladded.Text = "Feedback submitted successfully! Thanks for your feedback";
    }
    protected void dlTicket_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvRoom_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dlRestaurant_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvRestaurant_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvTicket_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dlRoom_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}