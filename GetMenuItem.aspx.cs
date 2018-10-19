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
public partial class GetMenuItem : System.Web.UI.Page
{
    bool verification = true; //initialize the bool verfication into true.
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //show menuitem into listview
            List<MenuItem> menuItems = MenuItemDB.getMenuByRestaurant(Convert.ToInt32(Session["restaurant"]));
            lvMenu.DataSource = menuItems;
            lvMenu.DataBind(); //bind the data

            //get the restaurant name, address from the database
            Restaurant r = RestaurantDB.getRestaurant(Convert.ToInt32(Session["restaurant"]));
            lblRname.Text = r.Name;
            lblAddress.Text = r.Address;
            lblName.Text = r.Name;

            tbxDate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd"); //user cannot set the past date.
        }
    }


    protected void btnBook_Click(object sender, EventArgs e) //when user book the restaurant details
    {
        //check the bool if false
        bool exist = false;
        //initialize the date and time
        string date = tbxDate.Text;
        string time = tbxTime.Text;
        Restaurant r = RestaurantDB.getRestaurant(Convert.ToInt32(Session["restaurant"])); //get the restaurant details from session
        CartItem c = new CartItem(r, Convert.ToInt32(Session["restaurant"]), r.Name, r.Address, tbxDate.Text, tbxTime.Text, Convert.ToInt32(tbxGuest.Text)); //add restaurant into the cartitem
        ShoppingCart sc = (ShoppingCart)Session["cart"];
        if (sc == null) //if the shopping cart is null
        {
            //add into the cartitem
            sc = new ShoppingCart();
            sc.RestaurantAdd(c);
            lblOutput.Text = "Restaurant added to the Shopping Cart"; //show the messages
        }
        else
        {
            List<CartItem> ci = sc.RestaurantCI; //restaurant details already added into shopping cart
            foreach (CartItem citm in ci) //use foreach to check the cartitem added to the list
                if (citm.REStaurantID == r.RestaurantID)
                    exist = true;
            if (exist == false) //if the bool is false
            {
                sc.RestaurantAdd(c); //add the restaurant details into the shopping cart
                lblOutput.Text = "Make reservation for restaurant added to the shopping cart"; //show the message
            }
            else
                lblOutput.Text = "You have already added this Restaurant to the shopping cart"; //show the error message, when user already added into the shopping cart
        }
        //create a cart session
        Session["cart"] = sc;
    }

}