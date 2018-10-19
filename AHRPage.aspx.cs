using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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
public partial class AHRPage : System.Web.UI.Page
{
    bool ver = true; //check the verification if true
    protected void Page_Load(object sender, EventArgs e)
    {
        //to check with the session is not null
        if (Session["countryName"] != null)
        {
            Response.Redirect("ThingsToDo.aspx"); //redirect to the things to do page
        }
        //show the attraction -- top 4
        List<Attraction> attractions = AttractionDB.getTOP4Attraction(ver);
        dlAttraction.DataSource = attractions;
        dlAttraction.DataBind();

        //show the hotel -- top 4
        List<Hotel> hotels = HotelDB.getTOP4Hotel(ver);
        dlHotel.DataSource = hotels;
        dlHotel.DataBind();

        //show the restaurant -- top 4
        List<Restaurant> restaurants = RestaurantDB.getTOP4Restaurant(ver);
        dlRestaurant.DataSource = restaurants;
        dlRestaurant.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e) //user allow to search the country
    {
        Session["countryName"] = ddlSearch.SelectedItem.Text; //create session countryname 
        Response.Redirect("ThingsToDo.aspx"); //redirect to the thingstodo page
    }
}