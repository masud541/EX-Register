using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubcatActionCD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (DropDownListActionCD.SelectedValue != "0")
            {
                LabelError.Text = "";

                RABusinessObject rbo = new RABusinessObject();

                rbo.InserSubcatActionCD(Convert.ToInt32(DropDownListActionCD.SelectedValue), DropDownList1.SelectedValue, DropDownList2.SelectedValue);

                DropDownListActionCD.SelectedIndex = 0;

                GridView6.DataBind();
            }
            else
            {
                LabelError.Text = "Action CD must be selected.";
            }
        }
        catch (Exception ex)
        {
            LabelError.Text = ex.Message;
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView6.DataBind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView6.DataBind();
    }
}
