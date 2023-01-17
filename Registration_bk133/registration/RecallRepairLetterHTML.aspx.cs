using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecallRepairLetterHTML : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.ToShortDateString()+"<br />"+
                                    "<br />"+
                                    Request["full_name"].ToString()+"<br />"+
                                    Request["address"].ToString() + "<br />" +
                                    Request["city_st_zip"].ToString()+"<br />"+
                                    "<br />"+
                                    "Re: AMP "+Request["model_sn"].ToString()+"<br />"+
                                    "<br />"+
                                    "Dear " + Request["full_name"].ToString() + ",<br />" +
                                    "<br />"+
                                    "Thank you for sending your amplifier in to be repaired under our recall campaign. Our factory technicians have implemented the circuit modifications and parts upgrades necessary to correct the defect and your amplifier is now safe to use."+"<br />"+
                                    "<br />"+
                                    "When we received your amplifier, we took the time to note its switch and control settings and have reset these the same way we received them so you can quickly re-install your amplifier and start enjoying your music again. We have also verified the operation of your amplifier to ensure that it meets or exceeds its original specifications."+"<br />"+
                                    "<br />"+
                                    "As a token of our appreciation, please accept the enclosed t-shirt along with our heartfelt thanks for choosing JL Audio products for your audio system. We sincerely apologize for any inconvenience caused by this recall."+"<br />"+
                                    "<br />"+
                                    "Best regards," +"<br />"+
                                    "<br />"+
                                    "Jeff Scoon" + "<br />" +
                                    "VP-Electronics");

    }
}
