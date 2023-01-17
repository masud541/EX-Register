using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationDescribeProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBox1.Focus();
            Session["CheckedSerial"] = "";
            Session["Continue"] = "0";
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
        
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Session["CheckedSerial"] = "";
        Session["Continue"] = "0";
        Session["Premium"] = "0";

        LabelSerialCheckResult.Text = "";

        if (TextBox1.Text.Length > 0)
        {

            Session["CheckedSerial"] = "Description: "+TextBox1.Text;

            Button3.Visible = false;

            GridView3.DataBind();

            Session["Checked"] = "1";
            Session["Continue"] = "1";
        
            Response.Redirect("RegistrationCustomerInfo.aspx");

        }
        else
        {
            LabelSerialCheckResult.Text = "Please enter a description.";


            TextBox1.Focus();
        }
        
        
    }
}
