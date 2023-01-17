using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationCustomerInfo : System.Web.UI.Page
{
    int rc_seq;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Session["Premium"].ToString());

        if (!IsPostBack)
        {
            if (Session["Continue"] == "1" || Session["Edit"] != null)
            {
                Session["Continue"] = null;
                


            }
            else
            {
                Response.Redirect("RegistrationSerialCheckResult.aspx");
            }
        }
        if (Session["CheckedSerial"] != null )
        {
            
        }
        else
        {
            Response.Redirect("RegistrationStart.aspx");
        }

        if (!IsPostBack && Session["last_name"] != null)
        {
            TextBoxLastName.Text = Session["last_name"].ToString(); 
            TextBoxFirstName.Text = Session["first_name"].ToString();
            
            TextBoxPhone.Text = Session["phone"].ToString();
            TextBoxEmail.Text = Session["email"].ToString();
            TextBoxEmailConfirm.Text = Session["email"].ToString();
            
            
            DropDownListCountry.SelectedValue = Session["country"].ToString();
            TextBoxAddress.Text = Session["address"].ToString();
            TextBoxCity.Text = Session["city"].ToString();
            TextBoxCustomerState.Text = Session["state"].ToString();
            TextBoxZip.Text = Session["zip"].ToString();

            TextBoxDealerName.Text = Session["dealer_name"].ToString();
            DropDownListDealerCountry.SelectedValue = Session["dealer_country"].ToString();  
            TextBoxPurchaseDate.Text = Session["purchase_date"].ToString();  
            RadioButtonListOnline.SelectedValue = Session["purchase_type"].ToString();  
            TextBoxDealerCity.Text = Session["dealer_city"].ToString();  
            TextBoxDealerState.Text = Session["dealer_state"].ToString();  


            RadioButtonListInstallation.SelectedValue = Session["installation"].ToString();  

            DropDownListShirtSize.SelectedValue = Session["size"].ToString();

            CheckBoxListProductType.Items[0].Selected = Convert.ToBoolean(Session["Mobile"]);
            CheckBoxListProductType.Items[1].Selected = Convert.ToBoolean(Session["Home"]);
            CheckBoxListProductType.Items[2].Selected = Convert.ToBoolean(Session["Marine"]);
            CheckBoxListProductType.Items[3].Selected = Convert.ToBoolean(Session["Power"]);

            
            bool selected = false;

            if (Session["opt"].ToString() == "Y")
            {
                selected = true;
            }

            CheckBoxListOptIn.Items[0].Selected = selected;

            this.RadioButtonListOnline_SelectedIndexChanged(sender, e);
        }

        if (Session["Premium"].ToString() == "1")
        {
         /*   LabelFreeGift.Visible = true;
            LabelFreeGiftText.Visible = true;
            LabelPremiumMessage.Text = "Congratulations! Registration of this product qualifies you for a free gift.";*/
        }
        else
        {
            /*LabelFreeGift.Visible = false;
            LabelFreeGiftText.Visible = false;
            LabelPremiumMessage.Text = "";*/
        }

        //Response.Write(Session["CheckedSerial"].ToString());

    }
    protected void DropDownListCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListCountry.SelectedValue != "US")
        {
            //Response.Redirect("RecallInternational.aspx");
        }
    }
    protected void ButtonContinue_Click(object sender, EventArgs e)
    {
        LabelError.Text = "";



        

        if (CheckBoxListOptIn.SelectedIndex > -1)
        {
            if (CheckBoxListOptIn.SelectedItem.Selected &&
                CheckBoxListProductType.Items[0].Selected == false &&
                CheckBoxListProductType.Items[1].Selected == false &&
                CheckBoxListProductType.Items[2].Selected == false &&
                CheckBoxListProductType.Items[3].Selected == false
                )
            {
                
                LabelError.Text = "Please select at least one product type";
            }
            if (TextBoxLastName.Text == "" ||
                TextBoxFirstName.Text == "" ||
                TextBoxEmail.Text == "" ||
                TextBoxEmailConfirm.Text == "" ||
                TextBoxPhone.Text == "" 
                )
            {
                LabelError.Text = "All customer information fields are required";
            }
            else
            {
                Session["Mobile"] = CheckBoxListProductType.Items[0].Selected;
                Session["Home"] = CheckBoxListProductType.Items[1].Selected;
                Session["Marine"] = CheckBoxListProductType.Items[2].Selected;
                Session["Power"] = CheckBoxListProductType.Items[3].Selected;

                this.proceed();
            }
            
        }
        else
        {
            this.proceed();
        }
        
        
    }
    protected void CheckBoxListOptIn_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButtonListOnline_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonListOnline.SelectedValue == "Y")
        {

            TextBoxDealerCity.Text = "";
            TextBoxDealerState.Text = "";


            DropDownListDealerCountry.Enabled = false;
            TextBoxDealerCity.Enabled = false;
            TextBoxDealerState.Enabled = false;

            RequiredFieldValidatorDealerCity.Enabled = false;
            RequiredFieldValidatorDealerState.Enabled = false;

        }
        else
        {
            DropDownListDealerCountry.Enabled = true;
            TextBoxDealerCity.Enabled = true;
            TextBoxDealerState.Enabled = true;

            RequiredFieldValidatorDealerCity.Enabled = true;
            RequiredFieldValidatorDealerState.Enabled = true;
        }

        CompareValidator2.Validate();

        RadioButtonListOnline.Focus();
    }
    protected void DropDownListDealerCountry_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void proceed()
    {
        string opt_in = "N";

        if (CheckBoxListOptIn.SelectedIndex > -1)
        {
            if (CheckBoxListOptIn.SelectedItem.Selected)
            {
                opt_in = "Y";
            }
        }

        Session["last_name"] = TextBoxLastName.Text;
        Session["first_name"] = TextBoxFirstName.Text;
        Session["phone"] = "";
        Session["phone"] = TextBoxPhone.Text;
        Session["email"] = TextBoxEmail.Text;

        Session["country"] = DropDownListCountry.SelectedValue;
        Session["address"] = TextBoxAddress.Text;
        Session["city"] = TextBoxCity.Text;
        Session["state"] = TextBoxCustomerState.Text;
        Session["zip"] = TextBoxZip.Text;

        Session["dealer_name"] = TextBoxDealerName.Text;
        Session["dealer_country"] = DropDownListDealerCountry.SelectedValue;
        Session["purchase_date"] = TextBoxPurchaseDate.Text;
        Session["purchase_type"] = RadioButtonListOnline.SelectedValue;
        Session["dealer_city"] = "";
        Session["dealer_state"] = "";
        Session["dealer_city"] = TextBoxDealerCity.Text;
        Session["dealer_state"] = TextBoxDealerState.Text;


        Session["opt"] = opt_in;

        Session["installation"] = RadioButtonListInstallation.SelectedValue;

        Session["size"] = DropDownListShirtSize.SelectedValue;



        Response.Redirect("RegistrationCustomerInfoConfirm.aspx");
    }
    protected void GridView2_DataBound(object sender, EventArgs e)
    {
       /* if (GridView2.Rows.Count == 0)
        {
            LabelSerial.Text = Session["CheckedSerial"].ToString();
        }
        else
        {
            LabelSerial.Text = "";
        }*/
    }
    protected void CheckBoxListOptIn_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (CheckBoxListOptIn.SelectedItem.Selected == false)
        {
            for (int i = 0; i < CheckBoxListProductType.Items.Count; i++)
            {
                CheckBoxListProductType.Items[i].Selected = false;
            }
        }
    }
    protected void CheckBoxListOptIn_SelectedIndexChanged2(object sender, EventArgs e)
    {
        bool opt_in = false;

        for (int i = 0; i< CheckBoxListOptIn.Items.Count; i++)
        {
            opt_in = CheckBoxListOptIn.Items[i].Selected;
        }

        if (opt_in == true)
        {
            for (int i = 0; i < CheckBoxListProductType.Items.Count; i++)
            {
                CheckBoxListProductType.Items[i].Selected = true;
            }
        }
        else
        {
            for (int i = 0; i < CheckBoxListProductType.Items.Count; i++)
            {
                CheckBoxListProductType.Items[i].Selected = false;
            }
        }
    }
}
