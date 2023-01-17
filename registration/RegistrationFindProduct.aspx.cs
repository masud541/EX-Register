using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationFindProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //TextBox1.Focus();
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
        //Session["CheckedSerial"] = TextBox1.Text;

         Button3.Visible = false;

         GridView3.DataBind();
        
        Session["Checked"] = "1";

        if (GridView3.Rows.Count > 0)
        {
            LabelSerialCheckResult.Text = "The serial number you have entered is a valid serial number.";

            Session["Continue"] = "1";
            Button3.Visible = true;
            Button3.Focus();
        }
        else
        {
            LabelSerialCheckResult.Text = "The serial number you have entered is not a valid serial number or has already been registered.";

            
            Button3.Visible = false;

          //  TextBox1.Focus();
        }

        //RCBusinessObject rco = new RCBusinessObject();

        //rco.InsertsearchResult(TextBox1.Text, "Registration - "+ LabelSerialCheckResult.Text );
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Session["CheckedSerial"] = "";
        Session["Continue"] = "0";

        RSBusinessObject rbo = new RSBusinessObject();



        
        LabelSerialCheckResult.Text = "";

        if (DropDownListSku1.SelectedIndex > 0)
        {

            Session["CheckedSerial"] = "Sku: "+DropDownListSku1.SelectedValue;

            Button3.Visible = false;

            GridView3.DataBind();

            Session["Checked"] = "1";
            Session["Continue"] = "1";

            if (rbo.SelectCountPremiumSku(DropDownListSku1.SelectedValue) == 1)
            {
                Session["Premium"] = "1";
            }
            else
            {
                Session["Premium"] = "0";
            }
            Response.Redirect("RegistrationCustomerInfo.aspx");

        }
        else
        {
            LabelSerialCheckResult.Text = "Please select a Sku.";


            
        }
    }
    protected void DropDownListCat1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        DropDownListSubCat1.DataBind();
        DropDownListSku1.DataBind();
    }
    protected void DropDownListSubCat1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        DropDownListSku1.DataBind();

    }
    protected void DropDownListSku1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void DropDownListCat1_DataBound(object sender, EventArgs e)
    {
        if (DropDownListCat1.Items.Count > 1)
        {
            DropDownListCat1.Visible = true;
        }
        else
        {
            DropDownListCat1.Visible = false;
        }
    }
    protected void DropDownListSubCat1_DataBound(object sender, EventArgs e)
    {
        if (DropDownListSubCat1.Items.Count > 1)
        {
            DropDownListSubCat1.Visible = true;
        }
        else
        {
            DropDownListSubCat1.Visible = false;
        }
    }
    protected void DropDownListCat2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownListCat1.DataBind();
        DropDownListSubCat1.DataBind();
        DropDownListSku1.DataBind();
    }
    protected void DropDownListSku1_DataBound(object sender, EventArgs e)
    {
        if (DropDownListSku1.Items.Count > 1)
        {
            DropDownListSku1.Visible = true;
        }
        else
        {
            DropDownListSku1.Visible = false;
        }
    }
    protected void DropDownListSku1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        LabelSerialCheckResult.Text = "";
        
        if (DropDownListSku1.SelectedIndex > 0)
        {
           
            Button3.Visible = true;
        }
        else
        {
            LabelSerialCheckResult.Text = "";
            Button3.Visible = false;
        }
    }
}
