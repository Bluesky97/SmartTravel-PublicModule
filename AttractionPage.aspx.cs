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
public partial class AttractionPage : System.Web.UI.Page
{
    bool verification = true; //declare the bool verification, to check if the item is true
    protected void Page_Load(object sender, EventArgs e)
    {
        //check the session country name is null
        if (Session["countryName"] == null)
        {
            Response.Redirect("AHRPage.aspx"); //brings back to the AHR page
        }
        else
        {
            if (!IsPostBack)
            {
                lblNoAttraction.Visible = false;
                List<Attraction> attractions = AttractionDB.getAttractionByCountry(Session["countryName"].ToString(), verification); //get the attraction list and the item must be approved by an admin -- the verification must be true to show into public website
                if (attractions.Count != 0) //check whether the attraction is not null
                {
                    //show the attraction list
                    lvAttraction.DataSource = attractions;
                    lvAttraction.DataBind();
                    lblCountry.Text = Session["countryName"].ToString(); //show country name in the label
                    Session["attraction"] = attractions; //brings the session for attraction
                }
                else
                    lblNoAttraction.Visible = true; //when there is no attraction, show the error message
            }
        }

    }

    protected void lvAttraction_ItemCommand1(object sender, ListViewCommandEventArgs e)
    {
        //customer choose the attraction list
        if (e.CommandName == "Attraction")
        {
            Session["attraction"] = e.CommandArgument.ToString(); //brings the attraction session
            Response.Redirect("GetTicket.aspx"); //redirect to the get ticket page
        }
        else
        {
            //brings the attraction session
            Session["attraction"] = e.CommandArgument.ToString();
            Response.Redirect("AttractionFeedback.aspx"); //redirect to the attraction feedback page
        }
    }

    protected void lvAttraction_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        //page index changing -- attraction listview
        List<Attraction> attractions = (List<Attraction>)Session["attraction"];
        DPAttraction.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        lvAttraction.DataSource = attractions;
        lvAttraction.DataBind(); //bind the data into listview
    }

    protected void lvAttraction_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
        List<Attraction> attractions = (List<Attraction>)Session["attraction"]; ;
        List<Attraction> attList = new List<Attraction>();
        int currentPage = DPAttraction.StartRowIndex / DPAttraction.MaximumRows;
        attList.Add(attractions[DPAttraction.PageSize * currentPage + e.NewSelectedIndex]);
    }
}