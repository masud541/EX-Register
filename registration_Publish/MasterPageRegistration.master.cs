using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageRegistration : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["current_page"] = Page.ToString().Replace("ASP.", "").Replace("_", ".");

        if (!Request.IsSecureConnection)
        {
            //Response.Redirect("https://register.jlaudio.com/" + Session["current_page"].ToString());

        }    
       
    }
}
