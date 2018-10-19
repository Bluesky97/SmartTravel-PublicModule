using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
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
public partial class ForgotPasswordPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //initialize the random number generator
        Random r = new Random();
        //set the new password from random number generator
        int newPw = r.Next(1, 100000);

        int result = 0; //initialze the result
        bool found = true; //initialize the boolean is true
        if (ddlCustOrg.SelectedItem.Text == "Customer") //when user choose to reset password for customer
        {
            //get the customer from database
            Customer c = CustomerDB.getACustomerByEmail(tbxEmail.Text);
            if (c != null) //if the customer is not null
            {
                c.Password = newPw.ToString(); //set the new password
                result = CustomerDB.updateCustomer(c); //update into customer database
            }
            else
                found = false; //cannot find the customer from the database
        }
        else if (ddlCustOrg.SelectedItem.Text == "Hotel Owner") //when user choose to reset password for hotel owner
        {
            Hotel h = HotelDB.getAHotelByEmail(tbxEmail.Text); //get the hotel owner from database
            if (h != null) //if the hotel is not null
            {
                h.Password = newPw.ToString(); //set the new password
                result = HotelDB.updateHotel(h); //update into hotel database
            }
            else
                found = false; //cannot find the hotel owner from the database
        }
        else if (ddlCustOrg.SelectedItem.Text == "Attraction Owner") //when user choose to reset password for attraction
        {
            Attraction a = AttractionDB.getAAttractionByEmail(tbxEmail.Text); //get the attraction owner from database
            if (a != null) //if the attraction is not null
            {
                //set the new password
                a.Password = newPw.ToString();
                //update into attraction database
                result = AttractionDB.updateAttraction(a);
            }
            else
                found = false; //canoot find the attraction from the database
        }
        else if (ddlCustOrg.SelectedItem.Text == "Restaurant Owner") //when user choose to reset password for restaurant owner
        {
            Restaurant ra = RestaurantDB.getARestaurantByEmail(tbxEmail.Text); //get the restaurant owner from database
            if (ra != null) //if the restaurant is not null
            {
                //set the new password
                ra.Password = newPw.ToString();
                //update into restaurant database
                result = RestaurantDB.updateRestaurant(ra);
            }
            else
                found = false; //cannot find the restaurant from the database
        }
        if (found) //if found
        {
            if (result > 0) //result cannot be zero
            {
                try //use try and catch to send an email to the organization and customer
                {
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    client.EnableSsl = true;
                    client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");

                    MailMessage msg = new MailMessage("smarttravel@gmail.com", tbxEmail.Text);
                    msg.Subject = "New Password";
                    msg.Body = "Your new password is: " + newPw.ToString() + "\r\n Please change your password again";
                    client.Send(msg); //send an email
                    lblOutput.Text = "New Password has been sent to your email";
                    return;
                }
                catch (Exception ex)
                {
                    lblOutput.Text = "Active internet connection needed!"; //show error message when user do not have internet connection
                    return;
                }
            }
            else
            {
                lblOutput.Text = "Fails to update the password"; //show error message when user cannot update the password
                return;
            }
        }
        lblOutput.Text = "Account with this email address does not exist. Sign up for the account"; //if the account is not exist with our website
    }
}