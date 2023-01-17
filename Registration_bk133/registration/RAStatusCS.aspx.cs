using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RAStatusCS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownListDealerAndContact.DataBind();

            if (DropDownListDealerAndContact.Items.Count > 0)
            {
                DropDownListDealerAndContact.SelectedIndex = 0;
            //    DropDownListDealerAndContact_SelectedIndexChanged(sender, e);
            } 
            
           /* if (Request["ra"] != null)
            {
                RABusinessObject rbo = new RABusinessObject();
                DropDownListDealerAndContact.SelectedValue = rbo.SelectDPUserIDByRaSeq(Convert.ToInt32(Request["ra"]));

                DropDownList1.SelectedValue = Request["ra"].ToString();
            }*/

            if (JLUtils.HasRole("RA_DEALER"))
            {
                DropDownListDealerAndContact.SelectedValue = Session["USER"].ToString();
                DropDownListDealerAndContact.Enabled = false;
            }

        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void DropDownListDealerAndContact_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView3.SelectedIndex = 0;
        GridView3.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2.DataBind();
        GridView2.SelectedIndex = 0;
        

        GridView1.DataBind();
    }
    protected void GridView3_PageIndexChanged(object sender, EventArgs e)
    {
        GridView3.SelectedIndex = 0;
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // DataControlRowType.DataRow

            DataRowView req_reow = (DataRowView)e.Row.DataItem;
            //  Response.Write("0"+e.Row.Cells[2].Text);

            // e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;

            if (req_reow.Row[13].ToString() == "Approved")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;
            }
            if (req_reow.Row[13].ToString() == "Rejected")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
            }
            if (req_reow.Row[13].ToString() == "Appealed")
            {
                e.Row.Cells[2].ForeColor = System.Drawing.Color.Orange;
            }

        }
    }
}
