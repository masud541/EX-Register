using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Appeal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataBind();

            if (DropDownList1.Items.Count > 0)
            {
                DropDownList1_SelectedIndexChanged(sender, e);
            }
        }

        if (!IsPostBack)
        {
            if (Request.QueryString["appeal"] != null)
            {
                DropDownList1.SelectedValue = Request.QueryString["appeal"].ToString();
            }

            if (DropDownList1.Items.Count > 0)
            {
                DropDownList1_SelectedIndexChanged(sender, e);
            }
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        RABusinessObject rbo = new RABusinessObject();
        RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(Session["USER"].ToString())[0];


        rbo.UpdateAppeal(DateTime.Now.ToShortDateString()+" "+TextBoxMessage.Text+"; ### ", Convert.ToInt32(DropDownList1.SelectedValue));
        rbo.InsertRALineItemStatus(Convert.ToInt32(DropDownList1.SelectedValue), "Rejection Appealed");

        rbo.SendRAemail(/*dr.EMAIL_ADDRESS*/ "oreyes@jlaudio.com", "RA Request Rejection Appeal Submitted", "Your RA Request Rejection Appeal has been submitted."
           + "<br />"
           + "<br />"
           + "Your Appeal will be reviewed." 
           + "<br />"
           + "<br />"
           + "<br />"
           + "<br />"
           + "------------------------------------------------------------------<br />"
           + "JL Audio"
     );




        rbo.SendRAemail(/*"rareview@jlaudio.com" */ "oreyes@jlaudio.com", "New RA Request Rejection Appeal Submitted" + DropDownList1.SelectedItem.Text,
            "An RA Request Rejection Appeal has been submitted."
           + "<br />"
           + "<br />"
           + "Summary:"
           + "<br />"
           + "<br />"
           + "Dealer: " + rbo.SelectDealerNameByUserID(Session["USER"].ToString())
           + "<br />"
           + "Contact: " + dr.FULL_NAME
           + "<br />"
           + "Email: " + dr.EMAIL_ADDRESS
           + "<br />"
           + "Phone: " + dr.PHONE
           + "<br />"
           + "Fax: " + dr.FAX
           + "<br />"
           + DropDownList1.SelectedItem.Text
           + "<br />"
           + "Problem Description: " + LabelProblem.Text
           + "<br />"
           + "Appeal: " + TextBoxMessage.Text
           + "<br />"
           + "<br />"
           + "------------------------------------------------------------------<br />"
           + "JL Audio"
     );

        DropDownList1_SelectedIndexChanged(sender, e);

        LabelAppealEntered.Text = "Customer Service will review your request.";

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        LabelAppealEntered.Text = "";

        RABusinessObject rbo = new RABusinessObject();

        RADataSet.DP_RA_REQUESTDataTable dt = rbo.SelectRAHBySeq(rbo.SelectRaSeqByRaItemSeq(Convert.ToInt32(DropDownList1.SelectedValue)));
        RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable dtl = rbo.SelectRALineItemByItemSeq(Convert.ToInt32(DropDownList1.SelectedValue));

        LabelPurchaseDate.Text = "";
        LabelRANum.Text = "";

        if (dtl[0].CONSUMER_PURCHASE_DATE != Convert.ToDateTime("12/31/9999"))
        {

            LabelPurchaseDate.Text = dt[0].CONSUMER_PURCHASE_DATE.ToShortDateString();
        }
        if (dtl[0].RA_NUMBER != "-1")
        {
            LabelRANum.Text = dt[0].RA_NUMBER;
        }
        LabelRequestDate.Text = dt[0].RA_DATE.ToShortDateString();
        LabelApproved.Text = dtl[0].APPROVED;
        LabelCategory.Text = dtl[0].CATEGORY;
        if (dtl[0].MODEL_NUMBER != "NONE")
        {
            LabelModel.Text = dtl[0].MODEL_NUMBER;
        }
        LabelSerial.Text = dtl[0].SERIAL_NUMBER;
        LabelWarrantyExpected.Text = dtl[0].WARRANTY_EXPECTED;
        LabelConsumerName.Text = dtl[0].CONSUMER_FIRST_NAME.Replace("NONE", "") + " " + dtl[0].CONSUMER_LAST_NAME.Replace("NONE", "");
        LabelDealerContact.Text = dt[0].FULL_NAME;
        LabelDealerPhone.Text = dt[0].PHONE;
        LabelDealerEmail.Text = dt[0].EMAIL_ADDRESS;
        LabelProblem.Text = dtl[0].PROBLEM_DESCRIPTION;
        if (dtl[0].APPEAL != "NONE")
        {
            LabelAppeal.Text = dtl[0].APPEAL;
        }

        LabelSku.Text = dtl[0].SKU;
        TextBoxMessage.Text = dtl[0].REJECTION_MESSAGE;


        if (LabelApproved.Text == "Rejected" )
        {
            Button1.Enabled = true;
            TextBoxMessage.Text = "";
            TextBoxMessage.Enabled = true;
        }
        else
        {
            Button1.Enabled = false;
            TextBoxMessage.Text = "";
            TextBoxMessage.Enabled = false;
        }

        if (LabelApproved.Text == "Approved")
        {
            LabelApproved.ForeColor = System.Drawing.Color.Green;
        }
        if (LabelApproved.Text == "Rejected")
        {
            LabelApproved.ForeColor = System.Drawing.Color.Red;
        }
        if (LabelApproved.Text == "Appealed")
        {
            LabelApproved.ForeColor = System.Drawing.Color.Orange;
        }
    }
}
