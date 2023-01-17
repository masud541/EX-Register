using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageBK : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.ToString() != "ASP.recallstart_aspx" ||
            Page.ToString() != "ASP.recallserialcheck_aspx")
        {
            /*if (JLUtils.IsAuthenticated() != "YES")
            {
                Response.Redirect("RecallStart.aspx");
            }*/
        }

        //HyperLinkLogout.Visible = true;

        

        if (JLUtils.IsAuthenticated() == "YES" && JLUtils.HasRole("RA_DBA"))
        {
            HyperLinkRequest.Visible = true;
            HyperLinkStatus.Visible = true;
            HyperLinkLogout.Visible = true;
            HyperLinkReviewRequest.Visible = true;
            HyperLinkAppeal0.Visible = true;
            HyperLinkAppeal.Visible = true;
            HyperLinkSubcatAction.Visible = true;
            HyperLinkSkuMaster.Visible = true;
            HyperLinkSCategoryMaster.Visible = true;
            HyperLinkCog.Visible = true;
            HyperLinkApprovalCodes.Visible = true;
            HyperLinkActionCodes.Visible = true;
            LabelUser.Visible = true;
            LabelUser.Text = "User: " + Session["USER"].ToString();
        }
        else if (JLUtils.IsAuthenticated() == "YES" && JLUtils.HasRole("RA_REVIEWER"))
        {
            HyperLinkRequest.Visible = true;
            HyperLinkStatus.Visible = true;
            HyperLinkLogout.Visible = true;
            HyperLinkReviewRequest.Visible = true;
            HyperLinkAppeal0.Visible = true;
            HyperLinkAppeal.Visible = false;
            HyperLinkSubcatAction.Visible = true;
            HyperLinkSkuMaster.Visible = false;
            HyperLinkSCategoryMaster.Visible = false;
            HyperLinkCog.Visible = true;
            HyperLinkApprovalCodes.Visible = true;
            HyperLinkActionCodes.Visible = true;
            LabelUser.Visible = true;
            LabelUser.Text = "User: " + Session["USER"].ToString();
        }
        else if (JLUtils.IsAuthenticated() == "YES" && JLUtils.HasRole("RA_DEALER"))
        {
            HyperLinkRequest.Visible = true;
            HyperLinkStatus.Visible = true;
            HyperLinkLogout.Visible = true;
            HyperLinkReviewRequest.Visible = false;
            HyperLinkAppeal0.Visible = false;
            HyperLinkAppeal.Visible = true;
            HyperLinkSubcatAction.Visible = false;
            HyperLinkSkuMaster.Visible = false;
            HyperLinkSCategoryMaster.Visible = false;
            HyperLinkCog.Visible = false;
            HyperLinkApprovalCodes.Visible = false;
            HyperLinkActionCodes.Visible = false;
            LabelUser.Visible = true;
            LabelUser.Text = "User: " + Session["USER"].ToString();
        }
        

        if(Page.ToString() == "ASP.requestrastart_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA", "RA_DEALER"))
        {
        }
        else if (Page.ToString() == "ASP.requestrah_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA", "RA_DEALER"))
        {
        }
        else if (Page.ToString() == "ASP.requestrad_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA", "RA_DEALER"))
        {
        }
        else if (Page.ToString() == "ASP.rastatuscs_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA", "RA_DEALER"))
        {
        }
        else if (Page.ToString() == "ASP.appeal_aspx" && JLUtils.HasRole("RA_DEALER"))
        {
        }
        else if (Page.ToString() == "ASP.requestreview_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.skumasterlisttemp_aspx" && JLUtils.HasRole("RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.approvalcds_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.actioncds_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.requestsplit_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.subcatactioncd_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.categorymaster_aspx" && JLUtils.HasRole("RA_REVIEWER", "RA_DBA"))
        {
        }
        else if (Page.ToString() == "ASP.main_aspx")
        {
        }
        else if (Page.ToString() == "ASP.default_aspx")
        {
        }
        else if (Page.ToString() == "ASP.requestsubmitted_aspx")
        {
        }
        else if (Page.ToString() == "ASP.requestrafinalized_aspx")
        {
        }
        else if (Page.ToString() == "ASP.cog_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallstart_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallserialcheck_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallserialcheckresult_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallcustomerinfo_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallcustomerinfoconfirm_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallrcnumber_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallinternational_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallsize_aspx")
        {
        }
        else if (Page.ToString() == "ASP.recallstatusupdate_aspx")
        {
        }
        else if (Page.ToString() == "ASP.thankyou_aspx")
        {
        }
        else
        {
            Response.Redirect("Main.aspx");
        }

       
    }
}
