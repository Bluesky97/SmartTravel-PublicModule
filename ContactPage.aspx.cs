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
public partial class ContactPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        SmtpClient client = new SmtpClient("smtp.gmail.com");
        client.EnableSsl = true;
        client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
        MailMessage msg, msg1;
        msg = new MailMessage("smarttravel1005@gmail.com", tbxEmail.Text);
        msg.Subject = "Feedback";
        msg.Body = "Thank you for writing to SmartTravel." + Environment.NewLine + "We will give you feedback as soon as possible!" + Environment.NewLine + "Best Regards," + Environment.NewLine + "SmartTravel Management Team.";
        client.Send(msg); //send email to customer

        msg1 = new MailMessage("smarttravel1005@gmail.com", "smarttravel1005@gmail.com");
        msg1.Subject = "Feedback Form";
        msg1.Body = "Name: " + tbxName.Text + Environment.NewLine + "Email: " + Environment.NewLine + tbxEmail.Text + "Message: " + tbxMessage.Text;
        client.Send(msg1); //send email to our project, to show what are the customer writing the feedback form

        lblOutput.Text = "Sent Successfully!"; //show successfully sent message
    }
}