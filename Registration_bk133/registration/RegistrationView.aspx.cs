﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RegistrationUser"] != null)
        {
        }
        else
        {
            Response.Redirect("RegistrationView.aspx");
        }
    }
}
