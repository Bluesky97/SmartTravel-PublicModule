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
public partial class RestaurantFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["restaurant"] == null)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                List<Restaurant> resList = new List<Restaurant>();
                //get a restaurant by using restaurant id store in session
                Restaurant r = RestaurantDB.getRestaurantByID(Session["restaurant"].ToString());
                //add tour guide to the tour guide list
                resList.Add(r);
                //add the list to the list view data source
                lvRestaurant.DataSource = resList;
                lvRestaurant.DataBind();
                //get all the feedback of a tour guide
                List<Review> revList = ReviewDB.getAllRestaurantReviewByID(Convert.ToInt32(Session["restaurant"]));
                //add the feedback list to the grid view data source
                resReviews.DataSource = revList;
                resReviews.DataBind();
                if (revList.Count == 0) //checking whether there is a feedback available for a review
                    lblOutput.Text = "No feedback available for this restaurant";
            }
        }
    }
}