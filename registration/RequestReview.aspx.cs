using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownListApprovalCD.Enabled = false;
            ButtonApproval.Enabled = false;
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();



        RADataSet.DP_RA_REQUESTDataTable dt = rbo.SelectRAHBySeq(Convert.ToInt32(GridView6.SelectedValue));
        RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable dtl = rbo.SelectRALineItemByItemSeq(Convert.ToInt32(GridView1.SelectedValue));

        LabelPurchaseDate.Text = "";
        LabelRANum.Text = "";

        if (dtl[0].CONSUMER_PURCHASE_DATE != Convert.ToDateTime("12/31/9999"))
        {

            LabelPurchaseDate.Text = dtl[0].CONSUMER_PURCHASE_DATE.ToShortDateString();
        }
        
        if(dtl[0].RA_NUMBER != "-1")
        {
            LabelRANum.Text = dtl[0].RA_NUMBER;
        }
          
        LabelRequestDate.Text = dt[0].RA_DATE.ToShortDateString();
        LabelApproved.Text = dtl[0].APPROVED;
        LabelCategory.Text = dtl[0].CATEGORY+" / "+dtl[0].SUBCAT;
        if (dtl[0].MODEL_NUMBER != "NONE")
        {
            LabelModel.Text = dtl[0].MODEL_NUMBER;
        }
        LabelSerial.Text = dtl[0].SERIAL_NUMBER;
        LabelWarrantyExpected.Text = dtl[0].WARRANTY_EXPECTED;
        LabelConsumerName.Text = dtl[0].CONSUMER_FIRST_NAME + " " + dtl[0].CONSUMER_LAST_NAME;
        
        LabelDealerContact.Text = dt[0].FULL_NAME;
        LabelDealerPhone.Text = dt[0].PHONE;
        LabelDealerEmail.Text = dt[0].EMAIL_ADDRESS;
        LabelProblem.Text = dtl[0].PROBLEM_DESCRIPTION;
        if (dtl[0].APPEAL != "NONE")
        {
            LabelAppeal.Text = dtl[0].APPEAL;
        }
        LabelSku.Text = dtl[0].SKU;

        

        TextBoxRejectionMessage.Text = dtl[0].REJECTION_MESSAGE;

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

       // DropDownList1.SelectedIndex = 0;
       // DropDownList2.SelectedIndex = 0;
        DropDownList1.SelectedValue = dtl[0].CATEGORY;
        DropDownList2.DataBind();
        DropDownList2.SelectedValue = dtl[0].SUBCAT;
        DropDownList3.DataBind();
        DropDownList3.SelectedValue = dtl[0].CATEGORY_MASTER_SEQ.ToString();
        DropDownListActionCD.DataBind();
        DropDownListActionCD.SelectedIndex = 0;

        /*if (LabelSku.Text != " ")
        {
            DropDownList1.SelectedValue = rbo.SelectSkuCategory(LabelSku.Text);
            DropDownList2.DataBind();
            DropDownList2.SelectedValue = rbo.SelectSkuSubCategory(LabelSku.Text);
            DropDownList3.DataBind();
            DropDownList3.SelectedValue = dt[0].category_master_seq.ToString(); 
        }*/
      //  DropDownList3.SelectedValue = dtl[0].category_master_seq.ToString(); 

      
        DropDownListActionCD.SelectedValue = dtl[0].ACTION_CD_SEQ.ToString();
       // Response.Write(dtl[0].ACTION_CD_SEQ.ToString());

        if (LabelApproved.Text == "Pending" || LabelApproved.Text == "Appealed")
        {
            Button1.Enabled = true;
            Button2.Enabled = true;
            TextBoxRejectionMessage.Text = "";
            TextBoxRejectionMessage.Enabled = true;
            DropDownList1.Enabled = true;
            DropDownList2.Enabled = true;
            DropDownList3.Enabled = true;
          //  DropDownListApprovalCD.Enabled = true;
            DropDownListActionCD.Enabled = true;

        }
        else
        {
            Button1.Enabled = false;
            Button2.Enabled = false;
            TextBoxRejectionMessage.Enabled = false;
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
            DropDownList3.Enabled = false;
        //    DropDownListApprovalCD.Enabled = false;
            DropDownListActionCD.Enabled = false;

        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           // DataControlRowType.DataRow

            DataRowView req_reow = (DataRowView)e.Row.DataItem;
          //  Response.Write("0"+e.Row.Cells[2].Text);

           // e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;

            if (req_reow.Row[13].ToString() == "Approved")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;
            }
            if (req_reow.Row[13].ToString() == "Rejected")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
            }
            if (req_reow.Row[13].ToString() == "Appealed")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Orange;
            }
            
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.SelectedIndex = -1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label75.Text = "";
        if (DropDownListApprovalCD.SelectedValue == "0")
        {
            Label75.Text = "Approval CD must be selected.";
        }
        else
        {
            if (DropDownListActionCD.SelectedValue == "0")
            {
                Label75.Text = "Action CD must be selected.";
            }
            else
            {
                if (DropDownList3.SelectedIndex > 0)
                {
                    LabelRejectionMessage.Text = "";


                    RABusinessObject rbo = new RABusinessObject();

                    rbo.UpdateRAHApprovalCDSeq(Convert.ToInt32(DropDownListApprovalCD.SelectedValue), Convert.ToInt32(GridView6.SelectedValue));
                    rbo.UpdateApproveDisapproveRAItem("Y", "", DropDownList1.SelectedValue, DropDownList2.SelectedValue, Convert.ToInt32(DropDownList3.SelectedValue), Convert.ToInt32(DropDownListActionCD.SelectedValue), Convert.ToInt32(GridView1.SelectedValue));
                    GridView1.DataBind();
                    GridView1_SelectedIndexChanged(sender, e);
                    // GridView6.DataBind();
                    DropDownListApprovalCD.Enabled = true;
                    ButtonApproval.Enabled = true;
                }
                else
                {
                    Label75.Text = "Sku is required";
                }
            }

        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         Label75.Text = "";
        if (DropDownList3.SelectedIndex > 0)
        {

        LabelRejectionMessage.Text = "";

        if (TextBoxRejectionMessage.Text == "")
        {
            LabelRejectionMessage.Text = "Rejection Message Required";
        }
        else
        {

            RABusinessObject rbo = new RABusinessObject();

            rbo.UpdateApproveDisapproveRAItem("N", TextBoxRejectionMessage.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, Convert.ToInt32(DropDownList3.SelectedValue), Convert.ToInt32(DropDownListActionCD.SelectedValue), Convert.ToInt32(GridView1.SelectedValue));
            rbo.InsertRALineItemStatus(Convert.ToInt32(GridView1.SelectedValue), "Item Rejected.");

            RADataSet.DP_RA_REQUESTDataTable dt = rbo.SelectRAHBySeq(Convert.ToInt32(GridView1.SelectedValue));

            rbo.SendRAemail(/*dt[0].EMAIL_ADDRESS*/ "oreyes@jlaudio.com", "RA Request Rejected" + " Sku: " + LabelSku.Text + " Serial: " + LabelSerial.Text,
                "Your Pending RA Request for Category: " + LabelCategory.Text + " Sku #: " + LabelSku.Text + " with serial number " + LabelSerial.Text + " cannot be authorized for return because of the following reason(s):"
                   + "<br />"
                   + "<br />"
                   + TextBoxRejectionMessage.Text
                   + "<br />"
                   + "<br />"
                   + "If you would like to apeal the decision please click the link below to contact customer service."
                   + "<br />"
                   + "<br />"
                   + "<a href='http://portalra.jlaudio.com/portalra/?appeal=" + GridView1.SelectedValue + "'>http://portalra.jlaudio.com/portalra/?appeal=" + GridView1.SelectedValue + "</a>" 
                   + "<br />"
                   +"<br />"
                   + "Thank You,"
                   + "<br />"
                   + "<br />"
                   + "The JL Team"
                   + "<br />"
                   + "<br />"
                   + "------------------------------------------------------------------<br />"
                   + "JL Audio"
             );

            GridView1.DataBind();
            GridView1_SelectedIndexChanged(sender, e);
          //  GridView6.DataBind();
            DropDownListApprovalCD.Enabled = true;
            ButtonApproval.Enabled = true;
        }
        }
        else
        {
            Label75.Text = "Sku is required";
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        

        Button1.Enabled = false;
        Button2.Enabled = false;
        TextBoxRejectionMessage.Enabled = false;
        DropDownList1.Enabled = false;
        DropDownList2.Enabled = false;
        DropDownList3.Enabled = false;
        DropDownListActionCD.Enabled = false;

        RABusinessObject rbo = new RABusinessObject();
        RADataSet.DP_RA_REQUESTDataTable dt = rbo.SelectRAHBySeq(Convert.ToInt32(GridView6.SelectedValue));
       
        
        DropDownListApprovalCD.SelectedIndex = 0;        
        DropDownListApprovalCD.SelectedValue = dt[0].APPROVAL_CD_SEQ.ToString();

        

        if (GridView6.SelectedRow.Cells[4].Text == "0" && GridView6.SelectedRow.Cells[5].Text == "0")
        {
            DropDownListApprovalCD.Enabled = true;
            ButtonApproval.Enabled = true;
        }
        else
        {
            DropDownListApprovalCD.Enabled = false;
            ButtonApproval.Enabled = false;
        }
            

        GridView1.DataBind();
        GridView1.SelectedIndex = 0;
        GridView1_SelectedIndexChanged(sender, e);
    }
    protected void GridView6_PageIndexChanged(object sender, EventArgs e)
    {
        GridView6.DataBind();
        GridView1.DataBind();
       
        GridView6.SelectedIndex = 0;
        GridView6_SelectedIndexChanged(sender, e);

       
        GridView1.SelectedIndex = 0;
        GridView1_SelectedIndexChanged(sender, e);

        Button1.Enabled = false;
        Button2.Enabled = false;
        TextBoxRejectionMessage.Enabled = false;
        DropDownList1.Enabled = false;
        DropDownList2.Enabled = false;
        DropDownList3.Enabled = false;
      
        DropDownListActionCD.Enabled = false;
    }
    protected void GridView6_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // DataControlRowType.DataRow

            DataRowView req_reow = (DataRowView)e.Row.DataItem;
            //  Response.Write("0"+e.Row.Cells[2].Text);

            // e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;

            if (req_reow.Row[35].ToString() == "1")
            {
                e.Row.Cells[4].ForeColor = System.Drawing.Color.Green;
            }
            if (req_reow.Row[36 ].ToString() == "1")
            {
                e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
            }
            if (req_reow.Row[38].ToString() == "Appealed")
            {
                e.Row.Cells[7].ForeColor = System.Drawing.Color.Orange;
            }

            

        }
    }
    protected void ButtonApproval_Click(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        if (DropDownListApprovalCD.SelectedValue != "0")
        {
            LabelApprovalCDError.Text = "";

            rbo.UpdateRAHApprovalCDSeq(Convert.ToInt32(DropDownListApprovalCD.SelectedValue), Convert.ToInt32(GridView6.SelectedValue));

            GridView6.DataBind();

            DropDownListApprovalCD.Enabled = true;
            ButtonApproval.Enabled = true;
        }
        else
        {
            LabelApprovalCDError.Text = "Please first select an approval cd.";
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView2.DataBind();
    }
}
