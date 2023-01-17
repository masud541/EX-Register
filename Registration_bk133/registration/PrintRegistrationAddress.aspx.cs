using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RSDataSetTableAdapters;

public partial class PrintRegistrationAddress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["registration_seq"] != null)
        {


            RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

            RSDataSet.RS_REGISTRATIONDataTable dt = da.GetDataRegistrationSeq(Convert.ToInt32(Request["registration_seq"]));

            RSDataSet.RS_REGISTRATIONRow row = (RSDataSet.RS_REGISTRATIONRow)dt[0];

            LabelName.Text = row.FIRST_NAME + " " + row.LAST_NAME;
            LabelAddress1.Text = row.CUSTOMER_ADDRESS;
            LabelAddress2.Text = row.CUSTOMER_CITY + ", " + row.CUSTOMER_STATE + " " + row.CUSTOMER_ZIP;
            LabelCountry.Text = row.CUSTOMER_COUNTRY;
        }

    }
}