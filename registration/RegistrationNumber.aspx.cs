using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Text;
using System.IO;


public partial class RegistrationNumber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Submitted"] != null)
        {
            Session["Submitted"] = null;

            if (Session["Model"] != null)
            {

                LabelModel.Text = Session["Model"].ToString();
            }
            //ImageBronto.ImageUrl = "http://shopatron.bm23.com/public/actionpage/subscriber_add/?fn=Mail_ActionPage_FormResponse&amp;pid=45jszcq7sd31t643e4s2418awc0hj&amp;ssid=12532&amp;email=cpena@jlaudio.com";

        }
        else
        {
         //   Response.Redirect("Default.aspx");
        }

        if (Session["Premium"] == "1")
        {
            LabelPremium.Visible = true;
            
        }
        else
        {
            LabelPremium.Visible = false;
        }
        
        //if (Session["last_serial"].ToString().Length < 4)
        //{
        //    if (Convert.ToInt32(Session["last_serial"]) < 500)
        //    {

        //        OnPostInfoClick(sender, e);
        //    }
        //}


        //Button2.Attributes.Add("onclick", "window.close();");
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://register.jlaudio.com/RegistrationSerialCheckResult.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.jlaudio.com");
    }
}
