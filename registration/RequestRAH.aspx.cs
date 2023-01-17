using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestRAH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["rs"] != null)
        {
            RABusinessObject rbo = new RABusinessObject();

            if (rbo.SelectCountRaBySeq(Convert.ToInt32(Request.QueryString["rs"])) == 0)
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

        if (!IsPostBack)
        {


            DropDownListDealerAndContact.DataBind();

            if (DropDownListDealerAndContact.Items.Count > 0)
            {
                DropDownListDealerAndContact.SelectedIndex = 0;
                DropDownListDealerAndContact_SelectedIndexChanged(sender, e);
            }

            if (JLUtils.HasRole("RA_DEALER"))
            {
                //DropDownListDealerAndContact.SelectedValue = Session["USER"].ToString();
                DropDownListDealerAndContact.SelectedValue = Session["CUSTOMER_ID"].ToString();
                DropDownListDealerAndContact.Enabled = false;
            }
        }

        


    }
    protected void DropDownListDealerAndContact_SelectedIndexChanged(object sender, EventArgs e)
    {

        RABusinessObject rbo = new RABusinessObject();

        //RADataSet.DP_USERSRow dr = (RADataSet.DP_USERSRow)rbo.SelectDPUserDetails(DropDownListDealerAndContact.SelectedValue)[0];

        //LabelContact.Text = dr.FULL_NAME;
        //LabelEmail.Text = dr.EMAIL_ADDRESS;
        //LabelPhone.Text = dr.PHONE;
        //LabelFax.Text = dr.FAX;

        //LabelDealer.Text = rbo.SelectDealerNameByUserID(DropDownListDealerAndContact.SelectedValue);

        //DropDownListAccountShip.DataBind();

        //if (DropDownListAccountShip.Items.Count > 0)
        //{
        //    DropDownListAccountShip.SelectedIndex = 0;
        //    DropDownListAccountShip_SelectedIndexChanged(sender, e);
        //}
    }
    protected void ButtonEnterItems_Click(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        string ship_different = "N";

        RADataSet.SX_CUSTOMERSRow dr = (RADataSet.SX_CUSTOMERSRow)rbo.SelectCustomerByCustomerID(Convert.ToInt32(DropDownListAccountShip.SelectedValue))[0];

        if (dr.ADDRESS1 != "NONE")
        {
            if (TextBoxShipAddress1.Text != dr.ADDRESS1.Replace("?", ""))
            {
                ship_different = "Y";
            }
        }
        else
        {
            if (TextBoxShipAddress1.Text != "")
            {
                ship_different = "Y";
            }
        }
        if (dr.ADDRESS2 != "NONE")
        {
            if (TextBoxShipAddress2.Text != dr.ADDRESS2.Replace("?", ""))
                {
                ship_different = "Y";
            }
        }
        else
        {
            if (TextBoxShipAddress2.Text != "")
            {
                ship_different = "Y";
            }
        }
        if (dr.CITY != "NONE")
        {
            if (TextBoxShipCity.Text != dr.CITY.Replace("?", ""))
                {
                ship_different = "Y";
            }
        }
        else
        {
            if (TextBoxShipCity.Text != "")
            {
                ship_different = "Y";
            }
        }
        if (dr.STATE != "NONE")
        {
            if (TextBoxShipState.Text != dr.STATE.Replace("?", ""))
                {
                ship_different = "Y";
            }
        }
        else
        {
            if (TextBoxShipState.Text != "")
            {
                ship_different = "Y";
            }
        }
        if (dr.ZIPCODE != "NONE")
        {
            if (TextBoxShipZipCode.Text != dr.ZIPCODE.Replace("?", ""))
            {
                ship_different = "Y";
            }
        }
        else
        {
            if (TextBoxShipZipCode.Text != "")
            {
                ship_different = "Y";
            }
        }

        rbo.InsertRARequestH(Convert.ToInt32(Request.QueryString["rs"]), DropDownListDealerAndContact.SelectedValue
                             , Convert.ToInt32(DropDownListAccountAndAddr.SelectedValue)
                             , Convert.ToInt32(DropDownListAccountShip.SelectedValue)
                             , TextBoxShipAddress1.Text
                             , TextBoxShipAddress2.Text
                             , TextBoxShipCity.Text
                             , TextBoxShipState.Text
                             , TextBoxShipZipCode.Text
                             , ship_different);
        Response.Redirect("RequestRAD.aspx?rs=" + Request.QueryString["rs"].ToString());

    }
    protected void DropDownListAccountShip_SelectedIndexChanged(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        RADataSet.SX_CUSTOMERSRow dr = (RADataSet.SX_CUSTOMERSRow)rbo.SelectCustomerByCustomerID(Convert.ToInt32(DropDownListAccountShip.SelectedValue))[0];


        if (dr.ADDRESS1 != "NONE")
        {
            TextBoxShipAddress1.Text = dr.ADDRESS1.Replace("?", "");
        }
        if (dr.ADDRESS2 != "NONE")
        {
            TextBoxShipAddress2.Text = dr.ADDRESS2.Replace("?", "");
        }
        if (dr.CITY != "NONE")
        {
            TextBoxShipCity.Text = dr.CITY.Replace("?", "");
        }
        if (dr.STATE != "NONE")
        {
            TextBoxShipState.Text = dr.STATE.Replace("?", "");
        }
        if (dr.ZIPCODE != "NONE")
        {
            TextBoxShipZipCode.Text = dr.ZIPCODE.Replace("?", "");
        }

    }
}
