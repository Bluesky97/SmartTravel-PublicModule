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
public partial class RestaurantPage : System.Web.UI.Page
{
    bool verification = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblNoRestaurant.Visible = false;
            List<Restaurant> restaurants = RestaurantDB.getRestaurantByCountry(Session["countryName"].ToString(), verification);
            lblCountry.Text = Session["countryName"].ToString();
            if (restaurants.Count != 0)
            {
                Session["restaurant"] = restaurants;
                lvRestaurant.DataSource = restaurants;
                lvRestaurant.DataBind();
            }
            else
                lblNoRestaurant.Visible = true;
        }
    }



    protected void lvRestaurant_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Restaurant")
        {
            Session["restaurant"] = e.CommandArgument.ToString();
            Response.Redirect("GetMenuItem.aspx");
        }
        else
        {
            Session["restaurant"] = e.CommandArgument.ToString();
            Response.Redirect("RestaurantFeedback.aspx");
        }
    }

    protected void lvRestaurant_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        List<Restaurant> rList = (List<Restaurant>)Session["restaurant"];
        DPRestaurant.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        lvRestaurant.DataSource = rList;
        lvRestaurant.DataBind();
    }

    protected void lvRestaurant_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
        List<Restaurant> rList = (List<Restaurant>)Session["restaurant"];
        List<Restaurant> rLists = new List<Restaurant>();
        int currentPage = DPRestaurant.StartRowIndex / DPRestaurant.MaximumRows;
        rLists.Add(rList[DPRestaurant.PageSize * currentPage + e.NewSelectedIndex]);
    }
}