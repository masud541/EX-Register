using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class RequestRaCS : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            /*TextBoxSerial.Enabled = false;
            TextBoxSerial.BackColor = System.Drawing.Color.Gray;
            RequiredFieldValidatorSerial.Enabled = false;*/
            TextBoxHiddenDate.Text = DateTime.Now.AddDays(1).ToShortDateString();

            DropDownListDealerAndContact.DataBind();

            if (DropDownListDealerAndContact.Items.Count > 0)
            {
                DropDownListDealerAndContact.SelectedIndex = 0;
                DropDownListDealerAndContact_SelectedIndexChanged(sender, e);
            }

            if (JLUtils.HasRole("RA_DEALER"))
            {
                DropDownListDealerAndContact.SelectedValue = Session["USER"].ToString();
                DropDownListDealerAndContact.Enabled = false;
            }
        }

        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LabelErrorMessage.Text = "";

        RABusinessObject rbo = new RABusinessObject();

        int ra_seq = rbo.SelectNextRaSeq();
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
                DropDownListSku.SelectedIndex == 0 )
            {
                throw cat_sub_sku_required;
            }


            rbo.InsertRARequest(ra_seq, DropDownListDealerAndContact.SelectedValue, TextBoxSerial.Text, TextBoxPurchaseDate.Text,
                                DropDownListWarrantyExpected.SelectedValue, TextBoxProblem.Text, TextBoxConsumerFirstName.Text, TextBoxConsumerLastName.Text, Convert.ToInt32(DropDownListAccountAndAddr.SelectedValue),
                                DropDownListCat.SelectedItem.Text, Convert.ToInt32(DropDownListAccountShip.SelectedValue), Convert.ToInt32(DropDownListSku.SelectedValue));

            RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(DropDownListDealerAndContact.SelectedValue)[0];

            rbo.SendRAemail(/*dr.EMAIL_ADDRESS*/"oreyes@jlaudio.com", "RA Request Submitted", "Your RA Request has been submitted."
               + "<br />"
               + "<br />"
               + "Your RA Request will be reviewed. You will be notified by via email if an RA number is assigned or if "
               + "the request is rejected. You can also log in to the RA sytem at any time to check the status. "
               + "<br />"
               + "<br />"
               + "Summary:"
               + "<br />"
               + "<br />"
               + "Model/Sku " + DropDownListSku.SelectedItem.Text
               + "<br />"
               + "Serial: " + TextBoxSerial.Text
               + "<br />"
               + "Problem Description: " + TextBoxProblem.Text
               + "<br />"
               + "<br />"
               + "------------------------------------------------------------------<br />"
               + "JL Audio"
         );




            rbo.SendRAemail("rareview@jlaudio.com", "New RA Request Submitted" + " Model/Sku: " + DropDownListSku.SelectedItem.Text + " Serial: " + TextBoxSerial.Text,
                "An RA Request has been submitted."
               + "<br />"
               + "<br />"
               + "Summary:"
               + "<br />"
               + "<br />"
               + "Dealer: " + rbo.SelectDealerNameByUserID(DropDownListDealerAndContact.SelectedValue)
               + "<br />"
               + "Contact: " + dr.FULL_NAME
               + "<br />"
               + "Email: " + dr.EMAIL_ADDRESS
               + "<br />"
               + "Phone: " + dr.PHONE
               + "<br />"
               + "Fax: " + dr.FAX
               + "<br />"
               + "Account & Shipping: " + DropDownListAccountAndAddr.SelectedItem.Text
               + "<br />"
               + "Model/Sku: " + DropDownListSku.SelectedItem.Text
               + "<br />"
               + "Serial: " + TextBoxSerial.Text
               + "<br />"
               + "Purchase Date: " + TextBoxPurchaseDate.Text
               + "<br />"
               + "Warranty Expected: " + DropDownListWarrantyExpected.SelectedValue
               + "<br />"
               + "Problem Description: " + TextBoxProblem.Text
               + "<br />"
               + "Consumer Name: " + TextBoxConsumerFirstName.Text
               + "<br />"
               + "<br />"
               + "------------------------------------------------------------------<br />"
               + "JL Audio"
         );


        

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


            rbo.InsertRAStatus(ra_seq, "Request Under Review, RA# not yet assigned.", "");




            GridView1.DataBind();

            if (DropDownListCat.SelectedItem.Text == "Amplifiers")
            {


                const string someScript = "alertMe";
                if (!ClientScript.IsStartupScriptRegistered(this.GetType(), someScript))
                {
                    ClientScript.RegisterStartupScript(this.GetType(),
                        someScript, "alert('Reminder - AMPLIFIERS MUST BE SENT TO: JL Audio, Inc. 3343 East Wier Avenue, Phoenix, AZ 85049.')", true);
                }
            }

            if (JLUtils.HasRole("RA_DEALER"))
            {
                Session["SumittedMessage"] = "Thank You, Your RA Request Has Been Successfully Submitted. You will receive an acknowledgment email shortly. Once your request is reviewed, you will receive further email notices regarding your Request’s status. Thank You. If you have any questions, please call our customer service department.";
            }
            else
            {
                Session["SumittedMessage"] = "The Request Has Been Successfully Submitted. The customer will receive an acknowledgment email shortly.";
            }

            Response.Redirect("RequestSubmitted.aspx");

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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("RAStatusCS.aspx?ra=" + GridView1.SelectedValue);
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
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
    protected void DropDownListSub_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownListSubCat_SelectedIndexChanged(object sender, EventArgs e)
    {

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
}
