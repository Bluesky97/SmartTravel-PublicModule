using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bluelaser.Utilities;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Web;
using inft3050lib;
//INFT 3970 - FYP Project
//Start Date : 10th May 2018
//Submission Date : 1st August 2018
//Names     :Andrian Alexander Putra(c3271469)
//          :Zhang Chuhan(c3270145)
//          :Thet Paing Htun(c3271285)
//          :Hay Marn Oo(c3271471)
public partial class PaymentPage : System.Web.UI.Page
{
    double amtPayable; //declare amount payable for customer
    int result, orderNo; //declare result to show the data is not null and orderNo will be used for generating the number for digital receipt (pdf format)
    string companyName; //to show on our project name
    string customerName; //to show who is the customer buy this trip package
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null) //when the user is null
        {
            Response.Redirect("LoginForm.aspx"); //direct to the login page for user need to login
        }

        if (!IsPostBack)
        {
            lblOutput.Text = "";
            ShoppingCart sc = (ShoppingCart)Session["cart"]; //brings the cart session to this page
            if (sc != null)
            {
                if (Session["AmtPayable"] != null)
                    amtPayable = (Double)(Session["AmtPayable"]); //show the amount payable
                else
                    amtPayable = sc.AmtPayable;
                lblAmt.Text = amtPayable.ToString("C"); //to show the amount with $ sign

                ddlMonth.Items.Add("Month");
                var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames;
                for (int i = 0; i < months.Length - 1; i++)
                {
                    ddlMonth.Items.Add(new System.Web.UI.WebControls.ListItem(months[i], i.ToString()));
                }
                List<string> year = new List<string>();
                year.Add("Year");
                for (int y = 0; y < 10; y++)
                {
                    year.Add(Convert.ToString(DateTime.Now.Year + y));
                }
                ddlYear.DataSource = year;
                ddlYear.DataBind();
                btnPrint.Visible = false;
            }
            else
                Response.Redirect("Default.aspx");
        }

    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        //checking whether the credit card entered is valid or not
        int cardValid = Utility.validateCreditCard(tbxCardNumber.Text);
        if (cardValid < 0)
            lblOutput.Text = "Invalid card number. Please enter valid card number";
        else
        {
            ShoppingCart sc = (ShoppingCart)Session["cart"]; //retrieve from the shopping cart session

            Booking b = null; //when booking id is null
            DiscountCoupon dc = null; //when discount coupon is null

            if (Session["DC"] != null) //to check whether the discount coupon is not null
                dc = (DiscountCoupon)Session["DC"]; //retrieve from the discount coupon session

            //add the booking details
            b = new Booking("", DateTime.Now, DateTime.Now, sc.NetAMount, sc.Tax, 7, sc.TotalPrice, sc.DiscountedAmt, amtPayable, tbxCardholderName.Text, "Visa", Convert.ToInt64(tbxCardNumber.Text), tbxCvv.Text, Convert.ToDateTime("24/" + ddlMonth.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text), "", (Customer)Session["user"], dc);

            //insert the booking info in the database
            result = ShoppingCartDB.confirmBooking(sc, b, Session["user"].ToString());

            if (result >= 0) //checking the result is not null or minus
            {
                try
                {
                    //sending booking information to the customer
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    client.EnableSsl = true;
                    client.Credentials = new NetworkCredential("smarttravel1005@gmail.com", "smart-travel1005");
                    MailMessage msg, msg1;

                    Customer c = CustomerDB.getACustomerByEmail(Session["emailUser"].ToString()); //retrieve the customer session

                    msg = new MailMessage("smarttravel1005@gmail.com", c.CustEmail);

                    List<CartItem> acmList = sc.RoomCI; //retrieve the cartitem from room details
                    List<CartItem> ticList = sc.TicketCI; //retrieve the cartitem from ticket details 
                    List<CartItem> resList = sc.RestaurantCI; //retrieve the cart item from restaurant details

                    msg.Subject = "Your Booking Request";
                    msg.Body = "Booking ID: BK" + result + ". You have requested to book the following services: \r\n\r\n";
                    //add the accommodation info included in the shopping cart to the email body
                    for (int i = 0; i < acmList.Count; i++)
                    {
                        msg.Body += acmList[i].SCRoom.Hotel.Name + "\r\nRoom ID: " + acmList[i].SCRoom.RoomID + "\r\nCheck-in Date: " + acmList[i].RoomCIDate + "\r\nCheck out Date: " + acmList[i].RoomCODate + "\r\n \r\n";
                        msg1 = new MailMessage("smarttravel1005@gmail.com", acmList[i].SCRoom.Hotel.OrgEmail);
                        msg1.Subject = "New Booking Request";
                        msg1.Body = "A new booking request regarding your room at " + acmList[i].SCRoom.RoomID + " has been received. Please check your SmartTravel account to accept or reject booking request. Thanks";
                        client.Send(msg1);
                    }
                    //add the ticket type info included in the shopping cart to the email body
                    for (int n = 0; n < ticList.Count; n++)
                    {
                        msg.Body += ticList[n].AttractionName + "\r\n Date: " + ticList[n].TICdate + "\r\nTotal Amount: " + ticList[n].TICtotalAMT + "\r\nTotal People " + ticList[n].TICqty + "\r\n\r\n";
                        msg1 = new MailMessage("smarttravel1005@gmail.com", ticList[n].TICTicket.Attraction.OrgEmail);
                        msg1.Subject = "New Booking Request";
                        msg1.Body = "A new booking request regarding your Ticket Details " + ticList[n].TICketID + " " + ticList[n].TICketID + " has been received. Please check your SmartTravel account to accept or reject booking request. Thanks";
                        client.Send(msg1);
                    }
                    //add the restaurant info included in the shopping cart to the email body
                    for (int n = 0; n < resList.Count; n++)
                    {
                        msg.Body += resList[n].RESname + "\r\n Address: " + resList[n].RESaddress + "\r\n Date: " + resList[n].RESdate + "\r\n Time: " +  resList[n].REStime + "\r\nNumber of People: " + resList[n].RESguest + "\r\n\r\n";
                        msg1 = new MailMessage("smarttravel1005@gmail.com", resList[n].RESrestaurant.OrgEmail);
                        msg1.Subject = "New Booking Request";
                        msg1.Body = "A new booking request regarding your Reservation Details " + "\r\n Date: " + resList[n].RESdate + "\r\n Time: " + resList[n].REStime + " " + " has been received. Please check your SmartTravel account to accept or reject booking request. Thanks";
                        client.Send(msg1);
                    }
                    int count = 1; //initialize the count

                    Random r = new Random(); //initialize the random number generator
                    companyName = "SmartTravel"; //set the company name
                    customerName = c.Name; //set the customer name from the session
                    orderNo = r.Next(0, 10000); //initialize the order no from random number generator
                    DataTable dt = new DataTable(); //initialize the datatable
                                                    //add data column into receipt -- pdf generator
                    dt.Columns.AddRange(new DataColumn[5] {
                            new DataColumn("ID", typeof(string)),
                            new DataColumn("Name", typeof(string)),
                            new DataColumn("Price", typeof(int)),
                            new DataColumn("Quantity", typeof(int)),
                            new DataColumn("Total", typeof(int))});
                    //add the accomodation info included in the shopping cart to the digital receipt
                    for (int i = 0; i < acmList.Count; i++)
                    {
                        dt.Rows.Add(count++, acmList[i].SCRoom.Hotel.Name + " -- Room ID: " + acmList[i].SCRoom.RoomID, acmList[i].SCRoom.Price, acmList[i].NoofRoom, acmList[i].RoomTotalAmt);
                    }
                    //add the ticket info included in the shopping cart to the digital receipt
                    for (int n = 0; n < ticList.Count; n++)
                    {
                        dt.Rows.Add(count++, ticList[n].TICTicket.Attraction.Name + " -- " + ticList[n].TICtype, ticList[n].TICTicket.Price, ticList[n].TICqty, ticList[n].TICtotalAMT);
                    }
                    //add the restaurant info included in the shopping cart to the digital receipt
                    for (int n = 0; n < resList.Count; n++)
                    {
                        dt.Rows.Add(count++, resList[n].RESname, 0, resList[n].RESguest, 0);
                    }

                    using (StringWriter sw = new StringWriter())
                    {
                        using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                        {
                            StringBuilder sb = new StringBuilder(); //initialize the stringbuilder

                            //Generate Invoice (Bill) Header.
                            sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                            sb.Append("<tr><td align='center' colspan = '2'><b>Order Sheet</b></td></tr>");
                            sb.Append(" </td></tr>");
                            sb.Append("<tr><td colspan = '2'><b>Customer Name: </b>");
                            sb.Append(customerName);
                            sb.Append("<tr><td colspan = '2'></td></tr>");
                            sb.Append("<tr><td><b>Order No: </b>");
                            sb.Append(orderNo);
                            sb.Append("</td><td align = 'right'><b>Date: </b>");
                            sb.Append(DateTime.Now);
                            sb.Append(" </td></tr>");
                            sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                            sb.Append(companyName);
                            sb.Append("</td></tr>");
                            sb.Append("<tr><td colspan = '2'><b>Booking ID: </b>");
                            sb.Append("BK" + result);
                            sb.Append("</td></tr>");
                            sb.Append("</table>");
                            sb.Append("<br />");

                            //Generate Invoice (Bill) Items Grid.
                            sb.Append("<table border = '1'>");
                            sb.Append("<tr>");
                            foreach (DataColumn column in dt.Columns)
                            {
                                sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                                sb.Append(column.ColumnName);
                                sb.Append("</th>");
                            }
                            sb.Append("</tr>");
                            foreach (DataRow row in dt.Rows)
                            {
                                sb.Append("<tr>");
                                foreach (DataColumn column in dt.Columns)
                                {
                                    sb.Append("<td>");
                                    sb.Append(row[column]);
                                    sb.Append("</td>");
                                }
                                sb.Append("</tr>");
                            }
                            sb.Append("<tr><td align = 'right' colspan = '");
                            sb.Append(dt.Columns.Count - 1);
                            sb.Append("'>Total</td>");
                            sb.Append("<td>");
                            sb.Append(dt.Compute("sum(Total)", ""));
                            sb.Append("</td>");
                            sb.Append("</tr></table>");
                            sb.Append("<br />");
                            sb.Append("<br />");
                            sb.Append("<br />");
                            sb.Append("<br />");
                            sb.Append("<br />");
                            sb.Append("<br />");
                            sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                            sb.Append("<tr><td align='left' color='red' colspan = '2'><b>*Note:</b></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><b>Price is SGD</b></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><b>This receipt does not include the tax and booking charges</b></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><br/><br/><br/><br/><br/><br/></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><b>Please ensure all information listed above is correct and keep this receipt for your records</b></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><b>If you have any questions, please see the contact of the webpage</b></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><b>Contact +65 6390 9000</b></td></tr>");
                            sb.Append("<tr><td align='left' colspan = '2'><b>Thank You.</b></td></tr>");
                            sb.Append(" </td></tr>");
                            sb.Append("</table>");

                            StringReader sr = new StringReader(sb.ToString());

                            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                            using (MemoryStream memoryStream = new MemoryStream()) //use memory stream to generate the pdfDoc
                            {
                                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                                pdfDoc.Open();
                                htmlparser.Parse(sr);
                                pdfDoc.Close();
                                byte[] bytes = memoryStream.ToArray();
                                memoryStream.Close();
                                msg.Attachments.Add(new Attachment(new MemoryStream(bytes), "Invoice.pdf")); //add the attachment into an email
                                client.Send(msg); //sending email
                            }
                        }
                    }
                    btnPrint.Visible = true;
                    //print the booking successful message
                    lblOutput.Text = "Booking request successfully. Your booking ID is BK" + result + ". Thanks you for choosing SmartTravel.";
                    Session["bID"] = "BK" + result;

                }
                catch (Exception er)
                {
                    lblOutput.Text = "internet connection required";
                }
            }

            else
            {
                lblOutput.Text = "Unsuccessful"; //when the shopping cart cannot successfully inserted into database
            }
        }
    }
    protected void showMessage(string msg, bool isSuccess) //to show the message either can success or fail
    {
        this.lblOutput.Text = msg;

        if (isSuccess)
            lblOutput.CssClass = "success";
        else
            lblOutput.CssClass = "fail";
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        ShoppingCart sc = (ShoppingCart)Session["cart"]; //retrieve the shopping cart session 
        List<CartItem> acmList = sc.RoomCI; //retrieve the cartitem from room details
        List<CartItem> ticList = sc.TicketCI; //retrieve the cartitem from ticket details 
        List<CartItem> resList = sc.RestaurantCI; //retrieve the cart item from restaurant details
        Customer c = CustomerDB.getACustomerByEmail(Session["emailUser"].ToString()); //retrieve the customer information

        int count = 1; //initialize the count no

        Random r = new Random(); //initialize the random number generator
        companyName = "SmartTravel"; //set the company name
        customerName = c.Name; //set the customer name
        orderNo = r.Next(0, 10000); //use random number to show the order no
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[5] {
                            new DataColumn("ID", typeof(string)),
                            new DataColumn("Name", typeof(string)),
                            new DataColumn("Price", typeof(int)),
                            new DataColumn("Quantity", typeof(int)),
                            new DataColumn("Total", typeof(int))});
        for (int i = 0; i < acmList.Count; i++)
        {
            dt.Rows.Add(count++, acmList[i].SCRoom.Hotel.Name + " -- Room ID: " + acmList[i].SCRoom.RoomID, acmList[i].SCRoom.Price, acmList[i].NoofRoom, acmList[i].RoomTotalAmt);
        }
        for (int n = 0; n < ticList.Count; n++)
        {
            dt.Rows.Add(count++, ticList[n].TICTicket.Attraction.Name + " -- " + ticList[n].TICtype, ticList[n].TICTicket.Price, ticList[n].TICqty, ticList[n].TICtotalAMT);
        }
        for (int n = 0; n < resList.Count; n++)
        {
            dt.Rows.Add(count++, resList[n].RESname, 0, resList[n].RESguest, 0);
        }
        GeneratePDF(dt);
        Session["cart"] = null; //make it null for cart session 
        Session["bID"] = null; //make it null for booking id session 
        Session["AmtPayable"] = null; //make it null for amount payable session 
        Session["countryName"] = null; //make it null for countryName
    }
    private void GeneratePDF(DataTable dt) //to generate PDF
    {
        Customer c = CustomerDB.getACustomerByEmail(Session["emailUser"].ToString()); //retrieve the customer email

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                StringBuilder sb = new StringBuilder();

                //Generate Invoice (Bill) Header.
                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td align='center' colspan = '2'><b>Order Sheet</b></td></tr>");
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Customer Name: </b>");
                sb.Append(customerName);
                sb.Append("<tr><td colspan = '2'></td></tr>");
                sb.Append("<tr><td><b>Order No: </b>");
                sb.Append(orderNo);
                sb.Append("</td><td align = 'right'><b>Date: </b>");
                sb.Append(DateTime.Now);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Company Name: </b>");
                sb.Append(companyName);
                sb.Append(" </td></tr>");
                sb.Append("<tr><td colspan = '2'><b>Booking ID: </b>");
                sb.Append(Session["bID"]);
                sb.Append("</td></tr>");
                sb.Append("</table>");
                sb.Append("<br />");

                //Generate Invoice (Bill) Items Grid.
                sb.Append("<table border = '1'>");
                sb.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                    sb.Append(column.ColumnName);
                    sb.Append("</th>");
                }
                sb.Append("</tr>");
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<td>");
                        sb.Append(row[column]);
                        sb.Append("</td>");
                    }
                    sb.Append("</tr>");
                }
                sb.Append("<tr><td align = 'right' colspan = '");
                sb.Append(dt.Columns.Count - 1);
                sb.Append("'>Total</td>");
                sb.Append("<td>");
                sb.Append(dt.Compute("sum(Total)", ""));
                sb.Append("</td>");
                sb.Append("</tr></table>");
                sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                sb.Append("<tr><td align='left' color='red' colspan = '2'><b>*Note:</b></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><b>Price is SGD</b></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><b>This receipt does not include the tax and booking charges</b></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><br/><br/><br/><br/><br/><br/></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><b>Please ensure all information listed above is correct and keep this receipt for your records</b></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><b>If you have any questions, please see the contact of the webpage</b></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><b>Contact +65 6390 9000</b></td></tr>");
                sb.Append("<tr><td align='left' colspan = '2'><b>Thank You.</b></td></tr>");
                sb.Append(" </td></tr>");
                sb.Append("</table>");

                //Export HTML String as PDF.
                StringReader sr = new StringReader(sb.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                htmlparser.Parse(sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Invoice_" + orderNo + ".pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
        }
    }
}
