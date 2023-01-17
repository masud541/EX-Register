using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BirthCertificateThankYou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Submitted"] != null && Session["Name"] != null && Session["product_list"] != null)
        {

            LabelName.Text = Session["Name"].ToString();
            LabelSerialList.Text = Session["product_list"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }

    }
}


