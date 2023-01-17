using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Globalization;
using System.Text.RegularExpressions;

using System.Net;
using System.Text;
using System.IO;


using System.Data.OracleClient;

using System.Data;


public partial class Default : System.Web.UI.Page
{

    JLUtilsBusinessObject JLUtilsBO = new JLUtilsBusinessObject();
    RABusinessObject rbo = new RABusinessObject();

    string v_rep_to_run;
    string v_url;
    string v_pdfname;
    string v_customer_id;



    string product_list = "";
    string purchase_date_list = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("http://c7.jlaudio.com");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Write(TextBoxFirstName.Text);
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListQty.SelectedValue == "0")
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = false;
        }
        else if (DropDownListQty.SelectedValue == "1")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "2")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "3")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "4")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "5")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "6")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "7")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "8")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = false;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "9")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = true;
            Panel10.Visible = false;
            Panel11.Visible = true;
        }
        else if (DropDownListQty.SelectedValue == "10")
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = true;
            Panel10.Visible = true;
            Panel11.Visible = true;
        }


    }

    protected void RadioButtonListOnline_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonListOnline.SelectedValue == "Y")
        {
            Panel12.Visible = true;
            Panel13.Visible = false;
        }
        else
        {
            Panel12.Visible = false;
            Panel13.Visible = true;
        }
    }

    protected void Button1_Click1(object sender, ImageClickEventArgs e)
    {
        RSBusinessObject rsbo = new RSBusinessObject();

        rsbo.DeleteRegistrations1234TEST();

        /*Required: 
            First Name
         * Last Name
         * Address 1
         * City
         * Country
         * email
         *          valid email
         *          email and confirm must match
         *model x - if visible
         *serial x - if visible
         *date x - if visible
         *
         * Purchase Type
         * Name of Seller
         * 
         * store city - if visible
         * store state - if visible
         * store country - if visible
         *
         * market place - if visible
         * 
         * */


        LabelError.Text = "";


        if (TextBoxFirstName.Text == "" || TextBoxFirstName.Text == "First Name")
        {
            LabelError.Text = "First Name is required";
        }
        else if (TextBoxLastName.Text == "" || TextBoxLastName.Text == "Last Name")
        {
            LabelError.Text = "Last Name is required";
        }
        else if (TextBoxAddress.Text == "" || TextBoxAddress.Text == "Street Address")
        {
            LabelError.Text = "Address is required";
        }
        else if (TextBoxAddressCity.Text == "" || TextBoxAddressCity.Text == "City")
        {
            LabelError.Text = "City is required";
        }
        else if (DropDownListCountry.SelectedIndex == 0)
        {
            LabelError.Text = "Country is required";
        }
        else if (TextBoxEmail.Text == "" || TextBoxEmail.Text == "Email")
        {
            LabelError.Text = "Email is required";
        }
        else if (TextBoxEmailConfirm.Text == "" || TextBoxEmailConfirm.Text == "Confirm Email")
        {
            LabelError.Text = "Confirm Email is required";
        }
        else if (DropDownListQty.SelectedIndex == 0)
        {
            LabelError.Text = "Quantity must be selected";
        }


        else if (DropDownListModel1.SelectedIndex == 0 && Panel1.Visible == true)
        {
            LabelError.Text = "Model 1 must be selected";
        }
        else if ((TextBoxSerial1.Text == "" || TextBoxSerial1.Text == "Serial Number") && Panel1.Visible == true)
        {
            LabelError.Text = "Serial 1 is required";
        }
        else if (TextBoxPurchaseDate1.Text == "" && Panel1.Visible == true)
        {
            LabelError.Text = "Purchase Date 1 is required";
        }
        else if (DropDownListModel2.SelectedIndex == 0 && Panel2.Visible == true)
        {
            LabelError.Text = "Model 2 must be selected";
        }
        else if ((TextBoxSerial2.Text == "" || TextBoxSerial2.Text == "Serial Number") && Panel2.Visible == true)
        {
            LabelError.Text = "Serial 2 is required";
        }
        else if (TextBoxPurchaseDate2.Text == "" && Panel2.Visible == true)
        {
            LabelError.Text = "Purchase Date 2 is required";
        }

        else if (DropDownListModel3.SelectedIndex == 0 && Panel3.Visible == true)
        {
            LabelError.Text = "Model 3 must be selected";
        }
        else if ((TextBoxSerial3.Text == "" || TextBoxSerial3.Text == "Serial Number") && Panel3.Visible == true)
        {
            LabelError.Text = "Serial 3 is required";
        }
        else if (TextBoxPurchaseDate3.Text == "" && Panel3.Visible == true)
        {
            LabelError.Text = "Purchase Date 3 is required";
        }

        else if (DropDownListModel4.SelectedIndex == 0 && Panel4.Visible == true)
        {
            LabelError.Text = "Model 4 must be selected";
        }
        else if ((TextBoxSerial4.Text == "" || TextBoxSerial4.Text == "Serial Number") && Panel4.Visible == true)
        {
            LabelError.Text = "Serial 4 is required";
        }
        else if (TextBoxPurchaseDate4.Text == "" && Panel4.Visible == true)
        {
            LabelError.Text = "Purchase Date 4 is required";
        }

        else if (DropDownListModel5.SelectedIndex == 0 && Panel5.Visible == true)
        {
            LabelError.Text = "Model 5 must be selected";
        }
        else if ((TextBoxSerial5.Text == "" || TextBoxSerial5.Text == "Serial Number") && Panel5.Visible == true)
        {
            LabelError.Text = "Serial 5 is required";
        }
        else if (TextBoxPurchaseDate5.Text == "" && Panel5.Visible == true)
        {
            LabelError.Text = "Purchase Date 5 is required";
        }

        else if (DropDownListModel6.SelectedIndex == 0 && Panel6.Visible == true)
        {
            LabelError.Text = "Model 6 must be selected";
        }
        else if ((TextBoxSerial6.Text == "" || TextBoxSerial6.Text == "Serial Number") && Panel6.Visible == true)
        {
            LabelError.Text = "Serial 6 is required";
        }
        else if (TextBoxPurchaseDate6.Text == "" && Panel6.Visible == true)
        {
            LabelError.Text = "Purchase Date 6 is required";
        }

        else if (DropDownListModel7.SelectedIndex == 0 && Panel7.Visible == true)
        {
            LabelError.Text = "Model 7 must be selected";
        }
        else if ((TextBoxSerial7.Text == "" || TextBoxSerial7.Text == "Serial Number") && Panel7.Visible == true)
        {
            LabelError.Text = "Serial 7 is required";
        }
        else if (TextBoxPurchaseDate7.Text == "" && Panel7.Visible == true)
        {
            LabelError.Text = "Purchase Date 7 is required";
        }

        else if (DropDownListModel8.SelectedIndex == 0 && Panel8.Visible == true)
        {
            LabelError.Text = "Model 8 must be selected";
        }
        else if ((TextBoxSerial8.Text == "" || TextBoxSerial8.Text == "Serial Number") && Panel8.Visible == true)
        {
            LabelError.Text = "Serial 8 is required";
        }
        else if (TextBoxPurchaseDate8.Text == "" && Panel8.Visible == true)
        {
            LabelError.Text = "Purchase Date 8 is required";
        }

        else if (DropDownListModel9.SelectedIndex == 0 && Panel9.Visible == true)
        {
            LabelError.Text = "Model 9 must be selected";
        }
        else if ((TextBoxSerial9.Text == "" || TextBoxSerial9.Text == "Serial Number") && Panel9.Visible == true)
        {
            LabelError.Text = "Serial 9 is required";
        }
        else if (TextBoxPurchaseDate9.Text == "" && Panel9.Visible == true)
        {
            LabelError.Text = "Purchase Date 9 is required";
        }

        else if (DropDownListModel10.SelectedIndex == 0 && Panel10.Visible == true)
        {
            LabelError.Text = "Model 10 must be selected";
        }
        else if ((TextBoxSerial10.Text == "" || TextBoxSerial10.Text == "Serial Number") && Panel10.Visible == true)
        {
            LabelError.Text = "Serial 10 is required";
        }
        else if (TextBoxPurchaseDate10.Text == "" && Panel10.Visible == true)
        {
            LabelError.Text = "Purchase Date 10 is required";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial1.Text, DropDownListModel1.SelectedValue) > 0 && Panel1.Visible == true)
        {
            LabelError.Text = "Line: " + "1" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial2.Text, DropDownListModel2.SelectedValue) > 0 && Panel2.Visible == true)
        {
            LabelError.Text = "Line: " + "2" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial3.Text, DropDownListModel3.SelectedValue) > 0 && Panel3.Visible == true)
        {
            LabelError.Text = "Line: " + "3" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial4.Text, DropDownListModel4.SelectedValue) > 0 && Panel4.Visible == true)
        {
            LabelError.Text = "Line: " + "4" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial5.Text, DropDownListModel5.SelectedValue) > 0 && Panel5.Visible == true)
        {
            LabelError.Text = "Line: " + "5" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial6.Text, DropDownListModel6.SelectedValue) > 0 && Panel6.Visible == true)
        {
            LabelError.Text = "Line: " + "6" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial7.Text, DropDownListModel7.SelectedValue) > 0 && Panel7.Visible == true)
        {
            LabelError.Text = "Line: " + "7" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial8.Text, DropDownListModel8.SelectedValue) > 0 && Panel8.Visible == true)
        {
            LabelError.Text = "Line: " + "8" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial9.Text, DropDownListModel9.SelectedValue) > 0 && Panel9.Visible == true)
        {
            LabelError.Text = "Line: " + "9" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (rsbo.SelectCountSerialSku(TextBoxSerial10.Text, DropDownListModel10.SelectedValue) > 0 && Panel10.Visible == true)
        {
            LabelError.Text = "Line: " + "10" + " This item has already been registered. If you have any questions please contact customer service.";
        }
        else if (TextBoxSerial2.Text == TextBoxSerial1.Text &&
                 Panel2.Visible == true)
        {
            LabelError.Text = "Line: " + "2" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial3.Text == TextBoxSerial1.Text ||
                  TextBoxSerial3.Text == TextBoxSerial2.Text) &&
                  Panel3.Visible == true)
        {
            LabelError.Text = "Line: " + "3" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial4.Text == TextBoxSerial1.Text ||
                  TextBoxSerial4.Text == TextBoxSerial2.Text ||
                  TextBoxSerial4.Text == TextBoxSerial3.Text) &&
                  Panel4.Visible == true)
        {
            LabelError.Text = "Line: " + "4" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial5.Text == TextBoxSerial1.Text ||
                  TextBoxSerial5.Text == TextBoxSerial2.Text ||
                  TextBoxSerial5.Text == TextBoxSerial3.Text ||
                  TextBoxSerial5.Text == TextBoxSerial4.Text) &&
                  Panel5.Visible == true)
        {
            LabelError.Text = "Line: " + "5" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial6.Text == TextBoxSerial1.Text ||
                  TextBoxSerial6.Text == TextBoxSerial2.Text ||
                  TextBoxSerial6.Text == TextBoxSerial3.Text ||
                  TextBoxSerial6.Text == TextBoxSerial4.Text ||
                  TextBoxSerial6.Text == TextBoxSerial5.Text) &&
                  Panel6.Visible == true)
        {
            LabelError.Text = "Line: " + "6" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial7.Text == TextBoxSerial1.Text ||
                  TextBoxSerial7.Text == TextBoxSerial2.Text ||
                  TextBoxSerial7.Text == TextBoxSerial3.Text ||
                  TextBoxSerial7.Text == TextBoxSerial4.Text ||
                  TextBoxSerial7.Text == TextBoxSerial5.Text ||
                  TextBoxSerial7.Text == TextBoxSerial6.Text) &&
                  Panel7.Visible == true)
        {
            LabelError.Text = "Line: " + "7" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial8.Text == TextBoxSerial1.Text ||
                  TextBoxSerial8.Text == TextBoxSerial2.Text ||
                  TextBoxSerial8.Text == TextBoxSerial3.Text ||
                  TextBoxSerial8.Text == TextBoxSerial4.Text ||
                  TextBoxSerial8.Text == TextBoxSerial5.Text ||
                  TextBoxSerial8.Text == TextBoxSerial6.Text ||
                  TextBoxSerial8.Text == TextBoxSerial7.Text) &&
                  Panel8.Visible == true)
        {
            LabelError.Text = "Line: " + "8" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial9.Text == TextBoxSerial1.Text ||
                  TextBoxSerial9.Text == TextBoxSerial2.Text ||
                  TextBoxSerial9.Text == TextBoxSerial3.Text ||
                  TextBoxSerial9.Text == TextBoxSerial4.Text ||
                  TextBoxSerial9.Text == TextBoxSerial5.Text ||
                  TextBoxSerial9.Text == TextBoxSerial6.Text ||
                  TextBoxSerial9.Text == TextBoxSerial7.Text ||
                  TextBoxSerial9.Text == TextBoxSerial8.Text) &&
                  Panel9.Visible == true)
        {
            LabelError.Text = "Line: " + "9" + " Attempting to submit serial multiple times. Check lines above.";
        }
        else if ((TextBoxSerial10.Text == TextBoxSerial1.Text ||
                  TextBoxSerial10.Text == TextBoxSerial2.Text ||
                  TextBoxSerial10.Text == TextBoxSerial3.Text ||
                  TextBoxSerial10.Text == TextBoxSerial4.Text ||
                  TextBoxSerial10.Text == TextBoxSerial5.Text ||
                  TextBoxSerial10.Text == TextBoxSerial6.Text ||
                  TextBoxSerial10.Text == TextBoxSerial7.Text ||
                  TextBoxSerial10.Text == TextBoxSerial8.Text ||
                  TextBoxSerial10.Text == TextBoxSerial9.Text) &&
                  Panel10.Visible == true)
        {
            LabelError.Text = "Line: " + "10" + " Attempting to submit serial multiple times. Check lines above.";
        }

        else if (RadioButtonListOnline.SelectedIndex == -1)
        {
            LabelError.Text = "Purchase Type is required";
        }
        else if (TextBoxStoreName.Text == "" || TextBoxStoreName.Text == "Name of Seller / Store")
        {
            LabelError.Text = "Name of Seller / Store is required";
        }
        else if ((TextBoxStoreCity.Text == "" || TextBoxStoreCity.Text == "City") && Panel13.Visible == true)
        {
            LabelError.Text = "Store Location City is required";
        }
        else if ((TextBoxStoreState.Text == "" || TextBoxStoreState.Text == "State / Province") && Panel13.Visible == true)
        {
            LabelError.Text = "Store Location State is required";
        }
        else if (DropDownListStoreCountry.SelectedIndex == 0 && Panel13.Visible == true)
        {
            LabelError.Text = "Store Location Country is required";
        }
        else if ((TextBoxMarketPlace.Text == "" || TextBoxMarketPlace.Text == "Marketplace (i.e. eBay, Amazon)") && Panel12.Visible == true)
        {
            LabelError.Text = "Marketplace is required";
        }
        else if (!IsValidEmail(TextBoxEmail.Text))
        {
            LabelError.Text = "Invalid Email";
        }
        else if (TextBoxEmail.Text != TextBoxEmailConfirm.Text)
        {
            LabelError.Text = "Email does not match Confirm Email";
        }
        else
        {

            if (this.TextBoxImgCode.Text == this.Session["CaptchaImageText"].ToString())
            {



                for (int i = 0; i < 10; i++)
                {






                    if (i == 0 && Panel1.Visible == true)
                    {


                        InsertSerial(TextBoxSerial1.Text, DropDownListModel1.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate1.Text), i);
                        Session["Model1"] = DropDownListModel1.SelectedItem.Text;
                        product_list = rsbo.SelectCategoryBySku(DropDownListModel1.SelectedValue).ToString() + " " + DropDownListModel1.SelectedItem.Text + " - with serial number " + TextBoxSerial1.Text + "<BR/>";
                        purchase_date_list = TextBoxPurchaseDate1.Text + "(" + TextBoxSerial1.Text + ")" + "<BR/>";

                    }
                    if (i == 1 && Panel2.Visible == true)
                    {
                        InsertSerial(TextBoxSerial2.Text, DropDownListModel2.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate2.Text), i);
                        Session["Model2"] = DropDownListModel2.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel2.SelectedValue).ToString() + " " + DropDownListModel2.SelectedItem.Text + " - with serial number " + TextBoxSerial2.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate2.Text + "(" + TextBoxSerial2.Text + ")" + "<BR/>";

                    }
                    if (i == 2 && Panel3.Visible == true)
                    {
                        InsertSerial(TextBoxSerial3.Text, DropDownListModel3.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate3.Text), i);
                        Session["Model3"] = DropDownListModel3.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel3.SelectedValue).ToString() + " " + DropDownListModel3.SelectedItem.Text + " - with serial number " + TextBoxSerial3.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate3.Text + "(" + TextBoxSerial3.Text + ")" + "<BR/>";
                    }
                    if (i == 3 && Panel4.Visible == true)
                    {
                        InsertSerial(TextBoxSerial4.Text, DropDownListModel4.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate4.Text), i);
                        Session["Model4"] = DropDownListModel4.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel4.SelectedValue).ToString() + " " + DropDownListModel4.SelectedItem.Text + " - with serial number " + TextBoxSerial4.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate4.Text + "(" + TextBoxSerial4.Text + ")" + "<BR/>";

                    }
                    if (i == 4 && Panel5.Visible == true)
                    {
                        InsertSerial(TextBoxSerial5.Text, DropDownListModel5.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate5.Text), i);
                        Session["Model5"] = DropDownListModel5.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel5.SelectedValue).ToString() + " " + DropDownListModel5.SelectedItem.Text + " - with serial number " + TextBoxSerial5.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate5.Text + "(" + TextBoxSerial5.Text + ")" + "<BR/>";

                    }
                    if (i == 5 && Panel6.Visible == true)
                    {
                        InsertSerial(TextBoxSerial6.Text, DropDownListModel6.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate6.Text), i);
                        Session["Model6"] = DropDownListModel6.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel6.SelectedValue).ToString() + " " + DropDownListModel6.SelectedItem.Text + " - with serial number " + TextBoxSerial6.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate6.Text + "(" + TextBoxSerial6.Text + ")" + "<BR/>";

                    }
                    if (i == 6 && Panel7.Visible == true)
                    {
                        InsertSerial(TextBoxSerial7.Text, DropDownListModel7.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate7.Text), i);
                        Session["Model7"] = DropDownListModel7.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel7.SelectedValue).ToString() + " " + DropDownListModel7.SelectedItem.Text + " - with serial number " + TextBoxSerial7.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate7.Text + "(" + TextBoxSerial7.Text + ")" + "<BR/>";

                    }
                    if (i == 7 && Panel8.Visible == true)
                    {
                        InsertSerial(TextBoxSerial8.Text, DropDownListModel8.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate8.Text), i);
                        Session["Model8"] = DropDownListModel8.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel8.SelectedValue).ToString() + " " + DropDownListModel8.SelectedItem.Text + " - with serial number " + TextBoxSerial8.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate8.Text + "(" + TextBoxSerial8.Text + ")" + "<BR/>";
                    }
                    if (i == 8 && Panel9.Visible == true)
                    {
                        InsertSerial(TextBoxSerial9.Text, DropDownListModel9.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate9.Text), i);
                        Session["Model9"] = DropDownListModel9.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel9.SelectedValue).ToString() + " " + DropDownListModel9.SelectedItem.Text + " - with serial number " + TextBoxSerial9.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate9.Text + "(" + TextBoxSerial9.Text + ")" + "<BR/>";

                    }
                    if (i == 9 && Panel10.Visible == true)
                    {
                        InsertSerial(TextBoxSerial10.Text, DropDownListModel10.SelectedValue, Convert.ToDateTime(TextBoxPurchaseDate10.Text), i);
                        Session["Model10"] = DropDownListModel10.SelectedItem.Text;
                        product_list = product_list + rsbo.SelectCategoryBySku(DropDownListModel10.SelectedValue).ToString() + " " + DropDownListModel10.SelectedItem.Text + " - with serial number " + TextBoxSerial10.Text + "<BR/>";
                        purchase_date_list = purchase_date_list + TextBoxPurchaseDate10.Text + "(" + TextBoxSerial10.Text + ")" + "<BR/>";

                    }

                }


                // Bronto
                //Valid Serial?
                // Insert
                // Email
                // Session Name
                // Session Continue (clear continue after redirect
                // Redirect

                //update query screen

                //Session["CheckedSerial"] = null;

                //replace default value
                //clear after insert and capcha
                //required not allow default
                //layout



                //try
                //{
                v_rep_to_run = "C7.rep";

                //Response.Write(GridView1.SelectedValue.ToString());


                v_pdfname = TextBoxLastName.Text + "-" + DateTime.Now.ToString("yyyy-MM-dd") + "-EvolutionC7BirthCertificate";

                this.ButtonRunRep_Click();

                /*            }
                            catch (Exception ex)
                            {

                                LabelError.Text = "Error: " + ex.Message;
                            }*/

                // Response.Write(processed + " " + email + " " + customer_id + " " + statement_id + "-");





                SendEmail();

                Session["Submitted"] = "1";


                Session["product_list"] = product_list;
                Session["Name"] = TextBoxFirstName.Text + " " + TextBoxLastName.Text;


                TextBoxImgCode.Text = "";


                TextBoxLastName.Text = "Last Name";
                TextBoxFirstName.Text = "First Name";
                TextBoxEmail.Text = "Email";
                DropDownListCountry.SelectedIndex = 0;
                TextBoxAddress.Text = "Street Address";
                TextBoxAddressCity.Text = "City";
                TextBoxState.Text = "State / Province";
                TextBoxAddressZip.Text = "Postal / Zip Code";
                TextBoxStoreName.Text = "Name of Seller / Store";
                TextBoxStoreCity.Text = "City";
                TextBoxStoreState.Text = "State / Province";
                RadioButtonListOnline.SelectedIndex = -1;
                RadioButtonListInstall.SelectedIndex = -1;
                TextBoxAddress2.Text = "Street Address Line 2";
                DropDownListStoreCountry.SelectedIndex = 0;
                TextBoxMarketPlace.Text = "Marketplace (i.e. eBay, Amazon) ";



                Response.Redirect("BirthCertificateThankYou.aspx");
            }
            else
            {
                LabelError.Text = "Image code entered is not valid. Please try again";
            }
            this.TextBoxImgCode.Text = "";

        }
        //Response.Redirect("BirthCertificateThankYou.aspx");
    }

    bool IsValidEmail(string email)
    {
        try
        {
            var addr = new System.Net.Mail.MailAddress(email);
            return addr.Address == email;
        }
        catch
        {
            return false;
        }
    }

    protected void InsertSerial(string serial, string sku, DateTime purchace_date, int i)
    {
        RSBusinessObject rso = new RSBusinessObject();



        rso.InserRegistrationC7(DateTime.Now,
        purchace_date,
        TextBoxLastName.Text.Replace("Last Name", ""),
        TextBoxFirstName.Text.Replace("First Name", ""),
        "",
        TextBoxEmail.Text.Replace("Email", ""),
        DropDownListCountry.SelectedValue.Replace("Please Select Country . . .", ""),
        TextBoxAddress.Text.Replace("Street Address", ""),
        TextBoxAddressCity.Text.Replace("City", ""),
        TextBoxState.Text.Replace("State / Province", ""),
        TextBoxAddressZip.Text.Replace("Postal / Zip Code", ""),
        TextBoxStoreName.Text.Replace("Name of Seller / Store", ""),
        TextBoxStoreCity.Text.Replace("City", ""),
        TextBoxStoreState.Text.Replace("State / Province", ""),
        RadioButtonListOnline.SelectedValue,
        RadioButtonListInstall.SelectedValue,
        "",
        CheckBoxListOptIn.SelectedValue,
        sku.Replace("0", ""),
        serial.Replace("Serial Number", ""),
        RadioButtonListInstall.SelectedItem.Text,
        TextBoxAddress2.Text.Replace("Street Address Line 2", ""),
        DropDownListStoreCountry.SelectedValue.Replace("Please Select Country . . .", ""),
        TextBoxMarketPlace.Text.Replace("Marketplace (i.e. eBay, Amazon) ", ""));


        this.OnPostInfoClick();





    }

    protected void SendEmail()
    {

        RSBusinessObject rsbo = new RSBusinessObject();
        RABusinessObject ra = new RABusinessObject();

        ra.SendRAemailWithAttachmentCcBcc(TextBoxEmail.Text,
            "JL Audio New Product Registration - " + "Evolution" + " - " + "C7",
            "Dear " + TextBoxFirstName.Text + " " + TextBoxLastName.Text + ", " +
            "<BR/>" +
            "<BR/>" +
            "Thank you for registering your JL Audio product(s): " + "<BR/>" +
            product_list +
            "<BR/>" +
            "<BR/>" +
            "Please save your receipt and keep this email as confirmation of your registration." +
            "<BR/>" +
            "<BR/>" +
            "Thank you for choosing JL Audio products." +
            "<BR/>" +
            "<BR/>" +
            "Registration Details" +
                            "<BR/>" +
            "<BR/>" +

            "Purchase Date: " + "<BR/>" +
            purchase_date_list +
            //"Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
            "Customer Email: " + TextBoxEmail.Text + "<BR/>" +
            "<BR/>" +
            "Dealer Name: " + TextBoxStoreName.Text + "<BR/>" +
            "Dealer City: " + TextBoxStoreCity.Text + "<BR/>" +
            "Dealer State: " + TextBoxStoreState.Text + "<BR/>" +
            "Purchase Type: " + RadioButtonListOnline.SelectedValue.Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
            "Installation Type: " + RadioButtonListInstall.SelectedItem.Text + "<BR/>" +
                "<BR/>" +
            "<BR/>" +
            "Address:" +
            "<BR/>" +
            DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text +
            "<BR/>" +
            TextBoxAddress2.Text +
            "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text +
            "<BR/>" +
            "<BR/>" +
            "Please add <a href='mailto:register@jlaudio.com'" +
            "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
            "your acceptable email addresses list to ensure any communications from us do not " +
            "get labeled as Spam. For more JL Audio information, please go to " +
            "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
            "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>",
            @"\\atlas\Devshare\jlaudio\reports\Output\" + v_pdfname + ".pdf",
            "",
            "");

        string opt_in = "N";

        if (CheckBoxListOptIn.SelectedIndex > -1)
        {
            if (CheckBoxListOptIn.SelectedItem.Selected)
            {
                opt_in = "Y";
            }
        }

        ra.SendRSemail("frontline@jlaudio.com",
            "JL Audio New Product Registration - " + "Evolution" + " - " + "C7",
            "Thank You " + TextBoxFirstName.Text + " " + TextBoxLastName.Text + ", " +
            "for registering your new " + "Evolution C7" + " with us!" +
            "<BR/>" +
            "<BR/>" +
            "You’ve registered the following JL Audio product(s):" +
            product_list +
            "<BR/>" +
            "<BR/>" +
            "Please, save your receipt and keep this email as confirmation of your registration." +
            "<BR/>" +
            "<BR/>" +
            "Registration Details" +
                            "<BR/>" +
            "<BR/>" +


            "Last Name: " + TextBoxLastName.Text + "<BR/>" +
            "Last Name: " + TextBoxFirstName.Text + "<BR/>" +

            DropDownListCountry.SelectedValue + "<BR/>" +
            TextBoxAddress.Text + "<BR/>" +
            TextBoxAddress2.Text + "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text + "<BR/>" +

            "<BR/>" +
            "<BR/>" +

            "Opt In: " + opt_in + "<BR/>" +

            product_list +

            "<BR/>" +
            "<BR/>" +


            "Purchase Date: " + "<BR/>" +
            purchase_date_list +
            //"Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
            "Customer Email: " + TextBoxEmail.Text + "<BR/>" +
            "<BR/>" +

            "<BR/>" +
            "Dealer Name: " + TextBoxStoreName.Text + "<BR/>" +
            "Dealer City: " + TextBoxStoreCity.Text + "<BR/>" +
            "Dealer State: " + TextBoxStoreState.Text + "<BR/>" +
            "Purchase Type: " + RadioButtonListOnline.SelectedValue.Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
            "Installation Type: " + RadioButtonListInstall.SelectedItem.Text + "<BR/>" +
                "<BR/>" +
            "<BR/>" +
            "Address: " +
            "<BR/>" +
            DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text + "<BR/>" +
            TextBoxAddress2.Text + "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text + "<BR/>" +
            "<BR/>" +
            "<BR/>" +
            "Please add <a href='mailto:register@jlaudio.com'" +
            "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
            "your acceptable email addresses list to ensure any communications from us do not " +
            "get labeled as Spam. For more JL Audio information, please go to " +
            "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
            "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"
);


        ra.SendRSemail("register@jlaudio.com",
            "JL Audio New Product Registration - " + "Evolution" + " - " + "C7",
            "Dear " + TextBoxFirstName.Text + " " + TextBoxLastName.Text + ", " +
            "<BR/>" +
            "<BR/>" +
            "Thank you for registering your JL Audio product(s)" + "<BR/>" +
            product_list +
            "<BR/>" +
            "<BR/>" +
            "Please save your receipt and keep this email as confirmation of your registration." + "<BR/>" +
            "<BR/>" +
            "Thank you for choosing JL Audio products." +
            "<BR/>" +
            "<BR/>" +
            "Registration Details" +
                            "<BR/>" +
            "<BR/>" +

            "Purchase Date: " + "<BR/>" +
            purchase_date_list +
            //"Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
            "Customer Email: " + TextBoxEmail.Text + "<BR/>" +
            "<BR/>" +
            "Dealer Name: " + TextBoxStoreName.Text + "<BR/>" +
            "Dealer City: " + TextBoxStoreCity.Text + "<BR/>" +
            "Dealer State: " + TextBoxStoreState.Text + "<BR/>" +
            "Purchase Type: " + RadioButtonListOnline.SelectedValue.Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
            "Installation Type: " + RadioButtonListInstall.SelectedItem.Text + "<BR/>" +
                "<BR/>" +
            "<BR/>" +
            "Address:" +
            "<BR/>" +
            DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text +
            "<BR/>" +
            TextBoxAddress2.Text +
            "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text +
            "<BR/>" +
            "<BR/>" +
            "Please add <a href='mailto:register@jlaudio.com'" +
            "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
            "your acceptable email addresses list to ensure any communications from us do not " +
            "get labeled as Spam. For more JL Audio information, please go to " +
            "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
            "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

);

        ra.SendRSemail("bpower@jlaudio.com",
           "JL Audio New Product Registration - " + "Evolution" + " - " + "C7",
           "Thank You " + TextBoxFirstName.Text + " " + TextBoxLastName.Text + ", " +
           "for registering your new " + "Evolution" + " - " + "C7" + " with us!" +
           "<BR/>" +
           "<BR/>" +
           "You’ve registered the following JL Audio products:" + "<BR/>" +
           product_list +
           "<BR/>" +
           "<BR/>" +
            "Please, save your receipt and keep this email as confirmation of your registration." +
            "<BR/>" +
            "<BR/>" +
           "Registration Details" +
                           "<BR/>" +
           "<BR/>" +


           "Last Name: " + TextBoxLastName.Text + "<BR/>" +
           "Last Name: " + TextBoxFirstName.Text + "<BR/>" +

           DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text +
            "<BR/>" +
            TextBoxAddress2.Text +
            "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text + "<BR/>" +

           "<BR/>" +
           "<BR/>" +

           //"Gift: " + size + "<BR/>" +
           "Opt In: " + opt_in + "<BR/>" +
           product_list +
           "<BR/>" +
           "<BR/>" +


           "Purchase Date: " + "<BR/>" +
           purchase_date_list +
            //"Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
           "Customer Email: " + TextBoxEmail.Text + "<BR/>" +
           "<BR/>" +

           "<BR/>" +
           "Dealer Name: " + TextBoxStoreName.Text + "<BR/>" +
           "Dealer City: " + TextBoxStoreCity.Text + "<BR/>" +
           "Dealer State: " + TextBoxStoreState.Text + "<BR/>" +
           "Purchase Type: " + RadioButtonListOnline.SelectedValue.Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
           "Installation Type: " + RadioButtonListInstall.SelectedItem.Text + "<BR/>" +
               "<BR/>" +
           "<BR/>" +
           "Address:" +
            "<BR/>" +
            DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text +
            "<BR/>" +
            TextBoxAddress2.Text +
            "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text +
            "<BR/>" +
           "<BR/>" +
           "Please add <a href='mailto:register@jlaudio.com'" +
            "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
            "your acceptable email addresses list to ensure any communications from us do not " +
            "get labeled as Spam. For more JL Audio information, please go to " +
            "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
            "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

);

        ra.SendRSemail("register@jlaudio.com",
                       "JL Audio New Product Registration - " + "Evolution" + " - " + "C7",
                       "Thank You " + TextBoxFirstName.Text + " " + TextBoxLastName.Text + ", " +
                       "for registering your new " + "Evolution" + " - " + "C7" + " with us!" +
                       "<BR/>" +
                       "<BR/>" +
                       "You’ve registered the following JL Audio product(s)" + "<BR/>" +
                       product_list +
                        "<BR/>" +
                        "<BR/>" +
                        "Please, save your receipt and keep this email as confirmation of your registration." +
                        "<BR/>" +
                        "<BR/>" +
                       "Registration Details" +
                                       "<BR/>" +
                       "<BR/>" +


                       "Last Name: " + TextBoxLastName.Text + "<BR/>" +
                       "Last Name: " + TextBoxFirstName.Text + "<BR/>" +

                       DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text +
            "<BR/>" +
            TextBoxAddress2.Text +
            "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text +

                       "<BR/>" +
                       "<BR/>" +

                       //"Gift: " + size + "<BR/>" +
                       "Opt In: " + opt_in + "<BR/>" +
                       product_list +

                       "<BR/>" +
                       "<BR/>" +


                       "Purchase Date: " + "<BR/>" +
                       purchase_date_list +

                       //"Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
                       "Customer Email: " + TextBoxEmail.Text + "<BR/>" +
                       "<BR/>" +

                       "<BR/>" +
                       "Dealer Name: " + TextBoxStoreName.Text + "<BR/>" +
                       "Dealer City: " + TextBoxStoreCity.Text + "<BR/>" +
                       "Dealer State: " + TextBoxStoreState.Text + "<BR/>" +
                       "Purchase Type: " + RadioButtonListOnline.SelectedValue.Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
                       "Installation Type: " + RadioButtonListInstall.SelectedItem.Text + "<BR/>" +
                "<BR/>" +
            "<BR/>" +
            "Address:" +
            "<BR/>" +
            DropDownListCountry.SelectedValue +
            "<BR/>" +
            TextBoxAddress.Text +
            "<BR/>" +
            TextBoxAddress2.Text +
            "<BR/>" +
            TextBoxAddressCity.Text + ", " + TextBoxState.Text + " " + TextBoxAddressZip.Text +
                       "<BR/>" +
                       "<BR/>" +
                       "Please add <a href='mailto:register@jlaudio.com'" +
                        "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
                        "your acceptable email addresses list to ensure any communications from us do not " +
                        "get labeled as Spam. For more JL Audio information, please go to " +
                        "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
                        "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

        );

    }




    private void OnPostInfoClick()
    {

        Session["Mobile"] = CheckBoxListBrontoProductType.Items[0].Selected;
        Session["Home"] = CheckBoxListBrontoProductType.Items[1].Selected;
        Session["Marine"] = CheckBoxListBrontoProductType.Items[2].Selected;
        Session["Power"] = CheckBoxListBrontoProductType.Items[3].Selected;

        // string strId = UserId_TextBox.Text;
        // string strName = Name_TextBox.Text;

        ASCIIEncoding encoding = new ASCIIEncoding();
        string postData;// = "userid=" + strId;
        ///postData += ("&username=" + strName);
        ///
        string mobile;
        string home;
        string marine;
        string power;

        if (Convert.ToBoolean(Session["Mobile"]) == true)
        {
            mobile = "Y";
        }
        else
        {
            mobile = "";
        }
        if (Convert.ToBoolean(Session["Home"]) == true)
        {
            home = "Y";
        }
        else
        {
            home = "";
        }
        if (Convert.ToBoolean(Session["Marine"]) == true)
        {
            marine = "Y";
        }
        else
        {
            marine = "";
        }
        if (Convert.ToBoolean(Session["Power"]) == true)
        {
            power = "Y";
        }
        else
        {
            power = "";
        }


        postData = "fn=Mail_ActionPage_FormResponse&pid=45jszcq7sd31t643e4s2418awc0hj&ssid=12532" +
            "&email=" + TextBoxEmail.Text +
            "&field_data[62051]=" + TextBoxFirstName.Text +  //first name
            "&field_data[62052]=" + TextBoxLastName.Text +  //last name
            "&field_data[62061]=" + TextBoxAddress.Text + " " + TextBoxAddress2.Text +  //address
            "&field_data[62058]=" + TextBoxAddressCity.Text +  //city
            "&field_data[62060]=" + TextBoxState.Text +  //state
            "&field_data[63055]=" + DropDownListCountry.SelectedValue +  //country
            "&field_data[62059]=" + TextBoxAddressZip.Text +  //zip
            //"&field_data[62057]=insertvaluehere" +  //gender
            //"&field_data[64044]=insertvaluehere" +  //age range
            "&field_data[64066]=" + mobile +  //mobile
            "&field_data[64067]=" + home +    //home
            "&field_data[64068]=" + marine +  //marine
            "&field_data[64069]=" + power +  //powersports
            "&list_data[204342]=checked";  //list selection


        byte[] data = encoding.GetBytes(postData);

        // Prepare web request...
        HttpWebRequest myRequest =
          (HttpWebRequest)WebRequest.Create("http://shopatron.bm23.com/public/actionpage/subscriber_add/");
        myRequest.Method = "POST";
        myRequest.ContentType = "application/x-www-form-urlencoded";
        myRequest.ContentLength = data.Length;
        Stream newStream = myRequest.GetRequestStream();
        // Send the data.
        newStream.Write(data, 0, data.Length);
        newStream.Close();


    }

    protected void ButtonRunRep_Click()
    {
        //if (GridViewInvoice.Rows.Count > 0 && GridViewInvoice.SelectedIndex > -1)
        //{

        //    LabelErrorMessage.Text = "";


        string v_sql;
        string v_report;
        decimal v_request;
        //string v_pdfname;
        //string v_url;
        OracleString v_rowid;

        //OracleConnection conn = JLUtils.GetConnectionString();
        OracleConnection conn = new OracleConnection("Data Source=prod1;User ID=testfmpro;Password=testfmpro;Unicode=True");
        OracleCommand cmd = new OracleCommand();

        OracleConnectionStringBuilder sb = (OracleConnectionStringBuilder)Session["GlobalConnectionStringBuilder"];
        //string v_conn = sb.UserID + "/" + sb.Password + "@" + sb.DataSource.Replace("x", "");
        string v_conn = "testfmpro" + "/" + "testfmpro" + "@" + "prod1";


        conn.Open();
        cmd.Connection = conn;

        // Get Request Number
        v_sql = "select RPSQ_REQUEST.nextval from dual";
        cmd.CommandText = v_sql;
        cmd.CommandType = CommandType.Text;
        v_request = Convert.ToDecimal(cmd.ExecuteOracleScalar().ToString());



        v_report = v_rep_to_run;


        // Loop thru parameters and insert into RP_DOTNET_REPORT_PARMS table



        for (int i = 0; i < 10; i++)
        {
            if (i == 0 && Panel1.Visible == true)
            {

                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_1" + "', '" + TextBoxSerial1.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 1 && Panel2.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_2" + "', '" + TextBoxSerial2.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 2 && Panel3.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_3" + "', '" + TextBoxSerial3.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);
            }
            if (i == 3 && Panel4.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_4" + "', '" + TextBoxSerial4.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 4 && Panel5.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_5" + "', '" + TextBoxSerial5.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 5 && Panel6.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_6" + "', '" + TextBoxSerial6.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 6 && Panel7.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_7" + "', '" + TextBoxSerial7.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 7 && Panel8.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_8" + "', '" + TextBoxSerial8.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);
            }
            if (i == 8 && Panel9.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_9" + "', '" + TextBoxSerial10.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);

            }
            if (i == 9 && Panel10.Visible == true)
            {
                v_sql = "insert into RP_DOTNET_REPORT_PARMS(request_num, parm_name, parm_value) values (" + v_request + ", '" + "P_SERIAL_10" + "', '" + TextBoxSerial10.Text + "')";
                cmd.CommandText = v_sql;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteOracleNonQuery(out v_rowid);
            }

        }





        // Call DB function that runs the report
        //            v_pdfname = LabelCustomerIDView.Text + "-statement";

        reportsBO rbo = new reportsBO();
        string result = rbo.FncCallRep(v_conn, v_request, v_report, v_pdfname);

        // Delete the parameters
        rbo.DeleteParms(v_request);

        // Show the report
        v_url = rbo.FncGetRepURL() + v_pdfname + ".pdf";
        while (!this.ReportPDFGenerated(v_url))
        {
            System.Threading.Thread.Sleep(1000);
        }

        /*bool display = true;

        if (display)
        {
            System.Threading.Thread.Sleep(1000);
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "showPopup", "<script>window.open('" + v_url + "');</script>", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "showPopup", "<script>window.open('" + v_url + "');</script>");
        }*/

        cmd.Dispose();
        conn.Close();
        conn.Dispose();

        //}
        //else
        //{
        //    LabelErrorMessage.Text = "Please make and Invoice or Order selection before generating an invoice";
        //}
    }

    protected bool ReportPDFGenerated(string url)
    {
        WebRequest webRequest = WebRequest.Create(url);
        WebResponse webResponse;
        try
        {
            webResponse = webRequest.GetResponse();
        }
        catch //If exception thrown then couldn't get response from address 
        {
            return false;
        }
        return true;
    }

    protected void sendEmail2(object sender, EventArgs e)
    {

    }


    protected void CheckBoxListOptIn_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (CheckBoxListOptIn.Items[0].Selected == false)
        {
            for (int i = 0; i < CheckBoxListBrontoProductType.Items.Count; i++)
            {
                CheckBoxListBrontoProductType.Items[i].Selected = false;
            }

            CheckBoxListBrontoProductType.Enabled = false;
        }
        else
        {
            CheckBoxListBrontoProductType.Enabled = true;
            CheckBoxListBrontoProductType.Items[0].Selected = true;
        }

    }
}
