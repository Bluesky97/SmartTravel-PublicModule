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
public partial class AttractionFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if the sessiom is null
        if (Session["attraction"] == null)
        {
            Response.Redirect("AttractionPage.aspx"); //brings back to the attraction page
        }
        else
        {
            //create a new list for attraction
            List<Attraction> attList = new List<Attraction>();
            //retrieve the attraction id from the session and use it to get a attraction from the database
            Attraction att = AttractionDB.getAttractionByID(Session["attraction"].ToString());
            attList.Add(att); //add a vehicle to attraction list
            lvAttraction.DataSource = attList; //add the attraction list to a list view data source
            lvAttraction.DataBind(); //bind the data into listview

            //get all feedbacks of a vehicle
            List<Review> rvList = ReviewDB.getAllAttractionReviewByID(Convert.ToInt32(Session["attraction"]));
            attReviews.DataSource = rvList;
            attReviews.DataBind();
            if (rvList.Count == 0)//checking whether there is no feedback available for attraction
                lblOutput.Text = "No feedback available for this attraction"; //show the message
        }
    }

}