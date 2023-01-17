using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecallStatusCheck : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label8.Visible = false;
        Label9.Visible = false;

        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();

        if (GridView1.Rows.Count > 0)
        {
            GridView1.SelectedIndex = 0;
            GridView1_SelectedIndexChanged(sender, e);
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2.DataBind();
        if (GridView2.Rows.Count > 0)
        {
            GridView2.SelectedIndex = 0;


            if (GridView3.Rows.Count > 0)
            {
                GridView3.Rows[0].Cells[2].BackColor = System.Drawing.Color.Aqua;
            }
            
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (GridView2.Rows.Count > 0)
        {
            Label8.Visible = true;
        }
        
    }
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (GridView3.Rows.Count > 0)
        {
            Label9.Visible = true;
        }
        
    }
}
