using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecallStatusUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UpdateUser"] != null)
        {
            if (!IsPostBack)
            {
                if (Session["UpdateUser"].ToString() == "jla")
                {
                    DropDownList1.Items.RemoveAt(1);
                    DropDownList1.Items.RemoveAt(2);
                }
            }
        }
        else
        {
            Response.Redirect("RecallUpdateLogin.aspx");
        }

       

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label8.Visible = false;
        Label9.Visible = false;

        Button4.Enabled = false;
        DropDownList1.Enabled = false;
        TextBoxComments.Enabled = false;
        HyperLink2.Enabled = false;
        HyperLink3.Enabled = false;
        HyperLink4.Enabled = false;
        HyperLink5.Enabled = false;

        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
       
        if (GridView1.Rows.Count > 0)
        {
            GridView1.SelectedIndex = 0;
            GridView1_SelectedIndexChanged(sender, e);
        }


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

      

        GridView2.DataBind();
        if (GridView2.Rows.Count > 0)
        {
            GridView2.SelectedIndex = 0;


            if (GridView3.Rows.Count > 0)
            {
                GridView3.Rows[0].Cells[2].BackColor = System.Drawing.Color.Aqua;
            }
            GridView2_SelectedIndexChanged(sender, e);
        }
        
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        HyperLink2.Enabled = false;
        HyperLink3.Enabled = false;
        HyperLink4.Enabled = false;
        HyperLink5.Enabled = false;

        RCBusinessObject rco = new RCBusinessObject();

        LabelInsertError.Text = "";

        if (DropDownList1.SelectedIndex != 0)
        {
            string  tracking = "";
            string shipped_header = "";
            string shipped_thank_you = "";

            if (DropDownList1.SelectedValue == "SHIPPED")
            {
                shipped_header = "We’ve completed the service and repair to your Amplifier and are shipping it back to you." +
                                       "<BR/>" +
                                       "<BR/>";

                tracking = " -- Tracking # " + GridView1.SelectedRow.Cells[16].Text.Replace("&nbsp;","");

                shipped_thank_you = "<p>" +
                                    "Thank You. If you have any questions or problems, please feel free to email us " +
                                    "at <a href='mailto:jlaudiorecall@jlaudio.com' " +
                                    "title='blocked::mailto:jlaudiorecall@jlaudio.com'>jlaudiorecall@jlaudio.com</a> " +
                                    ".</p>" +
                                    "<BR/>" +
                                    "<BR/>";


            }

            rco.InsertRCItemStatus(Convert.ToInt32(GridView2.SelectedValue), DropDownList1.SelectedValue, TextBoxComments.Text + tracking);
            
            TextBoxComments.Text = "";
            GridView3.DataBind();
            GridView3.Rows[0].Cells[2].BackColor = System.Drawing.Color.Aqua;

            if (DropDownList1.SelectedValue == "RECEIVED" || DropDownList1.SelectedValue == "SHIPPED")
            {
                GridView1.DataBind();

                GridView1.SelectedIndex = 0;

                string to_email = rco.SelectEmailByRC(Convert.ToInt32(GridView1.SelectedValue));

                string received_message = "";
                if (DropDownList1.SelectedValue == "RECEIVED")
                {
                    received_message = "We will do our best to expedite service and return. Please allow 3 business days for us to service and repair the problem. You will receive an email update as we prepare to ship your Amplifier back." +
                                       "<BR/>" +
                                       "<BR/>";
                }
                else if (DropDownList1.SelectedValue == "SHIPPED")
                {
                    received_message = "Your UPS Tracking # is: " + GridView1.SelectedRow.Cells[16].Text.Replace("&nbsp;", "") +
                                       "<BR/>" +
                                       "<BR/>";
                }

                RABusinessObject rbo = new RABusinessObject();
                rbo.SendRCemail(//GridView1.SelectedRow.Cells[6].Text,
                                to_email,
                                GridView2.SelectedRow.Cells[1].Text +
                                GridView1.SelectedRow.Cells[0].Text + " Update: Item(" +
                                GridView2.SelectedRow.Cells[1].Text + ")" +
                                " has been " +
                                DropDownList1.SelectedValue,

                                shipped_header +
                                
                                "Recall Update: Amplifier " + GridView2.SelectedRow.Cells[1].Text + " has been " +
                                DropDownList1.SelectedValue +
                                
                                


            "<style type='text/css'>" +

" p.MsoNormal" +
"	{margin:0in;" +
"	margin-bottom:.0001pt;" +
"	font-size:11.0pt;" +
"	font-family:'Calibri','sans-serif';}" +
"a:link" +
"	{color:blue;" +
"	text-decoration:underline;" +
 "       }" +
 "   </style>" +
 ".<o:p></o:p></span></p>" +


 received_message +

 shipped_thank_you +

  "  <p class='MsoNormal' style='TEXT-ALIGN: justify'>" +
  "      <span style='FONT-FAMILY: 'Helvetica','sans-serif'; FONT-SIZE: 7pt'>Please add" +
 "       <a href='mailto:recall@jlaudio.com' title='mailto:recall@jlaudio.com'>" +
  "      recall@jlaudio.com</a> to your acceptable email addresses list to ensure any " +
  "      communications from us do not get labeled as Spam. For more JL Audio Recall " +
 "       information, please go to <a href='http://www.jlaudiorecall.com' " +
"            title='http://www.jlaudiorecall.com/'>www.jlaudiorecall.com</a> or " +
     "   call 1-888-JLAUDIO (552-8346).</span><span style='FONT-SIZE: 7pt'><o:p></o:p></span></p>" +
    "<p class='MsoNormal' style='TEXT-ALIGN: justify'>" +
     "   <o:p>&nbsp;</o:p></p>" +
    "<form id='form1' runat='server'>"

            );

                rbo.SendRCemail(//GridView1.SelectedRow.Cells[6].Text,
                    "recallconfirmations@jlaudio.com",
                                GridView2.SelectedRow.Cells[1].Text +
                                GridView1.SelectedRow.Cells[0].Text + " Update: Item(" +
                                GridView2.SelectedRow.Cells[1].Text + ")" +
                                " has been " +
                                DropDownList1.SelectedValue,
                                
                                shipped_header +
                                
                                "Recall Update: Amplifier " + GridView2.SelectedRow.Cells[1].Text + " has been " +
                                DropDownList1.SelectedValue +
                                
                                

            "<style type='text/css'>" +

" p.MsoNormal" +
"	{margin:0in;" +
"	margin-bottom:.0001pt;" +
"	font-size:11.0pt;" +
"	font-family:'Calibri','sans-serif';}" +
"a:link" +
"	{color:blue;" +
"	text-decoration:underline;" +
 "       }" +
 "   </style>" +
 ".<o:p></o:p></span></p>" +

 received_message +

 shipped_thank_you +

  "  <p class='MsoNormal' style='TEXT-ALIGN: justify'>" +
  "      <span style='FONT-FAMILY: 'Helvetica','sans-serif'; FONT-SIZE: 7pt'>Please add" +
 "       <a href='mailto:recall@jlaudio.com' title='mailto:recall@jlaudio.com'>" +
  "      recall@jlaudio.com</a> to your acceptable email addresses list to ensure any " +
  "      communications from us do not get labeled as Spam. For more JL Audio Recall " +
 "       information, please go to <a href='http://www.jlaudiorecall.com' " +
"            title='http://www.jlaudiorecall.com/'>www.jlaudiorecall.com</a> or " +
     "   call 1-888-JLAUDIO (552-8346).</span><span style='FONT-SIZE: 7pt'><o:p></o:p></span></p>" +
    "<p class='MsoNormal' style='TEXT-ALIGN: justify'>" +
     "   <o:p>&nbsp;</o:p></p>" +
    "<form id='form1' runat='server'>"

            );


                if (DropDownList1.SelectedValue == "SHIPPED" ||
                    DropDownList1.SelectedValue == "Closed")
                {
                   

                    RCDataSet.RC_RECALLDataTable dt = rco.SelectRCBySeq(Convert.ToInt32(GridView1.SelectedValue));

                    RCDataSet.RC_RECALLRow rc_row = (RCDataSet.RC_RECALLRow)dt[0];

                    string name = rc_row.FIRST_NAME + " " + rc_row.LAST_NAME;
                    string address = rc_row.TO_ADDRESS;
                    string city_st_zip = rc_row.TO_CITY + ", " + rc_row.TO_STATE + ", " + rc_row.TO_ZIP;
                    string model_sn = rco.SelectModelSerial(GridView2.SelectedRow.Cells[1].Text);

                    HyperLink2.NavigateUrl = "RecallRepairLetter.aspx?" +
                            "full_name=" + name +
                            "&address=" + address +
                            "&city_st_zip=" + city_st_zip +
                            "&model_sn=" + model_sn;

                    HyperLink2.Enabled = true;

                    HyperLink3.NavigateUrl = "RecallRepairLetterWRD.aspx?" +
                            "full_name=" + name +
                            "&address=" + address +
                            "&city_st_zip=" + city_st_zip +
                            "&model_sn=" + model_sn;

                    HyperLink3.Enabled = true;

                    HyperLink4.NavigateUrl = "RecallRepairLetterTXT.aspx?" +
                            "full_name=" + name +
                            "&address=" + address +
                            "&city_st_zip=" + city_st_zip +
                            "&model_sn=" + model_sn;

                    HyperLink4.Enabled = true;

                    HyperLink5.NavigateUrl = "RecallRepairLetterHTML.aspx?" +
                            "full_name=" + name +
                            "&address=" + address +
                            "&city_st_zip=" + city_st_zip +
                            "&model_sn=" + model_sn;

                    HyperLink5.Enabled = true;

                }
                                
            }

            DropDownList1.SelectedIndex = 0;
        }
        else
        {
            LabelInsertError.Text = "Status Required";
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView3.DataBind();

        if (GridView3.Rows.Count > 0)
        {
            GridView3.Rows[0].Cells[2].BackColor = System.Drawing.Color.Aqua;

            if (GridView3.Rows[0].Cells[2].Text == "SHIPPED" ||
                GridView3.Rows[0].Cells[2].Text == "Closed")
            {
                HyperLink2.Enabled = true;
                HyperLink3.Enabled = true;
                HyperLink4.Enabled = true;
                HyperLink5.Enabled = true;

                RCBusinessObject rco = new RCBusinessObject();

                RCDataSet.RC_RECALLDataTable dt = rco.SelectRCBySeq(Convert.ToInt32(GridView1.SelectedValue));

                RCDataSet.RC_RECALLRow rc_row = (RCDataSet.RC_RECALLRow)dt[0];            
               
                string name = rc_row.FIRST_NAME+" "+rc_row.LAST_NAME;
                string address = rc_row.TO_ADDRESS;
                string city_st_zip = rc_row.TO_CITY+", "+rc_row.TO_STATE+", "+rc_row.TO_ZIP;
                string model_sn = rco.SelectModelSerial(GridView2.SelectedRow.Cells[1].Text);

                HyperLink2.NavigateUrl = "RecallRepairLetter.aspx?"+
                        "full_name="+name+
                        "&address="+address+
                        "&city_st_zip="+city_st_zip+
                        "&model_sn=" + model_sn +
                        "&rc=" +  GridView1.SelectedValue;

                HyperLink3.NavigateUrl = "RecallRepairLetterWRD.aspx?" +
                        "full_name=" + name +
                        "&address=" + address +
                        "&city_st_zip=" + city_st_zip +
                        "&model_sn=" + model_sn +
                        "&rc=" + GridView1.SelectedValue;

                HyperLink4.NavigateUrl = "RecallRepairLetterTXT.aspx?" +
                        "full_name=" + name +
                        "&address=" + address +
                        "&city_st_zip=" + city_st_zip +
                        "&model_sn=" + model_sn +
                        "&rc=" + GridView1.SelectedValue;

                HyperLink5.NavigateUrl = "RecallRepairLetterHTML.aspx?" +
                        "full_name=" + name +
                        "&address=" + address +
                        "&city_st_zip=" + city_st_zip +
                        "&model_sn=" + model_sn +
                        "&rc=" + GridView1.SelectedValue;
            }
            else
            {
                HyperLink2.Enabled = false;
                HyperLink3.Enabled = false;
                HyperLink4.Enabled = false;
                HyperLink5.Enabled = false;
            }
        
        }

       


//            GridView2.SelectedRow.Cells[1].Font.Bold = true;
          //  GridView2.SelectedRow.Cells[1].Font.Size = 14;
        

        
    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (GridView2.Rows.Count > 0)
        {
            Button4.Enabled = true;
            DropDownList1.Enabled = true;
            TextBoxComments.Enabled = true;
            Label8.Visible = true;


           
        }
        else
        {
            Button4.Enabled = false;
            DropDownList1.Enabled = false;
            TextBoxComments.Enabled = false;
        }
    }
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (GridView3.Rows.Count > 0)
        {
            Label9.Visible = true;
        }
    }
}
