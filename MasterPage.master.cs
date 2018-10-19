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
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if session user is not null
        if (Session["user"] != null)
        {
            //username can appear in navbar
            btnUser.Text = ((Customer)Session["user"]).CustEmail;
            btnLogin.Text = "Logout";
        }
        else if (Session["userHotel"] != null)
        {
            btnUser.Text = ((Hotel)Session["userHotel"]).OrgEmail;
            btnLogin.Text = "Logout";
        }
        else if (Session["userRestaurant"] != null)
        {
            btnUser.Text = ((Restaurant)Session["userRestaurant"]).OrgEmail;
            btnLogin.Text = "Logout";
        }
        else if (Session["userAttraction"] != null)
        {
            btnUser.Text = ((Attraction)Session["userAttraction"]).OrgEmail;
            btnLogin.Text = "Logout";
        }
        else if (Session["admin"] != null)
        {
            //show admin is login
            btnUser.Text = Session["admin"].ToString();
            btnLogin.Text = "Logout";
        }
        else
        {
            btnUser.Text = "";
            btnLogin.Text = "Login";
        }
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //transfer page to the login form
        if (btnLogin.Text == "Login")
            Server.Transfer("LoginForm.aspx");
        else
        {
            //session of user is null
            Session["user"] = null;
            Session["userHotel"] = null;
            Session["userRestaurant"] = null;
            Session["userAttraction"] = null;
            Session["admin"] = null;
            Session["cart"] = null; //make it null for cart session 
            Session["bID"] = null; //make it null for booking id session 
            Session["AmtPayable"] = null; //make it null for amount payable session 
            Session["countryName"] = null; //make it null for countryName
            Server.Transfer("Default.aspx");
            //button of login changed back to login
            btnUser.Text = "";
            btnLogin.Text = "Login";
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Server.Transfer("RegisterPage.aspx"); //redirect to register page
    }

    protected void btnUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProfilePage.aspx"); //redirect to profile page
    }
}
