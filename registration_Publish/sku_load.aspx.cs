using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RADataSetTableAdapters;

public partial class sku_load : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DP_SKU_MASTER_TEMPTableAdapter existing_sku_da = new DP_SKU_MASTER_TEMPTableAdapter();
        //RADataSet.DP_SKU_MASTER_TEMPDataTable existing_sku_dt = new RADataSet.DP_SKU_MASTER_TEMPDataTable();
        //existing_sku_da.FillByMasterSkuTemp(existing_sku_dt);

        //DP_SKU_MASTER_TEMP_PRODTableAdapter prod_sku_da = new DP_SKU_MASTER_TEMP_PRODTableAdapter();

        //for (int i = 0; i < existing_sku_dt.Rows.Count; i++)
        //{
        //    RADataSet.DP_SKU_MASTER_TEMPRow existing_sku_row = (RADataSet.DP_SKU_MASTER_TEMPRow)existing_sku_dt.Rows[i];

        //    prod_sku_da.InsertSkusProd(existing_sku_row.NAME, existing_sku_row.UPC, existing_sku_row.SKU, existing_sku_row.SHORT_DESCR,
        //        existing_sku_row.LONG_DESCR, existing_sku_row.AVAILABILITY, existing_sku_row.CATEGORY, existing_sku_row.SUB_CATEGORY1,
        //        existing_sku_row.SUB_CATEGORY2, existing_sku_row.SUB_CATEGORY3, existing_sku_row.SUB_CATEGORY4, existing_sku_row.CATEGORY_RANK,
        //        existing_sku_row.DEALER_COST, existing_sku_row.RETAIL_PRICE, existing_sku_row.MAP_PRICE, existing_sku_row.MFG_OFFER_PRICE,
        //        existing_sku_row.AVG_DEALER_MARGIN, existing_sku_row.IMAGE, existing_sku_row.ACTIVE, existing_sku_row.WEIGHT, existing_sku_row.LENGTH,
        //        existing_sku_row.HEIGHT, existing_sku_row.WIDTH, existing_sku_row.ADDITIONAL_IMG_NAME1, existing_sku_row.ADDITIONAL_IMG_FILE1,
        //        existing_sku_row.ADDITIONAL_IMG_NAME2, existing_sku_row.ADDITIONAL_IMG_FILE2, existing_sku_row.ADDITIONAL_IMG_NAME3, existing_sku_row.ADDITIONAL_IMG_FILE3,
        //        existing_sku_row.ADDITIONAL_IMG_NAME4, existing_sku_row.ADDITIONAL_IMG_FILE4, existing_sku_row.ADDITIONAL_IMG_NAME5, existing_sku_row.ADDITIONAL_IMG_FILE5,
        //        existing_sku_row.SPEC_TYPE1, existing_sku_row.SPEC_NAME1, existing_sku_row.SPEC_DESCRIPTION1,
        //        existing_sku_row.SPEC_TYPE2, existing_sku_row.SPEC_NAME2, existing_sku_row.SPEC_DESCRIPTION2,
        //        existing_sku_row.SPEC_TYPE3, existing_sku_row.SPEC_NAME3, existing_sku_row.SPEC_DESCRIPTION3,
        //        existing_sku_row.SPEC_TYPE4, existing_sku_row.SPEC_NAME4, existing_sku_row.SPEC_DESCRIPTION4,
        //        existing_sku_row.SPEC_TYPE5, existing_sku_row.SPEC_NAME5, existing_sku_row.SPEC_DESCRIPTION5);
        //}

    }
}
