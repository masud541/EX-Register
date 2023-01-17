using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class RequestSubmitted : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        

      /*  if (Session["SumittedMessage"] != null)
        {
           // LabelSumittedMessage.Text = Session["SumittedMessage"].ToString();

            Session["SumittedMessage"] = null;

        }
        else
        {
            Response.Redirect("Main.aspx");
        }*/

        RABusinessObject rbo = new RABusinessObject();

        if (Request.QueryString["rs"] != null)
        {


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

        if (
            (rbo.SelectCountItemsByRaSeqAndStatus(Convert.ToInt32(Request.QueryString["rs"]), "S") > 0)
                    )
        {

        }
        else
        {
            Response.Redirect("Main.aspx");
        }


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestRAD.aspx?rs=" + Request.QueryString["rs"].ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
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
            review_message );

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
