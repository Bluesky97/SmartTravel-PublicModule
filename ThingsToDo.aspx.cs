using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using System.Net;
using System.Web.Script.Serialization;
//INFT 3970 - FYP Project
//Start Date : 10th May 2018
//Submission Date : 1st August 2018
//Names     :Andrian Alexander Putra(c3271469)
//          :Zhang Chuhan(c3270145)
//          :Thet Paing Htun(c3271285)
//          :Hay Marn Oo(c3271471)
public partial class ThingsToDo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetWeatherInfo(); //get the weather informatio
        }
        bool verification = true; //initialize the verification is true
        if (Session["countryName"] != null) //if the session for countryName is not null
        {
            //show the top 4 of attraction into gridview
            List<Attraction> attractions = AttractionDB.getTOP4AttractionByCountry(Session["countryName"].ToString(), verification);
            dlAttraction.DataSource = attractions;
            dlAttraction.DataBind();
        }
        else
            Response.Redirect("AHRPage.aspx");

        //show the top 4 of hotel into gridview
        List<Hotel> hotels = HotelDB.getTOP4HotelByCountry(Session["countryName"].ToString(), verification);
        dlHotel.DataSource = hotels;
        dlHotel.DataBind();
        //show the top 4 of restaurant into gridview
        List<Restaurant> restaurants = RestaurantDB.getTOP4RestaurantByCountry(Session["countryName"].ToString(), verification);
        dlRestaurant.DataSource = restaurants;
        dlRestaurant.DataBind();

        //if the session of countryName is not null
        if (Session["countryName"] != null)
        {
            //show the country name in label
            lblCountry.Text = Session["countryName"].ToString();
        }

    }
    public void GetWeatherInfo() //to get the weather information
    {
        //initialize the API code
        string appId = "b0dd0dd3bd82ba219ef85a5493aa0c61";
        //initialize the country namee
        string country = Session["countryName"].ToString();
        //if user choose for Myanmar, the country for will be changed to city of Yangon
        if(country == "Myanmar")
        {
            country = "Yangon";
        }
        //get the url from the weather info website
        string url = string.Format("http://api.openweathermap.org/data/2.5/forecast?q={0}&units=metric&cnt=1&APPID={1}", country, appId);
        //initialize the webclient
        using (WebClient client = new WebClient())
        {
            //use json to download from url
            string json = client.DownloadString(url);
            //to deserialize the weather information of json
            WeatherInfo weatherInfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
            //show information about the weather in specific country
            lblCity_Country.Text = weatherInfo.city.name+",";
            lblDescription.Text = weatherInfo.list[0].weather[0].description;
            imgWeatherIcon.ImageUrl = string.Format("http://openweathermap.org/img/w/{0}.png", weatherInfo.list[0].weather[0].icon);
            lblTempMin.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp_min, 1));
            lblTempMax.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp_max, 1));
            lblTempDay.Text = string.Format("{0}°С", Math.Round(weatherInfo.list[0].main.temp, 1));
            lblHumidity.Text = weatherInfo.list[0].main.humidity.ToString();
            tblWeather.Visible = true;
        }
    }

    protected void btnAviewMore_Click(object sender, EventArgs e)
    {
        Response.Redirect("AttractionPage.aspx"); //redirect to the attraction page 
    }

    protected void btnRviewMore_Click(object sender, EventArgs e)
    {
        Response.Redirect("RestaurantPage.aspx"); //redirect to the restaurant page
    }

    protected void btnHviewMore_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelPage.aspx"); //redirect to the hotel page
    }
}