using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using JLUtilsDataSetTableAdapters;
using System.ComponentModel;

[DataObject(true)]
public class JLUtilsBusinessObject
{
	public JLUtilsBusinessObject()
	{

	}


    public void DeleteVal(decimal request_id)
    {
        DP_TEMP_VAL_CATEGORYTableAdapter da = new DP_TEMP_VAL_CATEGORYTableAdapter();

        da.DeleteTempValCat();
    }

    public void InsertVal(string char_val, decimal num_val, DateTime date_val, decimal request_id)
    {
        DP_TEMP_VAL_CATEGORYTableAdapter da = new DP_TEMP_VAL_CATEGORYTableAdapter();

        da.InsertTempValCat(char_val, num_val, date_val, request_id);
    }

    public int SelectNextRequestSeq()
    {
        DP_TEMP_VAL_CATEGORYTableAdapter da = new DP_TEMP_VAL_CATEGORYTableAdapter();

        return Convert.ToInt32(da.SelectNextRequestSeq());
    }
    

}