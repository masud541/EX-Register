using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecallRepairLetterWRD : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
        this.PrintLetter();
    }

    protected void PrintLetter()
    {

        TextBox1.Text = DateTime.Now.ToShortDateString()+"\n"+
                                    "\n"+
                                    Request["full_name"].ToString()+"\n"+
                                    Request["address"].ToString() + "\n" +
                                    Request["city_st_zip"].ToString()+"\n"+
                                    "\n"+
                                    "Re: AMP "+Request["model_sn"].ToString()+"\n"+
                                    "\n"+
                                    "Dear " + Request["full_name"].ToString() + ",\n" +
                                    "\n"+
                                    "Thank you for sending your amplifier in to be repaired under our recall campaign. Our factory technicians have implemented the circuit modifications and parts upgrades necessary to correct the defect and your amplifier is now safe to use."+"\n"+
                                    "\n"+
                                    "When we received your amplifier, we took the time to note its switch and control settings and have reset these the same way we received them so you can quickly re-install your amplifier and start enjoying your music again. We have also verified the operation of your amplifier to ensure that it meets or exceeds its original specifications."+"\n"+
                                    "\n"+
                                    "As a token of our appreciation, please accept the enclosed t-shirt along with our heartfelt thanks for choosing JL Audio products for your audio system. We sincerely apologize for any inconvenience caused by this recall."+"\n"+
                                    "\n"+
                                    "Best regards," +"\n"+
                                    "\n"+
                                    "Jeff Scoon" + "\n" +
                                    "VP-Electronics";

        


        Response.Clear(); //this clears the Response of any headers or previous output
        Response.Buffer = true; //make sure that the entire output is rendered simultaneously

        Response.ContentType = "application/msword";
        

        Response.Write(TextBox1.Text);
        Response.End();


    }



}
