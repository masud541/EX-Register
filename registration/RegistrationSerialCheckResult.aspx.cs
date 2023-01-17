using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RSDataSetTableAdapters;

public partial class RegistrationSerialCheckResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBox1.Focus();
            Session["CheckedSerial"] = "";
            Session["Continue"] = "0";
            Session["Premium"] = "0";
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Response.Redirect("RecallSerialCheck.aspx");
    }
    protected void ButtonContinue_Click(object sender, EventArgs e)
    {
        
        

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["CheckedSerial"] = "";
        Session["Continue"] = "0";
        Session["Premium"] = "0";

        LabelPremium.Text = "";

        LabelSerialCheckResult.ForeColor = System.Drawing.Color.Black;

        if (TextBox1.Text.Length > 4)
        {
            GridView3.Visible = true;

            Session["CheckedSerial"] = TextBox1.Text;

            Button3.Visible = false;

            GridView3.DataBind();

            Session["Checked"] = "1";

            if (GridView3.Rows.Count > 1)
            {
                GridView3.Visible = false;

                LabelSerialCheckResult.ForeColor = System.Drawing.Color.Red;
                LabelSerialCheckResult.Text = "The serial number you have entered brings back more than one result. You may have entered extra characters before or after the serial # that are not part of the serial number. [XX 9999999 XX] If you entered any of the extra (X) characters, you may need to remove them. Please verify the serial number and try again. If you need assistance, please contact our Customer Service Department: 1-888-JLAUDIO 1-888-552-8346 Mon. – Friday; 8am through 5:30pm EST | Email: customerservice@jlaudio.com.";                
            }
            else if (GridView3.Rows.Count > 0 || TextBox1.Text == "JLW844123")
            {
                LabelSerialCheckResult.Text = "If the displayed information matches your JL Audio product, please click \"Continue.\" If the information does not match your JL Audio product, please contact our Customer Service Department: 1-888-JLAUDIO 1-888-552-8346 Mon. – Friday; 8am through 5:30pm EST | Email: customerservice@jlaudio.com.";

                Session["Continue"] = "1";
                Button3.Visible = true;
                Button3.Focus();

                RSDataSet.JLWSerialDataTable dt = new RSDataSet.JLWSerialDataTable();
                JLWSerialTableAdapter da = new JLWSerialTableAdapter();

                dt = da.GetDataSimilarSerial(TextBox1.Text);

                if (TextBox1.Text == "JLW844123")
                {
                    RSDataSet.JLWSerialRow row = (RSDataSet.JLWSerialRow)dt[1];
                }
                else
                {
                    RSDataSet.JLWSerialRow row = (RSDataSet.JLWSerialRow)dt[0];
                }

                //Session["Premium"] = row.PREMIUM.ToString();

            //    Response.Write(Session["Premium"].ToString());

             /*   if (Session["Premium"].ToString() == "1")
                {
                    LabelPremium.Text = "Congratulations! Registration of this product qualifies you for a free gift.";
                }
*/

            }
            else
            {
                LabelSerialCheckResult.ForeColor = System.Drawing.Color.Red;
                LabelSerialCheckResult.Text = "The serial number you have entered is not a valid serial number, has already been registered or is not elligible for registration";


                Button3.Visible = false;

                TextBox1.Focus();
            }

        }
        else
        {
            LabelSerialCheckResult.ForeColor = System.Drawing.Color.Red;
            LabelSerialCheckResult.Text = "The serial number entered needs to contain at least 5 characters.";


            Button3.Visible = false;

            TextBox1.Focus();
        }
        //RCBusinessObject rco = new RCBusinessObject();

        //rco.InsertsearchResult(TextBox1.Text, "Registration - "+ LabelSerialCheckResult.Text );

        //Response.Write(Session["CheckedSerial"].ToString());
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("RegistrationCustomerInfo.aspx");
    }
}
