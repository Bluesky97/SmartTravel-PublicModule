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
public partial class HotelFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["HotelID"] != null)
        {
            List<Hotel> hotels = new List<Hotel>();
            //get the hotel from the database using hotel id
            Hotel h = HotelDB.getHotelByID(Session["HotelID"].ToString());
            hotels.Add(h); //add the account to the hotel list
            lvAccommodation.DataSource = hotels; //add the hotel list to list view data source
            lvAccommodation.DataBind(); //bind the list view data

            //retrieve all the feedback available for an hotel from the database and store them in a list
            List<Review> rvList = ReviewDB.getAllHotelReviewByID(Convert.ToInt32(Session["HotelID"]));
            AcmReviews.DataSource = rvList; //add the datasource to the grid view
            AcmReviews.DataBind(); // bind the grid view data
            if (rvList.Count == 0) //checking whether there is a feedback availble for that hotel
                lblOutput.Text = "No feedback available for this hotel";
        }
        else
        {
            Response.Redirect("HomePage.aspx"); //transfer the page to view hotel
        }
    }
}