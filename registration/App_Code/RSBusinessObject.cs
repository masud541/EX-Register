using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using RSDataSetTableAdapters;

[DataObject(true)]
public class RSBusinessObject
{

    public string TestC7()
    {
        return "Test C7";
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RSDataSet.RS_C7DataTable SelectC7()
    {
        RS_C7TableAdapter da = new RS_C7TableAdapter();

        return da.GetDataC7();

    }

    public RSDataSet.RS_REGISTRATIONDataTable SelectRegistrationBySerial(string serial)
    {
        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        return da.GetDataRegistrationBySerial(serial);
    }

    public string SelectCategoryBySku(string sku)
    {

        RS_CATEGORYTableAdapter da = new RS_CATEGORYTableAdapter();

        return da.SelectCategoryBySku(sku).ToString();


    }

   public void InserRegistration(DateTime registration_date, DateTime purchase_date, string last_name, string first_name,
                               string phone, string email, string customer_country,
                               string customer_address, string customer_city, string customer_state, string customer_zip, 
                               string dealer_name, string dealer_city,
                               string dealer_state, string purchase_type, string installation_type, string shirt_size,
                               string opt_in, string sku, string serial)
    {
        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        da.InsertRegistraation(registration_date, purchase_date, last_name, first_name, phone, email, customer_country,
                               customer_address, customer_city, customer_state, customer_zip, dealer_name, dealer_city,
                               dealer_state, purchase_type, installation_type, shirt_size, opt_in, sku, serial);
    }

   public void InserRegistrationC7(DateTime registration_date, DateTime purchase_date, string last_name, string first_name,
                              string phone, string email, string customer_country,
                              string customer_address, string customer_city, string customer_state, string customer_zip,
                              string dealer_name, string dealer_city,
                              string dealer_state, string purchase_type, string installation_type, string shirt_size,
                              string opt_in, string sku, string serial, string INSTALLATION_CATEGORY, string CUSTOMER_ADDRESS_2, string DEALER_COUNTRY, string MARKETPLACE)
   {
       RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

       da.InsertRegistrationC7(registration_date, purchase_date, last_name, first_name, phone, email, customer_country,
                              customer_address, customer_city, customer_state, customer_zip, dealer_name, dealer_city,
                              dealer_state, purchase_type, installation_type, shirt_size, opt_in, sku, serial, INSTALLATION_CATEGORY, CUSTOMER_ADDRESS_2, DEALER_COUNTRY, MARKETPLACE);
   }

    public int SelectCountEmail(string email)
    {
        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        return Convert.ToInt32(da.SelectCountEmail(email));
    }

    public int SelectCountSerialSku(string serial, string sku)
    {
        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        return Convert.ToInt32(da.SelectCountSerialSku(serial, sku));
    }

    public RSDataSet.JLWSerialDataTable SelectJLWSerial(string serial)
    {
        JLWSerialTableAdapter da = new JLWSerialTableAdapter();

        return da.GetDataJLWSerial(serial);
    }

    public RSDataSet.JLWSerialDataTable SelectSimilarSerial(string serial)
    {
        JLWSerialTableAdapter da = new JLWSerialTableAdapter();

        return da.GetDataSimilarSerial(serial);
    }

    public int SelectCountPremiumSku(string sku)
    {
       

        RS_PREMIUMTableAdapter da = new RS_PREMIUMTableAdapter();

        return Convert.ToInt32(da.SelectCountPremiumSku(sku));

    }

    public RSDataSet.RS_REGISTRATIONDataTable SelectRegistrationBySeq(int registration_seq)
    {
        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        return da.GetDataRegistrationSeq(registration_seq);

    }

    public int SelectMaxRegistrationiationSeq(string email)
    {

        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        return Convert.ToInt32(da.SelectMaxRegistrationSeqByEmail(email));

    }

    public void DeleteRegistrations1234TEST()
    {
        RS_REGISTRATIONTableAdapter da = new RS_REGISTRATIONTableAdapter();

        da.DeleteRegistrations1234TEST();

    }
}
