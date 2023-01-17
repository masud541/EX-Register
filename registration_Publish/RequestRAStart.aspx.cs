using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestRAStart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonStart_Click(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        int ra_seq = rbo.SelectNextRaSeq();

        Response.Redirect("RequestRAH.aspx?rs=" + ra_seq);

    }
}
