using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestSplit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
//        RABusinessObject rbo = new RABusinessObject();



    //    RADataSet.DP_RA_REQUESTDataTable dt = rbo.SelectRAHBySeq(Convert.ToInt32(GridView6.SelectedValue));
  //      RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable dtl = rbo.SelectRALineItemByItemSeq(Convert.ToInt32(GridView1.SelectedValue));

       
    //    DropDownListApprovalCD.SelectedIndex = 0;


        /*if (LabelSku.Text != " ")
        {
            DropDownList1.SelectedValue = rbo.SelectSkuCategory(LabelSku.Text);
            DropDownList2.DataBind();
            DropDownList2.SelectedValue = rbo.SelectSkuSubCategory(LabelSku.Text);
            DropDownList3.DataBind();
            DropDownList3.SelectedValue = dt[0].category_master_seq.ToString(); 
        }*/
        //  DropDownList3.SelectedValue = dtl[0].category_master_seq.ToString(); 

      //  DropDownListApprovalCD.SelectedValue = dtl[0].APPROVAL_CD_SEQ.ToString();



        //    DropDownListApprovalCD.Enabled = true;
            
        //    DropDownListApprovalCD.Enabled = false;

        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
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
        if (GridView1.Rows.Count > 0)
        {
            DropDownListApprovalCD.Enabled = true;
            Button1.Enabled = true;
        }
        else
        {
            DropDownListApprovalCD.Enabled = false;
            Button1.Enabled = false;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.SelectedIndex = -1;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectedIndex = 0;
        GridView1_SelectedIndexChanged(sender, e);


        
      //  DropDownListApprovalCD.Enabled = false;
    }
    protected void GridView6_PageIndexChanged(object sender, EventArgs e)
    {
        GridView6.DataBind();
        GridView1.DataBind();

        GridView6.SelectedIndex = -1;
        GridView6_SelectedIndexChanged(sender, e);


        GridView1.SelectedIndex = -1;
        GridView1_SelectedIndexChanged(sender, e);

        DropDownListApprovalCD.Enabled = false;
        Button1.Enabled = false;


     //   DropDownListApprovalCD.Enabled = false;
    }
    protected void GridView6_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // DataControlRowType.DataRow

            DataRowView req_reow = (DataRowView)e.Row.DataItem;
            //  Response.Write("0"+e.Row.Cells[2].Text);

            // e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;

            if (req_reow.Row[34].ToString() == "1")
            {
                e.Row.Enabled = false;
            }

            if (req_reow.Row[37].ToString() == "0")
            {
                e.Row.Enabled = false;
            }
            if (req_reow.Row[35].ToString() != "0")
            {
                e.Row.Cells[4].ForeColor = System.Drawing.Color.Green;
            }
            if (req_reow.Row[36].ToString() != "0")
            {
                e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
            }
            if (req_reow.Row[38].ToString() != "0")
            {
                e.Row.Cells[7].ForeColor = System.Drawing.Color.Orange;
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RABusinessObject rbo = new RABusinessObject();

        int new_ra_seq = 0;

        bool items_checked = false;

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                items_checked = true;
               // Response.Write(CheckBoxList1.Items[i].Value);
            }
        }

        if (items_checked)
        {
            new_ra_seq = rbo.SelectNextRaSeq();

            RADataSet.DP_RA_REQUESTDataTable dt = new RADataSet.DP_RA_REQUESTDataTable();
            RADataSetTableAdapters.DP_RA_REQUESTTableAdapter da = new RADataSetTableAdapters.DP_RA_REQUESTTableAdapter();

            dt = da.GetDataRAHBySeq(Convert.ToInt32(GridView6.SelectedValue));

            RADataSet.DP_RA_REQUESTRow ra_row = (RADataSet.DP_RA_REQUESTRow)dt.Rows[0];

            rbo.InsertRARequestH(new_ra_seq, ra_row.DP_USER_ID,
                                 Convert.ToInt32(ra_row.SXCUST_FK_FOR_REQUEST), ra_row.SXCUST_FK_FOR_REQUEST_SHIP,
                                 ra_row.ship_address1, ra_row.ship_address2.Replace("NONE", ""), ra_row.ship_city,
                                 ra_row.ship_state, ra_row.ship_zipcode, ra_row.SHIP_DIFFERENT);
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                  //  Response.Write(CheckBoxList1.Items[i].Value);
                    rbo.UpdateRaSeqByRaItemSeq(new_ra_seq, Convert.ToInt32(CheckBoxList1.Items[i].Value));
                }
            }

           // GridView6.DataBind();
            GridView1.DataBind();
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                CheckBoxList1.Items[i].Selected = false;
               
            }
            CheckBoxList1.DataBind();

            DropDownListApprovalCD.Enabled = false;
            Button1.Enabled = false;
            

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView5.DataBind();
    }
}
