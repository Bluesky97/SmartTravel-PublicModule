using System;
using System.Collections.Generic;
using System.IO;
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
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if session of user is not null
        if (Session["user"] != null || Session["userAttraction"] != null || Session["userRestaurant"] != null || Session["userHotel"] != null)
        {
            //not post back
            if (!IsPostBack)
            {
                //calling databinded method
                if (Session["user"] != null)
                {
                    databindedCust();
                    btnShowTicket.Visible = false;
                    btnShowRoom.Visible = false;
                    btnShowMenu.Visible = false;
                    btnManageDividend.Visible = false;
                    btnCheckDividend.Visible = false;
                }
                else if (Session["userAttraction"] != null)
                {
                    databindedOrg();
                    btnShowMenu.Visible = false;
                    btnShowRoom.Visible = false;
                }
                else if (Session["userRestaurant"] != null)
                {
                    databindedROrg();
                    btnShowTicket.Visible = false;
                    btnShowRoom.Visible = false;
                    btnCheckDividend.Visible = false;
                }
                else if (Session["userHotel"] != null)
                {
                    databindedHOrg();
                    btnShowTicket.Visible = false;
                    btnShowMenu.Visible = false;
                }
            }
        }
        else
        {
            //redirect to the login form
            Response.Redirect("LoginForm.aspx");
        }
        if (Session["user"] != null)
        {
            pnlCustomer.Visible = true;
            pnlOrg.Visible = false;
        }
        else if (Session["userAttraction"] != null || Session["userRestaurant"] != null || Session["userHotel"] != null)
        {
            pnlCustomer.Visible = false;
            pnlOrg.Visible = true;
        }
        if (Session["userHotel"] != null)
        {
            lblOHour.Text = "License Number:";
            tbxOHour.Enabled = false;
        }
        if (Session["userAttraction"] != null || Session["userHotel"] != null)
        {
            lblLicense.Visible = false;
            tbxLicenseNo.Visible = false;
        }
        if (Session["userRestaurant"] != null)
        {
            tbxLicenseNo.Enabled = false;
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            //calling member class to the session of user
            Customer c = (Customer)Session["user"];
            c.Name = tbxName.Text;
            c.Gender = tbxGender.Text;
            c.DateOfBirth = Convert.ToDateTime(tbxDOB.Text);
            c.Address = tbxAddress.Text;
            c.PostalCode = tbxPostalCode.Text;
            c.PersonalID = tbxPID.Text;
            c.Nationality = tbxNationality.Text;
            c.PhoneNumber = Convert.ToInt32(tbxPhone.Text);
            c.CustEmail = tbxEmail.Text;
            c.Password = tbxPassword.Text;
            Session["user"] = c;
            int row = CustomerDB.updateCustomer(c);
            //display an output
            lblOutput.Text = "Update successfully!";
            databindedCust();
        }
        else if (Session["userAttraction"] != null)
        {
            Attraction a = (Attraction)Session["userAttraction"];
            a.Name = tbxCName.Text;
            a.RegID = tbxRID.Text;
            a.Address = tbxCAddress.Text;
            a.PostalCode = tbxCPostalCode.Text;
            a.City = tbxCCity.Text;
            a.Country = tbxCCountry.Text;
            a.Password = tbxCpass.Text;
            a.ContactNo = tbxCPhone.Text;
            a.OrgEmail = tbxCEmail.Text;
            a.Password = tbxCPassword.Text;
            a.Description = tbxDesc.Text;
            a.OpeningHours = tbxOHour.Text;
            string imagefile = "notavailable";
            if (FileUpload1.HasFile)
            {
                imagefile = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("../images/" + imagefile));
                a.Photo = FileUpload1.FileName;
                imgProfile.ImageUrl = "../images/" + a.Photo;
            }
            Session["userAttraction"] = a;
            lblOutput.Text = "Update successfully!";
            int row = AttractionDB.updateAttraction(a);
            databindedOrg();
        }
        else if (Session["userRestaurant"] != null)
        {
            Restaurant r = (Restaurant)Session["userRestaurant"];
            r.Name = tbxCName.Text;
            r.RegID = tbxRID.Text;
            r.Address = tbxCAddress.Text;
            r.PostalCode = tbxCPostalCode.Text;
            r.City = tbxCCity.Text;
            r.Country = tbxCCountry.Text;
            r.Password = tbxCpass.Text;
            r.ContactNo = tbxCPhone.Text;
            r.OrgEmail = tbxCEmail.Text;
            r.Password = tbxCPassword.Text;
            r.Description = tbxDesc.Text;
            r.OpeningHours = tbxOHour.Text;
            string imagefile = "notavailable";
            if (FileUpload1.HasFile)
            {
                imagefile = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("../images/" + imagefile));
                r.Photo = FileUpload1.FileName;
                imgProfile.ImageUrl = "../images/" + r.Photo;
            }
            r.License = tbxLicenseNo.Text;
            Session["userRestaurant"] = r;
            lblOutput.Text = "Update successfully!";
            int row = RestaurantDB.updateRestaurant(r);
            databindedROrg();
        }
        else if (Session["userHotel"] != null)
        {
            Hotel h = (Hotel)Session["userHotel"];
            h.Name = tbxCName.Text;
            h.RegID = tbxRID.Text;
            h.Address = tbxCAddress.Text;
            h.PostalCode = tbxCPostalCode.Text;
            h.City = tbxCCity.Text;
            h.Country = tbxCCountry.Text;
            h.Password = tbxCpass.Text;
            h.ContactNo = tbxCPhone.Text;
            h.OrgEmail = tbxCEmail.Text;
            h.Password = tbxCPassword.Text;
            h.Description = tbxDesc.Text;
            string imagefile = "notavailable";
            if (FileUpload1.HasFile)
            {
                imagefile = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("../images/" + imagefile));
                h.Photo = FileUpload1.FileName;
                imgProfile.ImageUrl = "../images/" + h.Photo;
            }
            h.License = tbxOHour.Text;
            Session["userHotel"] = h;
            lblOutput.Text = "Update successfully!";
            int row = HotelDB.updateHotel(h);
            databindedHOrg();
        }
    }
    //databinded method 
    public void databindedCust()
    {
        //calling member class to the session of user
        Customer c = (Customer)Session["user"];
        tbxName.Text = c.Name;
        tbxGender.Text = c.Gender;
        tbxDOB.Text = c.DateOfBirth.ToShortDateString();
        tbxAddress.Text = c.Address;
        tbxPostalCode.Text = c.PostalCode;
        tbxPID.Text = c.PersonalID;
        tbxNationality.Text = c.Nationality;
        tbxPhone.Text = c.PhoneNumber.ToString();
        tbxEmail.Text = c.CustEmail;
        tbxPassword.Text = c.Password;
    }
    public void databindedOrg()
    {
        Attraction a = (Attraction)Session["userAttraction"];
        tbxCName.Text = a.Name;
        tbxRID.Text = a.RegID;
        tbxCAddress.Text = a.Address;
        tbxCPostalCode.Text = a.PostalCode;
        tbxCCity.Text = a.City;
        tbxCCountry.Text = a.Country;
        tbxCPassword.Text = a.Password;
        tbxCEmail.Text = a.OrgEmail;
        tbxCPhone.Text = a.ContactNo.ToString();
        tbxDesc.Text = a.Description;
        tbxOHour.Text = a.OpeningHours;
        imgProfile.ImageUrl = "../images/" + a.Photo;
    }
    public void databindedROrg()
    {
        Restaurant r = (Restaurant)Session["userRestaurant"];
        tbxCName.Text = r.Name;
        tbxRID.Text = r.RegID;
        tbxCAddress.Text = r.Address;
        tbxCPostalCode.Text = r.PostalCode;
        tbxCCity.Text = r.City;
        tbxCCountry.Text = r.Country;
        tbxCPassword.Text = r.Password;
        tbxCEmail.Text = r.OrgEmail;
        tbxCPhone.Text = r.ContactNo.ToString();
        tbxDesc.Text = r.Description;
        tbxOHour.Text = r.OpeningHours;
        tbxLicenseNo.Text = r.License;
        imgProfile.ImageUrl = "../images/" + r.Photo;
    }
    public void databindedHOrg()
    {
        Hotel h = (Hotel)Session["userHotel"];
        tbxCName.Text = h.Name;
        tbxRID.Text = h.RegID;
        tbxCAddress.Text = h.Address;
        tbxCPostalCode.Text = h.PostalCode;
        tbxCCity.Text = h.City;
        tbxCCountry.Text = h.Country;
        tbxCPassword.Text = h.Password;
        tbxCEmail.Text = h.OrgEmail;
        tbxCPhone.Text = h.ContactNo.ToString();
        tbxDesc.Text = h.Description;
        tbxOHour.Text = h.License;
        imgProfile.ImageUrl = "../images/" + h.Photo;
    }

    public void getPhoto()
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("/images") + filename);
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }

    protected void btnShowTicket_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageTicket.aspx");
    }

    protected void btnShowRoom_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageRoom.aspx");

    }

    protected void btnShowMenu_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageMenu.aspx");
    }
    protected void btnManageDividend_Click(object sender, EventArgs e)
    {
        if (Session["userHotel"] != null)
            Response.Redirect("HotelRentalHistory.aspx");
        else if (Session["userAttraction"] != null)
            Response.Redirect("AttractionRentalHistory.aspx");
        else if (Session["userRestaurant"] != null)
            Response.Redirect("RestaurantReservationHistory.aspx");
    }

    protected void btnCheckDividend_Click(object sender, EventArgs e)
    {
        if (Session["userHotel"] != null)
            Response.Redirect("HotelDividend.aspx");
        else if (Session["userAttraction"] != null)
            Response.Redirect("AttractionDividend.aspx");
    }
}