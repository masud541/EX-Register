using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ActionCDs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack && JLUtils.IsAuthenticated() == "YES")
        {
            Session["ActionCodeError"] = "";

        }

        if (Session["ActionCodeError"] != null)
        {

            LabelActionCDError.Text = Session["ActionCodeError"].ToString();
            Session["ActionCodeError"] = "";
        }

        if (LabelActionCDError.Text != "")
        {
            Response.Write("<script>alert('Error: Please review error message on page.')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        try
        {
            LabelActionCDInsertError.Text = "";

            rbo.InsertActionCD(TextBoxCode.Text, TextBoxDesc.Text);

            TextBoxCode.Text = "";
            TextBoxDesc.Text = "";

            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            LabelActionCDInsertError.Text = ex.Message;
        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Page_Load(sender, e);
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        Page_Load(sender, e);
    }
}
