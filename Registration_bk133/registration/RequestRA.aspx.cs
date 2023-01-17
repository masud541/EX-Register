using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class RequestRA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            /*TextBoxSerial.Enabled = false;
            TextBoxSerial.BackColor = System.Drawing.Color.Gray;
            RequiredFieldValidatorSerial.Enabled = false;*/
            TextBoxHiddenDate.Text = DateTime.Now.AddDays(1).ToShortDateString();
        }

        RABusinessObject rbo = new RABusinessObject();

        RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(Session["USER"].ToString())[0];

        LabelContact.Text = dr.FULL_NAME;
        LabelEmail.Text = dr.EMAIL_ADDRESS;
        LabelPhone.Text = dr.PHONE;
        LabelFax.Text = dr.FAX;

        LabelDealer.Text = rbo.SelectDealerNameByUserID(Session["USER"].ToString());

        
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LabelErrorMessage.Text = "";

        RABusinessObject rbo = new RABusinessObject();

        int ra_seq = rbo.SelectNextRaSeq();
        int serial_cnt = rbo.SelectCountSerial(TextBoxSerial.Text);

        

     

        Exception ra_request_already_exists = new Exception("A recent RA Request already exists for this item. ");
        Exception invalid_serial = new Exception("The serial # provided "+TextBoxSerial.Text+" does not correspond to any Model # or Category. Please verify that the serial number entered is correct and resubmit.<BR/><BR/>If you believe this is an error or have any questions, please contact our customer service department at (954) 443-1100.");

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





            if ((serial_cnt != 1) && (TextBoxSerial.Text != "") && (DropDownListCat.SelectedItem.Text == "Amplifiers"
                                                                    || DropDownListCat.SelectedItem.Text == "Subwoofers"))
            {
                throw invalid_serial;
            }



            rbo.InsertRARequest(ra_seq, Session["USER"].ToString(), TextBoxSerial.Text, TextBoxPurchaseDate.Text,
                                DropDownListWarrantyExpected.SelectedValue, TextBoxProblem.Text, TextBoxConsumerFirstName.Text, TextBoxConsumerLastName.Text, Convert.ToInt32(DropDownListAccountAndAddr.SelectedValue),
                                DropDownListCat.SelectedItem.Text, Convert.ToInt32(DropDownListAccountShip.SelectedValue), Convert.ToInt32(DropDownListSku.SelectedValue));


            rbo.SendRAemail("oreyes@jlaudio.com", "RA Request Submitted", "Your RA Request has been submitted."
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

            RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(Session["USER"].ToString())[0];


            rbo.SendRAemail("oreyes@jlaudio.com", "New RA Request Submitted" + " Model/Sku: " + DropDownListSku.SelectedItem.Text + " Serial: " + TextBoxSerial.Text,
                "An RA Request has been submitted."
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


       /*     int count_is_amp = rbo.SelectCountIsAmpBySerial(TextBoxSerial.Text);

            if (count_is_amp == 1)
            {
                rbo.UpdateAmpFlag("Y", ra_seq);
            }*/

           
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
        Response.Redirect("RAStatus.aspx?ra="+GridView1.SelectedValue);
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       /* if (RadioButtonList1.SelectedValue == "SUB" || RadioButtonList1.SelectedValue == "AMP")
        {
            TextBoxModel.Enabled = false;
            DropDownListCat.Enabled = true;
        }
        else
        {
            TextBoxSerial.Text = "";
            TextBoxSerial.Enabled = false;
            RequiredFieldValidatorSerial.Enabled = false;
            TextBoxSerial.BackColor = System.Drawing.Color.Gray;
        }*/

      /*  if (RadioButtonList1.SelectedValue == "AMP")
        {
            //ClientScript.RegisterStartupScript(this.GetType(),
              //     someScript, "alert('AMPLIFIERS MUST BE SENT TO: JL Audio, Inc. 3343 East Wier Avenue, Phoenix, AZ 85049.')", true);

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

            //  const string someScript = "alertMe";
             // if (!ClientScript.IsStartupScriptRegistered(this.GetType(), someScript))
             // {
                 // ClientScript.RegisterStartupScript(this.GetType(),
               //       someScript, "alert('AMPLIFIERS MUST BE SENT TO: JL Audio, Inc. 3343 East Wier Avenue, Phoenix, AZ 85049.')", true);
      
             // }
             //
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
        
        */

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // DataControlRowType.DataRow

            DataRowView req_reow = (DataRowView)e.Row.DataItem;
            //  Response.Write("0"+e.Row.Cells[2].Text);

            // e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;

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
        if ( DropDownListCat.SelectedItem.Text == "Amplifiers")
        {
            /*ClientScript.RegisterStartupScript(this.GetType(),
                   someScript, "alert('AMPLIFIERS MUST BE SENT TO: JL Audio, Inc. 3343 East Wier Avenue, Phoenix, AZ 85049.')", true);*/

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

            /*  const string someScript = "alertMe";
              if (!ClientScript.IsStartupScriptRegistered(this.GetType(), someScript))
              {
                  ClientScript.RegisterStartupScript(this.GetType(),
                      someScript, "alert('AMPLIFIERS MUST BE SENT TO: JL Audio, Inc. 3343 East Wier Avenue, Phoenix, AZ 85049.')", true);
      
              }
             * */
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
    protected void DropDownListAccountAndAddr_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
