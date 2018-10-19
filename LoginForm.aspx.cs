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
public partial class LoginForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //get admin from database
        Admin d = AdminDB.getAdminbyID(tbxEmail.Text, tbxPassword.Text);
        if (d != null) //if admin is not null
        {
            if (d.AdminID == tbxEmail.Text) //check the admin id from database, matched or not
            {
                if (d.Password == tbxPassword.Text) //check the admin password from database, matched or not
                {
                    //create a session for admin
                    Session["admin"] = d;
                    //redirect to AdminView page
                    Server.Transfer("AdminView.aspx");
                }
            }
        }
        else
        {
            lblOutput.Text = "sorry admin cannot login!"; //to show error message
        }

        if (ddlCustOrg.SelectedItem.Text == "Customer") //user selected on customer
        {
            Customer c = CustomerDB.getCustomerByEmail(tbxEmail.Text, tbxPassword.Text); //get the customer details from database
            if (c != null) //if customer is not null
            {
                //customer email and password must matched from the databse
                if (c.CustEmail == tbxEmail.Text)
                {
                    if (c.Password == tbxPassword.Text)
                    {
                        //create session for user
                        Session["user"] = c;
                        Session["emailUser"] = c.CustEmail;
                        //redirect to the default page
                        Server.Transfer("Default.aspx"); 
                    }
                    else
                    {
                        lblOutput.Text = "Incorrect password"; //show error message
                    }

                }
            }
            else
            {
                lblOutput.Text = "Incorrect email/password"; //show error message
            }
        }


        else if (ddlCustOrg.SelectedItem.Text == "Hotel Owner") //user selected on hotel owner
        {
            Hotel h = HotelDB.getHotelByEmail(tbxEmail.Text, tbxPassword.Text); //get the data from database
            //check the data is not null
            if (h != null)
            {
                //email and password must matched into the database
                if (h.OrgEmail == tbxEmail.Text)
                {
                    if (h.Password == tbxPassword.Text)
                    {
                        //create session for user
                        Session["userHotel"] = h;
                        Session["hotelEmail"] = h.OrgEmail;
                        Session["hotelID"] = h.HotelID;

                        //redirect to the default page
                        Server.Transfer("Default.aspx");
                    }
                    else
                    {
                        lblOutput.Text = "Incorrect password"; //show error message
                    }

                }
            }
            else
            {
                lblOutput.Text = "Incorrect email/password"; //show error message
            }
        }
        else if (ddlCustOrg.SelectedItem.Text == "Restaurant Owner") //user selected on the restaurant owner
        {
            //get the data from database
            Restaurant r = RestaurantDB.getRestaurantByEmail(tbxEmail.Text, tbxPassword.Text);
            //check the data is not null
            if (r != null)
            {
                //email and password must matched into database
                if (r.OrgEmail == tbxEmail.Text)
                {
                    if (r.Password == tbxPassword.Text)
                    {
                        //create session for user
                        Session["userRestaurant"] = r;
                        Session["restaurantEmail"] = r.OrgEmail;
                        Session["restaurantID"] = r.RestaurantID;

                        //redirect to the default page
                        Server.Transfer("Default.aspx");
                    }
                    else
                    {
                        lblOutput.Text = "Incorrect password"; //show error message
                    }

                }
            }
            else
            {
                lblOutput.Text = "Incorrect email/password"; //show error message
            }
        }
        else if (ddlCustOrg.SelectedItem.Text == "Attraction Owner") //user selected on the attraction owner
        {
            //get the data from database
            Attraction a = AttractionDB.getAttractionByEmail(tbxEmail.Text, tbxPassword.Text);
            //check the data if not null
            if (a != null)
            {
                //email and password must matched into our database
                if (a.OrgEmail == tbxEmail.Text)
                {
                    if (a.Password == tbxPassword.Text)
                    {
                        //create session for user
                        Session["userAttraction"] = a;
                        Session["attractionEmail"] = a.OrgEmail;
                        Session["attractionID"] = a.AttractionID;

                        //redirect to the default page
                        Server.Transfer("Default.aspx");
                    }
                    else
                    {
                        lblOutput.Text = "Incorrect password";  //show error message
                    }

                }
            }
            else
            {
                lblOutput.Text = "Incorrect email/password"; //show error message
            }
        }



    }




    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Server.Transfer("RegisterPage.aspx"); //redirect to the register page
    }

    protected void ddlCustOrg_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if user select the customer, attraction, hotel and restaurant
        //textbox email and password will be clear
        if (ddlCustOrg.SelectedItem.Text == "Customer")
        {
            tbxEmail.Text = "";
            tbxPassword.Text = "";
        }
        else if (ddlCustOrg.SelectedItem.Text == "Attraction Owner")
        {
            tbxEmail.Text = "";
            tbxPassword.Text = "";
        }
        else if (ddlCustOrg.SelectedItem.Text == "Hotel Owner")
        {
            tbxEmail.Text = "";
            tbxPassword.Text = "";
        }
        else if (ddlCustOrg.SelectedItem.Text == "Restaurant Owner")
        {
            tbxEmail.Text = "";
            tbxPassword.Text = "";
        }
    }
}