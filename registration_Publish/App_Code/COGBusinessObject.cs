using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using COGDataSetTableAdapters;
using System.ComponentModel;

[DataObject(true)]
public class COGBusinessObject
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public COGDataSet.Transaction_History_COGDataTable SelectCostFromMaxByDate(DateTime from, DateTime to)
    {
        Transaction_History_COGTableAdapter da = new Transaction_History_COGTableAdapter();

        return da.GetDataMAxCost(from, to);

    }

    public void InsertTempSkuCost(string sku, decimal cost)
    {
        JL_TEMP_MAX_SKU_COSTTableAdapter da = new JL_TEMP_MAX_SKU_COSTTableAdapter();

        da.InsertSkuCost(sku, cost);
    
    }

    public void DeleteTempCost()
    {
        JL_TEMP_MAX_SKU_COSTTableAdapter da = new JL_TEMP_MAX_SKU_COSTTableAdapter();

        da.DeleteTempCost();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public COGDataSet.JL_Combined_COGDataTable SelectCombinedCOG(DateTime from, DateTime to, string sku)
    {
        JL_Combined_COGTableAdapter da = new JL_Combined_COGTableAdapter();

        if (sku == "")
        {
            sku = "%";
        }

        return da.GetDataCOGCombined(sku, from, to);


    }
}
