using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecallUpdateLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.ToLower() == "reg_prod" && TextBox2.Text == "Registration" )
        {
            Session["RegistrationUser"] = TextBox1.Text;
            Response.Redirect("RegistrationView.aspx");
        }

        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
