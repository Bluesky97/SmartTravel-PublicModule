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
public partial class RegisterPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Server.Transfer("Invalid.aspx");
        }
        pnlCustomer.Visible = true;
        pnlAttraction.Visible = false;
        pnlHotel.Visible = false;
        pnlRestaurant.Visible = false;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //customer
        Customer c = new Customer()
        {
            CustEmail = tbxEmail.Text,
            Name = tbxName.Text,
            Password = tbxPassword.Text,
            Address = tbxAddress.Text,
            PostalCode = tbxPostalCode.Text,
            PersonalID = tbxPID.Text,
            DateOfBirth = Convert.ToDateTime(tbxDOB.Text),
            Gender = tbxGender.Text,
            Nationality = tbxNationality.Text,
            PhoneNumber = Convert.ToInt32(tbxPhone.Text),
            accStatus = "Confirmed"
        };
        int id = CustomerDB.insertCustomer(c);
        lblOutput.Text = id + "Registered Successfully!";
    }



    protected void ddlCustOrg_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCustOrg.SelectedItem.Value == "0") //customer
        {
            pnlCustomer.Visible = true;
            pnlAttraction.Visible = false;
            pnlHotel.Visible = false;
            pnlRestaurant.Visible = false;
        }
        if (ddlCustOrg.SelectedItem.Value == "1") //attraction
        {
            pnlCustomer.Visible = false;
            pnlAttraction.Visible = true;
            pnlHotel.Visible = false;
            pnlRestaurant.Visible = false;
        }
        if (ddlCustOrg.SelectedItem.Value == "2") //hotel
        {
            pnlCustomer.Visible = false;
            pnlAttraction.Visible = false;
            pnlHotel.Visible = true;
            pnlRestaurant.Visible = false;
        }
        if (ddlCustOrg.SelectedItem.Value == "3") //restaurant
        {
            pnlCustomer.Visible = false;
            pnlAttraction.Visible = false;
            pnlHotel.Visible = false;
            pnlRestaurant.Visible = true;
        }
    }

    protected void btnARegister_Click(object sender, EventArgs e)
    {
        string imagefile = "notavailable.jpg";
        if (FileUpload2.HasFile) //checking whether the file upload has the file
        {
            imagefile = FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("~/images/" + imagefile));//store the file in the images folder          
        }
        //attraction
        Attraction a = new Attraction()
        {
            OrgEmail = tbxAEmail.Text,
            Name = tbxAName.Text,
            RegID = tbxARegID.Text,
            Address = tbxAddressA.Text,
            PostalCode = tbxAPostalCode.Text,
            City = tbxACity.Text,
            Country = tbxACountry.Text,
            Password = tbxAPassword.Text,
            ContactNo = tbxAPhone.Text,
            Description = "Not Applicable",
            StarRating = Convert.ToInt32(5),
            OpeningHours = tbxAHour.Text,
            Photo = imagefile,
            Verification = false
        };
        int id = AttractionDB.insertAttraction(a);
        lblOutput.Text = id + "Registered Successfully!";
    }

    protected void btnHRegister_Click(object sender, EventArgs e)
    {
        string imagefile = "notavailable.jpg";
        if (FileUpload3.HasFile) //checking whether the file upload has the file
        {
            imagefile = FileUpload3.FileName;
            FileUpload3.SaveAs(Server.MapPath("~/images/" + imagefile));//store the file in the images folder          
        }
        //hotel
        Random rndRandom = new Random();
        int newLicNo = rndRandom.Next(1, 1000);
        Hotel h = new Hotel()
        {
            OrgEmail = tbxHEmail.Text,
            Name = tbxHName.Text,
            RegID = tbxHRegID.Text,
            Address = tbxHAddress.Text,
            PostalCode = tbxHPostalCode.Text,
            City = tbxHCity.Text,
            Country = tbxHCountry.Text,
            Password = tbxHPassword.Text,
            ContactNo = tbxHPhone.Text,
            Description = "Not Applicable",
            License = "SH" + newLicNo,
            StarRating = Convert.ToInt32(5),
            Photo = imagefile,
            Verification = false
        };
        int id = HotelDB.insertHotel(h);
        lblOutput.Text = id + "Registered Successfully!";
    }

    protected void btnRRegister_Click(object sender, EventArgs e)
    {
        string imagefile = "notavailable.jpg";
        if (FileUpload4.HasFile) //checking whether the file upload has the file
        {
            imagefile = FileUpload4.FileName;
            FileUpload4.SaveAs(Server.MapPath("~/images/" + imagefile));//store the file in the images folder          
        }
        //restaurant
        Random rndRandom = new Random();
        int newLicNo = rndRandom.Next(1, 1000);
        Restaurant r = new Restaurant()
        {
            OrgEmail = tbxREmail.Text,
            Name = tbxRName.Text,
            RegID = tbxRRegID.Text,
            Address = tbxRAddress.Text,
            PostalCode = tbxRPostalCode.Text,
            City = tbxRCity.Text,
            Country = tbxRCountry.Text,
            Password = tbxRPassword.Text,
            ContactNo = tbxRPhone.Text,
            Description = "Not Applicable",
            License = "RR" + newLicNo,
            StarRating = Convert.ToInt32(5),
            Photo = imagefile,
            OpeningHours = tbxAHour.Text,
            Verification = false
        };
        int id = RestaurantDB.insertRestaurant(r);
        lblOutput.Text = id + "Registered Successfully!";
    }
}