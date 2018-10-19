//INFT 3970 - FYP Project
//Start Date : 10th May 2018
//Submission Date : 1st August 2018
//Names     :Andrian Alexander Putra(c3271469)
//          :Zhang Chuhan(c3270145)
//          :Thet Paing Htun(c3271285)
//          :Hay Marn Oo(c3271471)

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["countryName"] = ddlSearch.SelectedItem.Text; //to store into the session for country name
        Response.Redirect("ThingsToDo.aspx"); //to move another page thingstodo
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SmtpClient client = new SmtpClient("smtp.gmail.com");
        client.EnableSsl = true;
        client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
        MailMessage msg;
        msg = new MailMessage("smarttravel1005@gmail.com", tbxEmail.Text);
        msg.Subject = "SmartTravel Subscribe";
        msg.Body = "Thank you for subscribing to SmartTravel." + Environment.NewLine + "We will give you updated for latest information regarding the trips!" + Environment.NewLine + "Best Regards," + Environment.NewLine + "SmartTravel Management Team.";
        client.Send(msg); //send email
        lblOutput0.Text = "Thanks for subscribing to SmartTravel";
    }

}
