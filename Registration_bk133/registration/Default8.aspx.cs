using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net;
using System.Text;
using System.IO;

public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RSDataSet.RS_REGISTRATIONDataTable dt = new RSDataSet.RS_REGISTRATIONDataTable();
        RSBusinessObject rso = new RSBusinessObject();

        dt = rso.SelectRegistrationBySerial("%");

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            RSDataSet.RS_REGISTRATIONRow row = (RSDataSet.RS_REGISTRATIONRow)dt[i];

            if (row.OPT_IN == "Y")
            {
                Session["email"] = row.EMAIL;
                Session["first_name"] = row.FIRST_NAME;
                Session["last_name"] = row.LAST_NAME;
                Session["address"] = row.CUSTOMER_ADDRESS;
                Session["city"] = row.CUSTOMER_CITY;
                Session["state"] = row.CUSTOMER_STATE;
                Session["country"] = row.CUSTOMER_COUNTRY;
                Session["zip"] = row.CUSTOMER_ZIP;

                this.update_bronto();
            }
        
        }

        

        //Response.Write(dt.Rows.Count);
        
        
    }

    protected void update_bronto()
    {
        ASCIIEncoding encoding = new ASCIIEncoding();
        string postData;// = "userid=" + strId;
        ///postData += ("&username=" + strName);
        ///
        string mobile = "Y";
        string home = "";
        string marine = "";
        string power = "";

        

        postData = "fn=Mail_ActionPage_FormResponse&pid=45jszcq7sd31t643e4s2418awc0hj&ssid=12532" +
            "&email=" + Session["email"].ToString() +
            "&field_data[62051]=" + Session["first_name"].ToString() +  //first name
            "&field_data[62052]=" + Session["last_name"].ToString() +  //last name
            "&field_data[62061]=" + Session["address"].ToString() +  //address
            "&field_data[62058]=" + Session["city"].ToString() +  //city
            "&field_data[62060]=" + Session["state"].ToString() +  //state
            "&field_data[63055]=" + Session["country"].ToString() +  //country
            "&field_data[62059]=" + Session["zip"].ToString() +  //zip
            //"&field_data[62057]=insertvaluehere" +  //gender
            //"&field_data[64044]=insertvaluehere" +  //age range
            "&field_data[64066]=" + mobile +  //mobile
            "&field_data[64067]=" + home +    //home
            "&field_data[64068]=" + marine +  //marine
            "&field_data[64069]=" + power +  //powersports
            "&list_data[204342]=checked";  //list selection


        byte[] data = encoding.GetBytes(postData);

        // Prepare web request...
        HttpWebRequest myRequest =
          (HttpWebRequest)WebRequest.Create("http://shopatron.bm23.com/public/actionpage/subscriber_add/");
        myRequest.Method = "POST";
        myRequest.ContentType = "application/x-www-form-urlencoded";
        myRequest.ContentLength = data.Length;
        Stream newStream = myRequest.GetRequestStream();
        // Send the data.
        newStream.Write(data, 0, data.Length);
        newStream.Close();


    }

}
