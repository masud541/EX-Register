using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecallRepairLetterTXT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.PrintLetter();
    }

    protected void PrintLetter()
    {

        TextBox1.Text = DateTime.Now.ToShortDateString() + "\r\n" +
                                    "\r\n" +
                                    Request["full_name"].ToString() + "\r\n" +
                                    Request["address"].ToString() + "\r\n" +
                                    Request["city_st_zip"].ToString() + "\r\n" +
                                    "\r\n" +
                                    "Re: AMP " + Request["model_sn"].ToString() + "\r\n" +
                                    "\r\n" +
                                    "Dear " + Request["full_name"].ToString() + ",\r\n" +
                                    "\r\n" +
                                    "Thank you for sending your amplifier in to be repaired under our recall campaign. Our factory technicians have implemented the circuit modifications and parts upgrades necessary to correct the defect and your amplifier is now safe to use." + "\r\n" +
                                    "\r\n" +
                                    "When we received your amplifier, we took the time to note its switch and control settings and have reset these the same way we received them so you can quickly re-install your amplifier and start enjoying your music again. We have also verified the operation of your amplifier to ensure that it meets or exceeds its original specifications." + "\r\n" +
                                    "\r\n" +
                                    "As a token of our appreciation, please accept the enclosed t-shirt along with our heartfelt thanks for choosing JL Audio products for your audio system. We sincerely apologize for any inconvenience caused by this recall." + "\r\n" +
                                    "\r\n" +
                                    "Best regards," + "\r\n" +
                                    "\r\n" +
                                    "Jeff Scoon" + "\r\n" +
                                    "VP-Electronics";




        Response.Clear();
        Response.AddHeader("content-disposition",
        "attachment;filename=FileName.txt");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.text";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite =
        new HtmlTextWriter(stringWrite);
        Response.Write(TextBox1.Text);
        Response.End();
    }
}
