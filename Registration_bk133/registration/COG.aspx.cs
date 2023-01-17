using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class COG : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        COGBusinessObject cbo = new COGBusinessObject();

        COGDataSet.Transaction_History_COGDataTable dt = cbo.SelectCostFromMaxByDate(Convert.ToDateTime(TextBox1.Text), Convert.ToDateTime(TextBox2.Text));

        cbo.DeleteTempCost();

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            COGDataSet.Transaction_History_COGRow dr = (COGDataSet.Transaction_History_COGRow)dt.Rows[i];

            decimal price = dr.cost / dr.qty;

            cbo.InsertTempSkuCost(dr.sku.Trim(), price);

        }

        GridView1.DataBind();
    }
}
