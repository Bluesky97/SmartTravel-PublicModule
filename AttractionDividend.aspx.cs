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
public partial class AttractionDividend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //use try and catch if the session is null
        try
        {
            //to show the dividend pending list
            List<Dividend> dvPendingList = DividendDB.getAllAttractionPendingDividendsByID(((Attraction)Session["userAttraction"]).AttractionID.ToString());
            gvDividendPendingA.DataSource = dvPendingList;
            gvDividendPendingA.DataBind();

            //to show the dividend paid list
            List<Dividend> dvPaidList = DividendDB.getAllAttractionPaidDividendsByID(((Attraction)Session["userAttraction"]).AttractionID.ToString());
            gvDividendPaidA.DataSource = dvPaidList;
            gvDividendPaidA.DataBind();
        }
        catch (Exception ex)
        {
        }
    }

    protected void gvDividendPendingA_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //page index changing -- gridview for pending attraction
        gvDividendPendingA.PageIndex = e.NewPageIndex;
        List<Dividend> dvPendingList = DividendDB.getAllAttractionPendingDividendsByID(((Attraction)Session["userAttraction"]).AttractionID.ToString());
        gvDividendPendingA.DataSource = dvPendingList;
        gvDividendPendingA.DataBind();
    }

    protected void gvDividendPaidA_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //page index changing -- gridview for paid attraction
        gvDividendPendingA.PageIndex = e.NewPageIndex;
        List<Dividend> dvPaidList = DividendDB.getAllAttractionPaidDividendsByID(((Attraction)Session["userAttraction"]).AttractionID.ToString());
        gvDividendPaidA.DataSource = dvPaidList;
        gvDividendPaidA.DataBind();
    }
}