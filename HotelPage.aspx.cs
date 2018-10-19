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
public partial class HotelPage : System.Web.UI.Page
{
    bool verification = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //to get data from database
            List<Hotel> hotels = HotelDB.getHotelByCountry(Session["countryName"].ToString(), verification);
            //check the data is not null
            if (hotels.Count != 0)
            {
                Session["hotel"] = hotels; //create hotel session

                lblNoAcm.Visible = false;
                lvHotel.DataSource = hotels;
                lvHotel.DataBind();
            }
            else
                lblNoAcm.Visible = true; //show the error message
        }
        lblCountry.Text = Session["countryName"].ToString(); //show the country name

    }


    protected void lvHotel_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Room")
        {
            //get the hotelID and brings to the get room details
            Session["HotelID"] = e.CommandArgument.ToString(); 
            Response.Redirect("GetRoom.aspx");
        }
        else
        {
            //get the hotelID and brings to the get hotel feedback
            Session["HotelID"] = e.CommandArgument.ToString();
            Response.Redirect("HotelFeedback.aspx");
        }
    }

    protected void lvHotel_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        List<Hotel> hotels = (List<Hotel>)Session["hotel"];
        DPAccommodation.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        lvHotel.DataSource = hotels;
        lvHotel.DataBind();
    }


    protected void lvHotel_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
        List<Hotel> hotels = (List<Hotel>)Session["hotel"];
        List<Hotel> aHotel = new List<Hotel>();
        int currentPage = DPAccommodation.StartRowIndex / DPAccommodation.MaximumRows;
        aHotel.Add(aHotel[DPAccommodation.PageSize * currentPage + e.NewSelectedIndex]);
    }
}