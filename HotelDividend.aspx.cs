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
public partial class HotelDividend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //hotel owner can check the pending and paid into the gridview
        List<Dividend> dvPendingList = DividendDB.getAllHotelPendingDividendsByID(((Hotel)Session["userHotel"]).HotelID.ToString());
        gvDividendPendingH.DataSource = dvPendingList;
        gvDividendPendingH.DataBind();

        List<Dividend> dvPaidList = DividendDB.getAllHotelPaidDividendsByID(((Hotel)Session["userHotel"]).HotelID.ToString());
        gvDividendPaidH.DataSource = dvPaidList;
        gvDividendPaidH.DataBind();
    }

    protected void gvDividendPendingH_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDividendPendingH.PageIndex = e.NewPageIndex;
        List<Dividend> dvPendingList = DividendDB.getAllHotelPendingDividendsByID(((Hotel)Session["userHotel"]).HotelID.ToString());
        gvDividendPendingH.DataSource = dvPendingList;
        gvDividendPendingH.DataBind();
    }

    protected void gvDividendPaidH_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDividendPaidH.PageIndex = e.NewPageIndex;
        List<Dividend> dvPaidList = DividendDB.getAllHotelPaidDividendsByID(((Hotel)Session["userHotel"]).HotelID.ToString());
        gvDividendPaidH.DataSource = dvPaidList;
        gvDividendPaidH.DataBind();
    }
}