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
public partial class GetRoom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            List<Room> rooms = RoomDB.getRoomByOwner(Convert.ToInt32(Session["HotelID"])); //get the data from database
            if (rooms.Count != 0) //check the room data is not null
            {
                Session["room"] = rooms; //create a room session

                lblNoRoom.Visible = false;
                lvRoom.DataSource = rooms;
                lvRoom.DataBind();
            }
            else
            {
                lblNoRoom.Visible = true;
            }
            //to disable past dates
            tbxCheckIn.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            tbxCheckOut.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");




        }

    }
    protected void lvRoom_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        //to check the date cannot be past date
        if (Convert.ToDateTime(tbxCheckIn.Text) <= Convert.ToDateTime(tbxCheckOut.Text) && Convert.ToDateTime(tbxCheckIn.Text) >= DateTime.Now)
        {
            if (e.CommandName == "RoomBook") //user selects on the particular room to book
            {
                bool exist = false;
                Room r = RoomDB.getRoom(e.CommandArgument.ToString()); //get the room id from user selection
                //initialize the checkin and checkout -- datetime
                DateTime chkin = Convert.ToDateTime(tbxCheckIn.Text); 
                DateTime chkout = Convert.ToDateTime(tbxCheckOut.Text);

                double amount; //declare amount
                if (chkin == chkout) //if the checkin and checkout same day
                    amount = r.Price; //amount will be same
                else
                {
                    int duration = Convert.ToInt32((chkout - chkin).TotalDays); //initialize the duration, to calculate how many days
                    amount = r.Price * duration; //calculate the price, based on how many days 
                }
                //add the cartitem details for room
                CartItem c = new CartItem(r, chkin.ToShortDateString(), chkout.ToShortDateString(), Convert.ToDouble(amount), r.Type, (Convert.ToInt32(tbxNoRoom.Text)));
                ShoppingCart sc = (ShoppingCart)Session["cart"]; //create s shopping cart session
                if (sc == null) //if shopping cart is null
                {
                    //user can add into cart item classes
                    sc = new ShoppingCart();
                    sc.RoomAdd(c);
                    lblOutput.Text = "Room added to the Shopping Cart"; //show the messages, when user already add the room
                }
                else
                {
                    List<CartItem> ci = sc.RoomCI;
                    foreach (CartItem citm in ci) //use foreach to check whether cartitem already added or not
                        if (citm.SCRoom.RoomID == r.RoomID)
                            exist = true;
                    if (exist == false)
                    {
                        sc.RoomAdd(c);
                        lblOutput.Text = "Room added to the shopping cart"; //show the message when user already add the room into cart item
                    }
                    else
                        lblOutput.Text = "You have already added this room to the shopping cart"; //to show the message, user already added this room into shopping cart
                }
                Session["cart"] = sc; //create a session for shopping cart
            }

        }else
            lblOutput.Text = "Check-Out date cannot be earlier than Check-In date or check in date cannot be past date!"; //to show the error message when the user select the past date


    }

    protected void lvRoom_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        //page properties changing for listview room
        List<Room> rooms = (List<Room>)Session["Room"];
        DPRoom.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        lvRoom.DataSource = rooms;
        lvRoom.DataBind();
    }

    protected void lvRoom_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
        //selected index changing for lvroom
        List<Room> rooms = (List<Room>)Session["Room"];
        List<Room> roomlist = new List<Room>();
        int currentPage = DPRoom.StartRowIndex / DPRoom.MaximumRows;
        roomlist.Add(rooms[DPRoom.PageSize * currentPage + e.NewSelectedIndex]);
    }
}