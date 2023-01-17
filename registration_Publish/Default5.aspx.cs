using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {

        //bind data to data bound controls and do other stuff

        Response.Clear(); //this clears the Response of any headers or previous output
        Response.Buffer = true; //make sure that the entire output is rendered simultaneously

        ///
        ///Set content type to MS Excel sheet
        ///Use "application/msword" for MS Word doc files
        ///"application/pdf" for PDF files
        ///

        Response.ContentType = "application/msword";
        StringWriter stringWriter = new StringWriter(); //System.IO namespace should be used

        HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);

        ///
        ///Render the entire Page control in the HtmlTextWriter object
        ///We can render individual controls also, like a DataGrid to be
        ///exported in custom format (excel, word etc)
        ///
        //this.RenderControl(TextBox1);
        Response.Write(TextBox1.Text);
        Response.End();

    }
}
