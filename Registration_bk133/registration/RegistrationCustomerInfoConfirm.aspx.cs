using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Text;
using System.IO;


public partial class RegistrationCustomerInfoConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["CheckedSerial"] != null && Session["last_name"] != null)
        {
        }
        else
        {
            Response.Redirect("Registration.aspx");
        }

        //Response.Write(Session["CheckedSerial"].ToString());
        


        LabelLastName.Text = Session["last_name"].ToString();
        LabelFirstName.Text = Session["first_name"].ToString();

        LabelPhone.Text = Session["phone"].ToString();
        LabelEmail.Text = Session["email"].ToString();
        
       
        LabelCountry.Text = Session["country"].ToString();
        LabelAddress.Text = Session["address"].ToString();
        LabelCity.Text = Session["city"].ToString();
        LabelState.Text = Session["state"].ToString();
        LabelZip.Text = Session["zip"].ToString();

        
        LabelPurchaseDate.Text = Session["purchase_date"].ToString();
        LabelDealerName.Text = Session["dealer_name"].ToString();

        if (Session["purchase_type"].ToString() == "Y")
        {
            LabelPurchaseType.Text = "Online";
        }
        else if (Session["purchase_type"].ToString() == "N")
        {
            LabelPurchaseType.Text = "In Person";
        }
        LabelDealerCountry.Text = Session["dealer_country"].ToString();
        LabelDealerCity.Text = Session["dealer_city"].ToString();
        LabelDealerState.Text = Session["dealer_state"].ToString();

        if (Session["installation"].ToString() == "C")
        {
            LabelInstallation.Text = "Customer";
        }
        else if (Session["installation"].ToString() == "D")
        {
            LabelInstallation.Text = "Dealer";
        }

        LabelSize.Text = Session["size"].ToString();

        bool selected = false;

        if (Session["opt"].ToString() == "Y")
        {
            selected = true;
        }

        CheckBoxListOptIn.Items[0].Selected = selected;
    }
    protected void ButtonContinue_Click(object sender, EventArgs e)
    {
        string registration_serial =  "";
        string registration_sku = "";
        string registration_model = "";

        RSBusinessObject rso = new RSBusinessObject();

        LabelError.Text = "";

        if (GridView1.Rows.Count == 0)
        {
            registration_serial = "None Provided";
            registration_sku = Session["CheckedSerial"].ToString();
            registration_model = "";
        }
        else
        {
            registration_serial = GridView1.Rows[0].Cells[0].Text;
            registration_sku = GridView1.Rows[0].Cells[1].Text;
            registration_model = GridView1.Rows[0].Cells[3].Text;
        }


        if (rso.SelectCountSerialSku(registration_serial, registration_sku) == 0 || registration_serial == "None Provided")
        {

            string size;

            if (rso.SelectCountEmail(Session["email"].ToString()) > 0)
            {
                size = "N";
            }
            else
            {
                size = Session["size"].ToString();
            }

            rso.InserRegistration(DateTime.Now,
            Convert.ToDateTime(Session["purchase_date"]),
            Session["last_name"].ToString(),
            Session["first_name"].ToString(),
            Session["phone"].ToString(),
            Session["email"].ToString(),

            Session["country"].ToString(),
            Session["address"].ToString(),
            Session["city"].ToString(),
            Session["state"].ToString(),
            Session["zip"].ToString(),
            Session["dealer_name"].ToString(),
            Session["dealer_city"].ToString(),
            Session["dealer_state"].ToString(),
            Session["purchase_type"].ToString(),
            Session["installation"].ToString(),
            size,
            Session["opt"].ToString(),
            registration_sku.Replace("Sku: ",""),
            registration_serial);

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                Session["last_serial"] = GridView1.Rows[i].Cells[0].Text;
            }





            RABusinessObject ra = new RABusinessObject();

            ra.SendRSemail(Session["email"].ToString(),
                "JL Audio New Product Registration - " + registration_model + " " + registration_sku, 
                "Dear "+ Session["first_name"].ToString()+" "+Session["last_name"].ToString()+", "+
                "<BR/>"+
                "<BR/>"+
                "Thank you for registering your JL Audio product - " + " " + registration_sku + " " + registration_model + " - with serial number " + registration_serial + ". " +
                "<BR/>" +
                "<BR/>" +
                "Please save your receipt and keep this email as confirmation of your registration." +
                "<BR/>" +
                "<BR/>" +
                "Thank you for choosing JL Audio products." +
                "<BR/>"+
                "<BR/>" +
                //"Registration Details"+
                //                "<BR/>"+
                //"<BR/>"+

                //"Purchase Date: "+Session["purchase_date"].ToString() +"<BR/>"+
                //"Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
                //"Customer Email: " + Session["email"].ToString() + "<BR/>" +
                //"<BR/>"+
                //"Dealer Name: " + Session["dealer_name"].ToString() + "<BR/>" +
                //"Dealer City: " + Session["dealer_city"].ToString() + "<BR/>" +
                //"Dealer State: " + Session["dealer_state"].ToString() + "<BR/>" +
                //"Purchase Type: " + Session["purchase_type"].ToString().Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
                //"Installation Type: " + Session["installation"].ToString().Replace("C", "Customer").Replace("D", "Dealer") + "<BR/>" +
                //    "<BR/>"+
                //"<BR/>"+
                /*"If applicable you will receive your free gift within 2 to 3 weeks to "+*/
                //"<BR/>" +
                //Session["country"].ToString()+
                //"<BR/>"+
                //Session["address"].ToString()+
                //"<BR/>"+
                //Session["city"].ToString()+", "+Session["state"].ToString()+" "+Session["zip"].ToString()+
                //"<BR/>"+
                //"<BR/>"+
                //"Please add <a href='mailto:register@jlaudio.com'"+ 
                //"title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
                //"your acceptable email addresses list to ensure any communications from us do not "+
                //"get labeled as Spam. " + 
                "For more JL Audio information, please go to "+
                "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>"+
                "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

);

            ra.SendRSemail("frontline@jlaudio.com",
                "JL Audio New Product Registration - " + registration_model + " " + registration_sku, 
                "Thank You " + Session["first_name"].ToString() + " " + Session["last_name"].ToString() + ", " +
                "for registering your new " + registration_model + " " + registration_sku + " with us!" +
                "<BR/>" +
                "<BR/>" +
                "You’ve registered your " + registration_model + " " + registration_sku + 
                "<BR/>" +
                "<BR/>" +
                "Please, save your receipt and keep this email as confirmation of your registration." +
                "<BR/>" +
                "<BR/>" +
                "Registration Details" +
                                "<BR/>" +
                "<BR/>" +

                
                "Last Name: " + Session["last_name"].ToString() + "<BR/>" +
                "Last Name: " + Session["first_name"].ToString() + "<BR/>" +
            
                Session["country"].ToString() + "<BR/>" +
                Session["address"].ToString() + "<BR/>" +
                Session["city"].ToString() + ", "+ Session["state"].ToString() +" "+Session["zip"].ToString() + "<BR/>" +

                "<BR/>" +
                "<BR/>" +
                
                "Gift: " + size + "<BR/>" +
                "Opt In: " + Session["opt"].ToString() + "<BR/>" +
                "SKU: " + registration_sku + "<BR/>" +
                "Serail: " + registration_serial + "<BR/>" +

                "<BR/>" +
                "<BR/>" +
                

                "Purchase Date: " + Session["purchase_date"].ToString() + "<BR/>" +
                "Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
                "Customer Email: " + Session["email"].ToString() + "<BR/>" +
                "<BR/>" +

                "<BR/>" +
                "Dealer Name: " + Session["dealer_name"].ToString() + "<BR/>" +
                "Dealer City: " + Session["dealer_city"].ToString() + "<BR/>" +
                "Dealer State: " + Session["dealer_state"].ToString() + "<BR/>" +
                "Purchase Type: " + Session["purchase_type"].ToString().Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
                "Installation Type: " + Session["installation"].ToString().Replace("C", "Customer").Replace("D", "Dealer") + "<BR/>" +
                    "<BR/>" +
                "<BR/>" +
                /*"If applicable you will receive your free gift within 2 to 3 weeks to " +*/
                "<BR/>" +
                Session["country"].ToString() +
                "<BR/>" +
                Session["address"].ToString() +
                "<BR/>" +
                Session["city"].ToString() + ", " + Session["state"].ToString() + " " + Session["zip"].ToString() +
                "<BR/>" +
                "<BR/>" +
                "Please add <a href='mailto:register@jlaudio.com'" +
                "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
                "your acceptable email addresses list to ensure any communications from us do not " +
                "get labeled as Spam. For more JL Audio information, please go to " +
                "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
                "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"
);


            ra.SendRSemail("register@jlaudio.com",
                "JL Audio New Product Registration - " + registration_model + " " + registration_sku, 
                "Dear "+ Session["first_name"].ToString()+" "+Session["last_name"].ToString()+", "+
                "<BR/>"+
                "<BR/>"+
                "Thank you for registering your JL Audio product - " + registration_model + " " + registration_sku + " - with serial number " + registration_serial + ". " +
                "<BR/>" +
                "<BR/>" +
                "Please save your receipt and keep this email as confirmation of your registration." + "<BR/>" +
                "<BR/>" +
                "Thank you for choosing JL Audio products." +
                "<BR/>"+
                "<BR/>" +
                "Registration Details"+
                                "<BR/>"+
                "<BR/>"+

                "Purchase Date: "+Session["purchase_date"].ToString() +"<BR/>"+
                "Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
                "Customer Email: " + Session["email"].ToString() + "<BR/>" +
                "<BR/>"+
                "Dealer Name: " + Session["dealer_name"].ToString() + "<BR/>" +
                "Dealer City: " + Session["dealer_city"].ToString() + "<BR/>" +
                "Dealer State: " + Session["dealer_state"].ToString() + "<BR/>" +
                "Purchase Type: " + Session["purchase_type"].ToString().Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
                "Installation Type: " + Session["installation"].ToString().Replace("C", "Customer").Replace("D", "Dealer") + "<BR/>" +
                    "<BR/>"+
                "<BR/>"+
                /*"If applicable you will receive your free gift within 2 to 3 weeks to " +*/
                "<BR/>" +
                Session["country"].ToString()+
                "<BR/>"+
                Session["address"].ToString()+
                "<BR/>"+
                Session["city"].ToString()+", "+Session["state"].ToString()+" "+Session["zip"].ToString()+
                "<BR/>"+
                "<BR/>"+
                "Please add <a href='mailto:register@jlaudio.com'" +
                "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
                "your acceptable email addresses list to ensure any communications from us do not " +
                "get labeled as Spam. For more JL Audio information, please go to " +
                "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
                "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

);

            ra.SendRSemail("bpower@jlaudio.com",
               "JL Audio New Product Registration - " + registration_model + " " + registration_sku, 
               "Thank You " + Session["first_name"].ToString() + " " + Session["last_name"].ToString() + ", " +
               "for registering your new " + registration_model + " " + registration_sku + " with us!" +
               "<BR/>" +
               "<BR/>" +
               "You’ve registered your " + registration_model + " " + registration_sku + ", " + registration_serial + ". " +
                "<BR/>" +
                "<BR/>" +
                "Please, save your receipt and keep this email as confirmation of your registration." +
                "<BR/>" +
                "<BR/>" +
               "Registration Details" +
                               "<BR/>" +
               "<BR/>" +


               "Last Name: " + Session["last_name"].ToString() + "<BR/>" +
               "Last Name: " + Session["first_name"].ToString() + "<BR/>" +

               Session["country"].ToString() + "<BR/>" +
               Session["address"].ToString() + "<BR/>" +
               Session["city"].ToString() + ", " + Session["state"].ToString() + " " + Session["zip"].ToString() + "<BR/>" +

               "<BR/>" +
               "<BR/>" +

               "Gift: " + size + "<BR/>" +
               "Opt In: " + Session["opt"].ToString() + "<BR/>" +
               "SKU: " + registration_sku + "<BR/>" +
               "Serail: " + registration_serial + "<BR/>" +

               "<BR/>" +
               "<BR/>" +


               "Purchase Date: " + Session["purchase_date"].ToString() + "<BR/>" +
               "Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
               "Customer Email: " + Session["email"].ToString() + "<BR/>" +
               "<BR/>" +

               "<BR/>" +
               "Dealer Name: " + Session["dealer_name"].ToString() + "<BR/>" +
               "Dealer City: " + Session["dealer_city"].ToString() + "<BR/>" +
               "Dealer State: " + Session["dealer_state"].ToString() + "<BR/>" +
               "Purchase Type: " + Session["purchase_type"].ToString().Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
               "Installation Type: " + Session["installation"].ToString().Replace("C", "Customer").Replace("D", "Dealer") + "<BR/>" +
                   "<BR/>" +
               "<BR/>" +
               /*"If applicable you will receive your free gift within 2 to 3 weeks to " +*/
               "<BR/>" +
               Session["country"].ToString() +
               "<BR/>" +
               Session["address"].ToString() +
               "<BR/>" +
               Session["city"].ToString() + ", " + Session["state"].ToString() + " " + Session["zip"].ToString() +
               "<BR/>" +
               "<BR/>" +
               "Please add <a href='mailto:register@jlaudio.com'" +
                "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
                "your acceptable email addresses list to ensure any communications from us do not " +
                "get labeled as Spam. For more JL Audio information, please go to " +
                "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
                "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

);

            ra.SendRSemail("register@jlaudio.com",
                           "JL Audio New Product Registration - " + registration_model + " " + registration_sku,
                           "Thank You " + Session["first_name"].ToString() + " " + Session["last_name"].ToString() + ", " +
                           "for registering your new " + registration_model + " " + registration_sku + " with us!" +
                           "<BR/>" +
                           "<BR/>" +
                           "You’ve registered your " + registration_model + " " + registration_sku + ", " + registration_serial + ". " +
                            "<BR/>" +
                            "<BR/>" +
                            "Please, save your receipt and keep this email as confirmation of your registration." +
                            "<BR/>" +
                            "<BR/>" +
                           "Registration Details" +
                                           "<BR/>" +
                           "<BR/>" +


                           "Last Name: " + Session["last_name"].ToString() + "<BR/>" +
                           "Last Name: " + Session["first_name"].ToString() + "<BR/>" +

                           Session["country"].ToString() + "<BR/>" +
                           Session["address"].ToString() + "<BR/>" +
                           Session["city"].ToString() + ", " + Session["state"].ToString() + " " + Session["zip"].ToString() + "<BR/>" +

                           "<BR/>" +
                           "<BR/>" +

                           "Gift: " + size + "<BR/>" +
                           "Opt In: " + Session["opt"].ToString() + "<BR/>" +
                           "SKU: " + registration_sku + "<BR/>" +
                           "Serail: " + registration_serial + "<BR/>" +

                           "<BR/>" +
                           "<BR/>" +


                           "Purchase Date: " + Session["purchase_date"].ToString() + "<BR/>" +
                           "Customer Phone: " + Session["phone"].ToString() + "<BR/>" +
                           "Customer Email: " + Session["email"].ToString() + "<BR/>" +
                           "<BR/>" +

                           "<BR/>" +
                           "Dealer Name: " + Session["dealer_name"].ToString() + "<BR/>" +
                           "Dealer City: " + Session["dealer_city"].ToString() + "<BR/>" +
                           "Dealer State: " + Session["dealer_state"].ToString() + "<BR/>" +
                           "Purchase Type: " + Session["purchase_type"].ToString().Replace("Y", "Online").Replace("N", "In Person") + "<BR/>" +
                           "Installation Type: " + Session["installation"].ToString().Replace("C", "Customer").Replace("D", "Dealer") + "<BR/>" +
                               "<BR/>" +
                           "<BR/>" +
                           /*"If applicable you will receive your free gift within 2 to 3 weeks to " +*/
                           "<BR/>" +
                           Session["country"].ToString() +
                           "<BR/>" +
                           Session["address"].ToString() +
                           "<BR/>" +
                           Session["city"].ToString() + ", " + Session["state"].ToString() + " " + Session["zip"].ToString() +
                           "<BR/>" +
                           "<BR/>" +
                           "Please add <a href='mailto:register@jlaudio.com'" +
                            "title='mailto:register@jlaudio.com'>registerit@jlaudio.com</a> to " +
                            "your acceptable email addresses list to ensure any communications from us do not " +
                            "get labeled as Spam. For more JL Audio information, please go to " +
                            "<a href='http://www.jlaudio.com' title='http://www.jlaudio.com/'>" +
                            "www.jlaudio.com</a> or call 1-888-JLAUDIO (552-8346).<o:p></o:p></p>"

            );


            Session["CheckedSerial"] = null;

            Session["Submitted"] = "1";

            Session["Model"] = registration_model + " " + registration_sku ;


               this.OnPostInfoClick(sender, e);


            Response.Redirect("RegistrationNumber.aspx");
        }
        else
        {
            LabelError.Text = "This item has already been registered. If you have any questions please contact customer service.";
        }
    }
    protected void ButtonContinueEdit_Click(object sender, EventArgs e)
    {
        Session["Edit"] = "1";
        Response.Redirect("RegistrationCustomerInfo.aspx");
    }


    private void OnPostInfoClick(object sender, System.EventArgs e)
    {
        // string strId = UserId_TextBox.Text;
        // string strName = Name_TextBox.Text;

        ASCIIEncoding encoding = new ASCIIEncoding();
        string postData;// = "userid=" + strId;
        ///postData += ("&username=" + strName);
        ///
        string mobile;
        string home;
        string marine;
        string power;

        if (Convert.ToBoolean(Session["Mobile"]) == true)
        {
            mobile = "Y";
        }
        else
        {
            mobile = "";
        }
        if (Convert.ToBoolean(Session["Home"]) == true)
        {
            home = "Y";
        }
        else
        {
            home = "";
        }
        if (Convert.ToBoolean(Session["Marine"]) == true)
        {
            marine = "Y";
        }
        else
        {
            marine = "";
        }
        if (Convert.ToBoolean(Session["Power"]) == true)
        {
            power = "Y";
        }
        else
        {
            power = "";
        }

        
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
