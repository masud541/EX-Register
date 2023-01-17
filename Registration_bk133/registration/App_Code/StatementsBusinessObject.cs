using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using StatementsDataSetTableAdapters;

[DataObject(true)]
public class StatementsBusinessObject
{
	
    [DataObjectMethod(DataObjectMethodType.Select)]
    public StatementsDataSet.CUST_ID_RETRIEVEDataTable SelectRetreiveCustIDs()
    {
        CUST_ID_RETRIEVETableAdapter da = new CUST_ID_RETRIEVETableAdapter();
        return da.GetDataCustID();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public StatementsDataSet.SX_SALES_STATEMENT_EMAIL_HISTDataTable SelectRetreiveCustIDs(DateTime email_date, string cust_id)
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();
        return da.GetDataStatements(email_date, cust_id);

    }

    public void InsertSalesStatement(string email_to, string processed, string process_type, string email_flag, string print_flag, string printed, string rep_email, int cust_id)
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();

        da.InsertSalesStatementsEmail(email_to, processed, process_type, email_flag, print_flag, printed, rep_email, cust_id);

    }

    public void InsertSalesStatementWithSeq(int next_seq, string email_to, string processed, string process_type, string email_flag, string print_flag, string printed, string rep_email, int cust_id)
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();

        da.InsertWithSeq(next_seq, email_to, processed, process_type, email_flag, print_flag, printed, rep_email, cust_id);

    }


    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateEmailPrintFlag(string AUTOMATED_EMAIL_TO, string PRINTED, string EMAIL_FLAG, string PRINT_FLAG, string PROCESS_TYPE, decimal sx_sales_statement_id, string DEALER_NAME, string CUSTOMER_ID, string REP_FIRM, DateTime EMAIL_DATE, string PROCESSED, decimal original_SX_SALES_STATEMENT_ID)
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();
        da.UpdateSalesStatementEmailPrint(EMAIL_FLAG, PRINT_FLAG, AUTOMATED_EMAIL_TO, PRINTED, PROCESS_TYPE, original_SX_SALES_STATEMENT_ID);
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateProcessed(string processed, string process_type, int sx_sales_statement_id)
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();
        da.UpdateSalesStatementProcessed(processed, process_type, sx_sales_statement_id);
    }

    public string SelectCustomerType(int cust_id, string email)
    {
        CUST_ID_RETRIEVETableAdapter da = new CUST_ID_RETRIEVETableAdapter();

        return da.SelectCustType(cust_id, email).ToString();
    
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public StatementsDataSet.CUSTOMERSDataTable SelectCustomers()
    {
        CUSTOMERSTableAdapter da = new CUSTOMERSTableAdapter();

        return da.GetDataCustomers();
    }

    public void DeleteStatements()
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();
        da.DeleteStatements();
    }

    public int SelectNextInsertSeq()
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();

        return Convert.ToInt32(da.SelectNextVal());

        
    }


    public StatementsDataSet.SX_SALES_STATEMENT_EMAIL_HISTDataTable SelectStatement(int statement_id)
    {
        SX_SALES_STATEMENT_EMAIL_HISTTableAdapter da = new SX_SALES_STATEMENT_EMAIL_HISTTableAdapter();

        return da.GetDataStatement(statement_id);
    }

}