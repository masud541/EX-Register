using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class RequestRAD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        RABusinessObject rbo = new RABusinessObject();

        if (Request.QueryString["rs"] != null)
        {

            
        }
        else
        {
            Response.Redirect("Main.aspx");
        }



        if (Request.QueryString["rs"] != null)
        {
            TextBoxHiddenDate.Text = DateTime.Now.AddDays(1).ToShortDateString();

            DropDownListDealerAndContact.DataBind();

            if (DropDownListDealerAndContact.Items.Count > 0)
            {
                DropDownListDealerAndContact.SelectedIndex = 0;
                DropDownListDealerAndContact_SelectedIndexChanged(sender, e);
            }


            DropDownListDealerAndContact.SelectedValue = rbo.SelectDP_USER_IDByRaSeq(Convert.ToInt32(Request.QueryString["rs"]));
            DropDownListDealerAndContact_SelectedIndexChanged(sender, e);
            DropDownListDealerAndContact.Enabled = false;

        }

         if (Request.QueryString["rs"] != null)
        {

            if (rbo.SelectDPUserIDByRaSeq(Convert.ToInt32(Request.QueryString["rs"])) == DropDownListDealerAndContact.SelectedValue)
            {
                if ((rbo.SelectCountItemsByRaSeq(Convert.ToInt32(Request.QueryString["rs"])) == 0) ||
                    (rbo.SelectCountItemsByRaSeqAndStatus(Convert.ToInt32(Request.QueryString["rs"]), "S") > 0)
                    )
                {

                }
                else
                {
                    Response.Redirect("Main.aspx");
                }

            }
            else
            {
                Response.Redirect("Main.aspx");
            }
        }
        else
        {
            Response.Redirect("Main.aspx");
        }
        

        if (!IsPostBack)
        {
            if (Request.QueryString["rs"] != null)
            {
             

                if (rbo.SelectCountRaBySeq(Convert.ToInt32(Request.QueryString["rs"])) == 1)
                {
                    LabelDateTimeStamp.Text = rbo.SelectRaDate(Convert.ToInt32(Request.QueryString["rs"])).ToString();
                }
            }
        }

        GridView1.DataBind();
    }
    protected void DropDownListDealerAndContact_SelectedIndexChanged(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(DropDownListDealerAndContact.SelectedValue)[0];

        LabelContact.Text = dr.FULL_NAME;
        LabelEmail.Text = dr.EMAIL_ADDRESS;
        LabelPhone.Text = dr.PHONE;
        LabelFax.Text = dr.FAX;

        LabelDealer.Text = rbo.SelectDealerNameByUserID(DropDownListDealerAndContact.SelectedValue);

    }
    protected void DropDownListCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListCat.SelectedItem.Text == "Amplifiers")
        {

            LabelShipMessage1.Text = "AMPLIFIERS MUST BE SENT TO:";
            LabelShipMessage2.Text = "JL Audio, Inc.";
            LabelShipMessage3.Text = "3343 East Wier Avenue";
            LabelShipMessage4.Text = "Phoenix, AZ 85049";
            LabelShipMessage4.Font.Bold = true;


            LabelShipMessage1.BackColor = System.Drawing.Color.Yellow;
            LabelShipMessage2.BackColor = System.Drawing.Color.Yellow;
            LabelShipMessage3.BackColor = System.Drawing.Color.Yellow;
            LabelShipMessage4.BackColor = System.Drawing.Color.Yellow;
            LabelShipMessage4.Font.Bold = false;


        }
        else
        {
            LabelShipMessage1.Text = "PRODUCTS OTHER THAN AMPLIFIERS MUST BE SENT TO:";
            LabelShipMessage2.Text = "JL Audio, Inc.";
            LabelShipMessage3.Text = "10369 North Commerce Pkwy.";
            LabelShipMessage4.Text = "Miramar, FL 33025";

            LabelShipMessage1.BackColor = System.Drawing.Color.Lime;
            LabelShipMessage2.BackColor = System.Drawing.Color.Lime;
            LabelShipMessage3.BackColor = System.Drawing.Color.Lime;
            LabelShipMessage4.BackColor = System.Drawing.Color.Lime;
        }

    }
    protected void DropDownListSubCat_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LabelErrorMessage.Text = "";

        RABusinessObject rbo = new RABusinessObject();

        int ra_item_seq = rbo.SelectNextRaLineItemSeq();
        int serial_cnt = rbo.SelectCountSerial(TextBoxSerial.Text);





        Exception ra_request_already_exists = new Exception("A recent RA Request already exists for this item. ");
        Exception invalid_serial = new Exception("The serial # provided " + TextBoxSerial.Text + " does not correspond to any Model # or Category. Please verify that the serial number entered is correct and resubmit.<BR/><BR/>If you believe this is an error or have any questions, please contact our customer service department at (954) 443-1100.");
        Exception cat_sub_sku_required = new Exception("Category, Subcategory and Sku are required.");

        RADataSet.DP_RA_REQUESTDataTable dt = rbo.SelectRecentRA(TextBoxSerial.Text);

        RADataSet.DP_RA_REQUESTRow dr_recent_ra;

        string ra_date = "";
        string ra_number = "";

       try
       {

        if (dt.Rows.Count > 0)
        {
            dr_recent_ra = (RADataSet.DP_RA_REQUESTRow)dt[0];
            if (dr_recent_ra.SERIAL_NUMBER != null)
            {
                ra_date = dr_recent_ra.RA_DATE.ToShortDateString();
                ra_number = dr_recent_ra.RA_NUMBER;
                throw ra_request_already_exists;
            }
        }





        /*    if ((serial_cnt != 1) && (TextBoxSerial.Text != "") && (DropDownListCat.SelectedItem.Text == "Amplifiers"
                                                                    || DropDownListCat.SelectedItem.Text == "Subwoofers"))
            {
                throw invalid_serial;
            }
            */

        if (DropDownListCat.SelectedIndex == 0 ||
            DropDownListSubCat.SelectedIndex == 0 ||
            DropDownListSku.SelectedIndex == 0)
        {
            throw cat_sub_sku_required;
        }


        rbo.InsertRARequestLineItem(ra_item_seq, Convert.ToInt32(Request.QueryString["rs"]), TextBoxSerial.Text, TextBoxPurchaseDate.Text, DropDownListWarrantyExpected.SelectedValue,
                                    TextBoxProblem.Text, TextBoxConsumerFirstName.Text, TextBoxConsumerLastName.Text,
                                    DropDownListCat.SelectedItem.Text, DropDownListSubCat.SelectedItem.Text, Convert.ToInt32(DropDownListSku.SelectedValue));




        TextBoxSerial.Text = "";
        TextBoxPurchaseDate.Text = "";
        TextBoxProblem.Text = "";
        DropDownListWarrantyExpected.SelectedValue = "N";
        DropDownListCat.SelectedIndex = 0;
        DropDownListSubCat.SelectedIndex = 0;
        DropDownListSku.SelectedIndex = 0;
        TextBoxProblem.Text = "";
        TextBoxConsumerFirstName.Text = "";
        TextBoxConsumerLastName.Text = "";


        rbo.InsertRALineItemStatus(ra_item_seq, "Request Under Review, RA# not yet assigned.");




        GridView1.DataBind();

        
        

        Response.Redirect("RequestSubmitted.aspx?rs=" + Request.QueryString["rs"]);

        }
        catch (Exception ex)
        {
             if (ex == ra_request_already_exists)
             {
                 LabelErrorMessage.Text = "As a previous RA request for serial # " + TextBoxSerial.Text + " has been submitted within the last 30 days, your Return Authorization request cannot be completed. See RA# " + ra_number + " or Pending RA Request on " + ra_date + " in the RA Status screen for more information. <BR/><BR/> If you believe this is an error or have any questions, please call our customer service department at (954) 443-1100.";

             }
             else
             {
                 LabelErrorMessage.Text = ex.Message;
             }
        }

    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            DataRowView req_reow = (DataRowView)e.Row.DataItem;

            if (req_reow.Row[19].ToString() == "Approved")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;
            }
            if (req_reow.Row[19].ToString() == "Rejected")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
            }
            if (req_reow.Row[19].ToString() == "Appealed")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Orange;
            }

        }

        if (GridView1.Rows.Count > 0)
        {
            LabelFinalized.Visible = true;
            ButtonFinalize.Visible = true;
        }


    }

    protected void ButtonFinalize_Click(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();
        rbo.UpdateFinalizeNewRequest(Convert.ToInt32(Request.QueryString["rs"]));


        /*count finalized with Amplifiers Category
         *if > 0 , select next RA Seq
         *and duplicate RA
         
         * 
         * 
         * 
         * 
         * *Update line items for ampliers with new RA seq,
         *
         * Use both ra seqs to customize display messages and emails for customer,
         * 
         * move email logic from existing screen to finalize screen.
         * 
         */
        //int new_ra_seq = 0;

        //if (
        //    (rbo.SelectCountItemsByRaSeq(Convert.ToInt32(Request.QueryString["rs"])) 
        //    != rbo.SelectCountItemsByRaSeqAndCategory(Convert.ToInt32(Request.QueryString["rs"]), "Amplifiers"))
        //    && 
        //    (rbo.SelectCountItemsByRaSeqAndCategory(Convert.ToInt32(Request.QueryString["rs"]), "Amplifiers") > 0) 
        //    )
        //{
        //    new_ra_seq = rbo.SelectNextRaSeq();

        //    RADataSet.DP_RA_REQUESTDataTable dt = new RADataSet.DP_RA_REQUESTDataTable();
        //    RADataSetTableAdapters.DP_RA_REQUESTTableAdapter da = new RADataSetTableAdapters.DP_RA_REQUESTTableAdapter();

        //    dt = da.GetDataRAHBySeq(Convert.ToInt32(Request.QueryString["rs"]));

        //    RADataSet.DP_RA_REQUESTRow ra_row = (RADataSet.DP_RA_REQUESTRow)dt.Rows[0];

        //    rbo.InsertRARequestH(new_ra_seq, ra_row.DP_USER_ID,
        //                         Convert.ToInt32(ra_row.SXCUST_FK_FOR_REQUEST), ra_row.SXCUST_FK_FOR_REQUEST_SHIP,
        //                         ra_row.ship_address1, ra_row.ship_address2.Replace("NONE",""), ra_row.ship_city,
        //                         ra_row.ship_state, ra_row.ship_zipcode, ra_row.SHIP_DIFFERENT);
        //    rbo.UpdateRaSeqByRaSeqAndCategory(new_ra_seq, Convert.ToInt32(Request.QueryString["rs"]), "Amplifiers");

        //    Session["Timestamp2"] = rbo.SelectRaDate(new_ra_seq).ToString();


        //}



        RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(rbo.SelectUserIDByRaSeq(Convert.ToInt32(Request.QueryString["rs"])))[0];

        string customer_message = "";
        //string items = "";

        //   RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable items_dt = rbo.SelectLineItemsByRaSeq(Convert.ToInt32(Request.QueryString["rs"]));

        //for (int i = 0; i < items_dt.Rows.Count; i++)
        //{
        //    RADataSet.DP_RA_REQUEST_LINE_ITEMRow items_row = (RADataSet.DP_RA_REQUEST_LINE_ITEMRow)items_dt[i];

        //   items = items + "Sku " + items_row.SKU;
        //   items = items + "<br />";
        //   items = items + "Serial: " + items_row.SERIAL_NUMBER;
        //   items = items + "<br />";
        //   items = items + "Problem Description: " + items_row.PROBLEM_DESCRIPTION;
        //   items = items + "<br />"   ;
        //   items = items + "<br />";
        //}


        string review_message = "";
        string review_items = "";

        RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable review_items_dt = rbo.SelectLineItemsByRaSeq(Convert.ToInt32(Request.QueryString["rs"]));

        for (int i = 0; i < review_items_dt.Rows.Count; i++)
        {
            RADataSet.DP_RA_REQUEST_LINE_ITEMRow review_items_row = (RADataSet.DP_RA_REQUEST_LINE_ITEMRow)review_items_dt[i];

            review_items = review_items + "Sku: " + review_items_row.SKU;
            review_items = review_items + "<br />";
            review_items = review_items + "Serial: " + review_items_row.SERIAL_NUMBER;
            review_items = review_items + "<br />";
            if (review_items_row.CONSUMER_PURCHASE_DATE != null)
            {
                review_items = review_items + "Purchase Date: " + review_items_row.CONSUMER_PURCHASE_DATE.ToString();
                review_items = review_items + "<br />";
            }
            review_items = review_items + "Warranty Expected: " + review_items_row.WARRANTY_EXPECTED;
            review_items = review_items + "<br />";
            review_items = review_items + "Problem Description: " + review_items_row.PROBLEM_DESCRIPTION;
            review_items = review_items + "<br />";
            review_items = review_items + "Consumer Name: " + review_items_row.CONSUMER_FULL_NAME;
            review_items = review_items + "<br />";
            review_items = review_items + "<br />";
        }

        review_message = "An RA Request has been submitted."
        + "<br />"
        + "<br />"
        + "Summary:"
        + "<br />"
        + "<br />"
        + "Dealer: " + rbo.SelectDealerNameByUserID(rbo.SelectUserIDByRaSeq(Convert.ToInt32(Request.QueryString["rs"])))
        + "<br />"
        + "Contact: " + dr.FULL_NAME
        + "<br />"
        + "Email: " + dr.EMAIL_ADDRESS
        + "<br />"
        + "Phone: " + dr.PHONE
        + "<br />"
        + "Fax: " + dr.FAX
        + "<br />"
        + "Account & Shipping: " + rbo.SelectShipToLocAddrByRaSeq(Convert.ToInt32(Request.QueryString["rs"]))
        + "<br />"
        + "<br />"
        + review_items
        + "<br />"
        + "------------------------------------------------------------------<br />"
        + "JL Audio";

        rbo.SendRAemail(/*"rareview@jlaudio.com"*/"oreyes@jlaudio.com", "New RA Request Submitted"
            + " Dealer/Timestamp: " + rbo.SelectDealerNameByUserID(rbo.SelectUserIDByRaSeq(Convert.ToInt32(Request.QueryString["rs"])))
            + " " + rbo.SelectRaDate(Convert.ToInt32(Request.QueryString["rs"])).ToString(),
            review_message);

        customer_message = "Your RA Request has been submitted."
           + "<br />"
           + "<br />"
           + "Your RA Request will be reviewed. You will be notified via email if an RA number is assigned or if "
           + "the request is rejected. You can also log in to the RA sytem at any time to check the status. "
           + "<br />"
           + "<br />"
           + "Summary:"
           + "<br />"
           + "<br />"
           + review_items
           + "<br />"
           + "------------------------------------------------------------------<br />"
           + "JL Audio";

        rbo.SendRAemail(/*dr.EMAIL_ADDRESS*/"oreyes@jlaudio.com", "RA Request Submitted", customer_message);



        Session["Timestamp1"] = rbo.SelectRaDate(Convert.ToInt32(Request.QueryString["rs"])).ToString();
        Session["ContainsAmp"] = ((rbo.SelectCountItemsByRaSeqAndCategory(Convert.ToInt32(Request.QueryString["rs"]), "Amplifiers")) + (rbo.SelectCountItemsByRaSeqAndCategory(Convert.ToInt32(Request.QueryString["rs"]), "Amplifiers"))).ToString();


        //if (Session["Timestamp2"] != null)
        //{

        //    RADataSet.DP_USERSRow dr2 = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(rbo.SelectUserIDByRaSeq(new_ra_seq))[0];

        //    string customer_message2 = "";
        //    string items2 = "";

        //    RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable items_dt2 = rbo.SelectLineItemsByRaSeq(new_ra_seq);

        //    for (int i = 0; i < items_dt2.Rows.Count; i++)
        //    {
        //        RADataSet.DP_RA_REQUEST_LINE_ITEMRow items_row2 = (RADataSet.DP_RA_REQUEST_LINE_ITEMRow)items_dt2[i];

        //        if (items_row2.SKU != "NONE")
        //        {
        //            items2 = items2 + "Sku " + items_row2.SKU;
        //            items2 = items2 + "<br />";
        //        }
        //        if (items_row2.SERIAL_NUMBER != "NONE")
        //        {
        //            items2 = items2 + "Serial: " + items_row2.SERIAL_NUMBER;
        //            items2 = items2 + "<br />";
        //        }

        //            items2 = items2 + "Problem Description: " + items_row2.PROBLEM_DESCRIPTION;
        //            items2 = items2 + "<br />";
        //            items2 = items2 + "<br />";
        //    }

        //    customer_message2 = "Your RA Request has been submitted."
        //       + "<br />"
        //       + "<br />"
        //       + "Your RA Request will be reviewed. You will be notified via email if an RA number is assigned or if "
        //       + "the request is rejected. You can also log in to the RA sytem at any time to check the status. "
        //       + "<br />"
        //       + "<br />"
        //       + "Summary:"
        //       + "<br />"
        //       + "<br />"
        //       + items2
        //       + "<br />"
        //       + "------------------------------------------------------------------<br />"
        //       + "JL Audio";

        //    rbo.SendRAemail(/*dr.EMAIL_ADDRESS*/"oreyes@jlaudio.com", "RA Request Submitted", customer_message2);


        //    string review_message2 = "";
        //    string review_items2 = "";

        //    RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable review_items_dt2 = rbo.SelectLineItemsByRaSeq(new_ra_seq);

        //    for (int i = 0; i < review_items_dt2.Rows.Count; i++)
        //    {
        //        RADataSet.DP_RA_REQUEST_LINE_ITEMRow review_items_row2 = (RADataSet.DP_RA_REQUEST_LINE_ITEMRow)review_items_dt2[i];

        //        if (review_items_row2.SKU != "NONE")
        //        {
        //            review_items2 = review_items2 + "Sku: " + review_items_row2.SKU;
        //            review_items2 = review_items2 + "<br />";
        //        }
        //        if (review_items_row2.SERIAL_NUMBER != "NONE")
        //        {
        //            review_items2 = review_items2 + "Serial: " + review_items_row2.SERIAL_NUMBER;
        //            review_items2 = review_items2 + "<br />";
        //        }
        //        if (review_items_row2.CONSUMER_PURCHASE_DATE != Convert.ToDateTime("12/31/9999"))
        //        {
        //            review_items2 = review_items2 + "Purchase Date: " + review_items_row2.CONSUMER_PURCHASE_DATE.ToString();
        //            review_items2 = review_items2 + "<br />";
        //        }
        //        review_items2 = review_items2 + "Warranty Expected: " + review_items_row2.WARRANTY_EXPECTED;
        //        review_items2 = review_items2 + "<br />";
        //        review_items2 = review_items2 + "Problem Description: " + review_items_row2.PROBLEM_DESCRIPTION;
        //        review_items2 = review_items2 + "<br />";
        //        if (review_items_row2.CONSUMER_FULL_NAME != "NONE")
        //        {
        //            review_items2 = review_items2 + "Consumer Name: " + review_items_row2.CONSUMER_FULL_NAME;
        //            review_items2 = review_items2 + "<br />";
        //        }
        //        review_items2 = review_items2 + "<br />";
        //    }

        //    review_message2 = "An RA Request has been submitted."
        //    + "<br />"
        //    + "<br />"
        //    + "Summary:"
        //    + "<br />"
        //    + "<br />"
        //    + "Dealer: " + rbo.SelectDealerNameByUserID(rbo.SelectUserIDByRaSeq(new_ra_seq))
        //    + "<br />"
        //    + "Contact: " + dr2.FULL_NAME
        //    + "<br />"
        //    + "Email: " + dr2.EMAIL_ADDRESS
        //    + "<br />"
        //    + "Phone: " + dr2.PHONE
        //    + "<br />"
        //    + "Fax: " + dr2.FAX
        //    + "<br />"
        //    + "Account & Shipping: " + rbo.SelectShipToLocAddrByRaSeq(new_ra_seq)
        //    + "<br />"
        //    + "<br />"
        //    + review_items2
        //    + "<br />"
        //    + "------------------------------------------------------------------<br />"
        //    + "JL Audio";

        //    rbo.SendRAemail(/*"rareview@jlaudio.com"*/"oreyes@jlaudio.com", "New RA Request Submitted"
        //        + " Dealer/Timestamp: " + rbo.SelectDealerNameByUserID(rbo.SelectUserIDByRaSeq(new_ra_seq))
        //        + " " + rbo.SelectRaDate(new_ra_seq).ToString(),
        //        review_message2);
        //}


        if (JLUtils.HasRole("RA_DEALER"))
        {
            Session["SumittedMessage"] = "Thank You, Your RA Request Has Been Successfully Submitted. You will receive an acknowledgment email shortly. Once your request is reviewed, you will receive further email notices regarding your Request’s status. Thank You. If you have any questions, please call our customer service department.";
        }
        else
        {
            Session["SumittedMessage"] = "The Request Has Been Successfully Submitted. If the customer has a dealer account, the customer will receive an acknowledgment email shortly.";
        }

        Response.Redirect("RequestRAFinalized.aspx");
    }


}
