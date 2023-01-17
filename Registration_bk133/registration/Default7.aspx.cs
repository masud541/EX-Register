using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net;
using System.Text;
using System.IO;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    //    this.OnPostInfoClick(sender, e);

    }

    private void OnPostInfoClick(object sender, System.EventArgs e)
    {
        // string strId = UserId_TextBox.Text;
        // string strName = Name_TextBox.Text;

        ASCIIEncoding encoding = new ASCIIEncoding();
        string postData;// = "userid=" + strId;
        ///postData += ("&username=" + strName);


        postData = "fn=Mail_ActionPage_FormResponse&pid=45jszcq7sd31t643e4s2418awc0hj&ssid=12532&email=cpena@jlaudio.com&field_data[62051]=insertvaluehere&field_data[62052]=insertvaluehere&field_data[62061]=insertvaluehere&field_data[62058]=insertvaluehere&field_data[62060]=insertvaluehere&field_data[63055]=insertvaluehere&field_data[62059]=insertvaluehere&field_data[62057]=insertvaluehere&field_data[64044]=insertvaluehere&field_data[64066]=Yes&field_data[64067]=Y&field_data[64068]=Yes&field_data[64069]=Yes&list_data[204342]=checked";
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

        Response.Write(DateTime.Now.ToShortTimeString());
    }
}
