using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestRAFinalized : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          if (Session["SumittedMessage"] != null)
       {
           LabelSumittedMessage.Text = Session["SumittedMessage"].ToString();

           Session["SumittedMessage"] = null;

       }
       else
       {
           Response.Redirect("Main.aspx");
       }

       if (Session["Timestamp1"] != null )
        {
            LabelHeading1.Visible = true;
            LabelRT1.Visible = true;
            LabelDateTimeStamp1.Visible = true;

            LabelDateTimeStamp1.Text = Session["Timestamp1"].ToString();

            Session["Timestamp1"] = null; 

        }
       if (Session["Timestamp2"] != null)
       {
           LabelHeading2.Visible = true;
           LabelRT2.Visible = true;
           LabelDateTimeStamp2.Visible = true;

           LabelDateTimeStamp2.Text = Session["Timestamp2"].ToString();

           Session["Timestamp2"] = null;


       }

       if (Session["ContainsAmp"] != null)
       {
           if (Convert.ToInt32(Session["ContainsAmp"].ToString()) > 0)
           {
               const string someScript = "alertMe";
               if (!ClientScript.IsStartupScriptRegistered(this.GetType(), someScript))
               {
                   ClientScript.RegisterStartupScript(this.GetType(),
                       someScript, "alert('Reminder - AMPLIFIERS MUST BE SENT TO: JL Audio, Inc. 3343 East Wier Avenue, Phoenix, AZ 85049.')", true);
               }

           }

           Session["ContainsAmp"] = null;
       }
    }
}
