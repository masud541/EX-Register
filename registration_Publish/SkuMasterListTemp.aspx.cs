using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class SkuMasterListTemp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
        server control at run time. */
    }

   

   

    protected void Button2_Click(object sender, EventArgs e)
    {


        /*Session["ReportScheduleDeptId"] = HiddenDeptId.Value;
       Session["ReportSchedulePositionId"] = HiddenPositionId.Value;
       Session["ReportScheduleStart"] = HiddenScheduleStart.Value;
       Session["ReportScheduleEnd"] = HiddenScheduleEnd.Value;


       Response.Redirect("PrintableScheduleViewer.aspx");*/

        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=FileName.xls");
        Response.Charset = "";
        // If you want the option to open the Excel file without saving then
        // comment out the line below
        // Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.xls";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GridView1.RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
   }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        RABusinessObject rbo = new RABusinessObject();

        rbo.InsertJustSku(TextBoxSku.Text);

        TextBoxSkuFilter.Text = TextBoxSku.Text;

        TextBoxSku.Text = "";

        GridView1.DataBind();
    }
}
