using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using RCDataSetTableAdapters;
using System.ComponentModel;

[DataObject(true)]
public class RCBusinessObject
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.RC_SERIAL_SOLDDataTable SelectSerialDetails(string serial1, string serial2)
    {
        RC_SERIAL_SOLDTableAdapter da = new RC_SERIAL_SOLDTableAdapter();

        return da.GetDataSerial(serial1, serial2);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.RC_SERIAL_SOLDDataTable SelectSerialDetailsAlreadySubmitted(string serial1, string serial2)
    {
        RC_SERIAL_SOLDTableAdapter da = new RC_SERIAL_SOLDTableAdapter();

        return da.GetDataSerialAlreadyRequested(serial1, serial2);

    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateSerialSubmitted(string serial)
    {
        RC_SERIAL_SOLDTableAdapter da = new RC_SERIAL_SOLDTableAdapter();

        da.UpdatSerialRequestedStatus(serial);
    }



    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.RC_RECALLDataTable SelectRCByRCorRA(string rc_num, string ra_num)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return da.GetDataRCByRCorRA(rc_num.ToUpper(), ra_num.ToUpper());
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.RC_RECALLDataTable SelectRCByRCorEmail(string rc_num, string email)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return da.GetDataRCbyRCorEmail(rc_num.ToUpper(), email.ToUpper());
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRCItems(int recall_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();

        return da.GetDataRAItemsByRCSeq(recall_seq);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.DP_RA_FM_PRO_STATUS_LINE_ITEMDataTable SelectItemStatus(int item_seq)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();

        return da.GetDataLineItemSeq(item_seq);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.DP_RA_FM_PRO_STATUS_LINE_ITEMDataTable SelectPublicItemStatus(int item_seq)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();

        return da.GetDataPublicLineItemSeq(item_seq);
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertsearchResult(string serial, string result)
    {
        RC_SEARCH_RESULTTableAdapter da = new RC_SEARCH_RESULTTableAdapter();

        da.InsertSearchResult(serial, result);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RCDataSet.RC_SEARCH_RESULTDataTable SelectSerachResult()
    {
        RC_SEARCH_RESULTTableAdapter da = new RC_SEARCH_RESULTTableAdapter();

        return da.GetDataSearchResults();
    }
    

    public void InsertRCItemStatus(int item_seq, string status, string comments)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();

        da.InsertRCItemStatus(item_seq, status, comments);
    
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateCustomerInfo(string LAST_NAME, string FIRST_NAME, string PHONE, string EMAIL, string DEALER_NUM, string TO_ADDRESS,
                              string TO_CITY, string TO_STATE, string TO_ZIP,string SHIRT_SIZE, string RC_NUM_DISPLAY, string COMMENTS, 
                              string PACKAGING, string RA_NUMBER, int Original_RECALL_SEQ)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        da.UpdateCustomerInfo(LAST_NAME, FIRST_NAME, PHONE, EMAIL, DEALER_NUM, TO_ADDRESS,
                              TO_CITY, TO_STATE, TO_ZIP, SHIRT_SIZE, Original_RECALL_SEQ);
    }

    public int SelectCountSerial(string serial)
    {
        RC_SERIAL_SOLDTableAdapter da = new RC_SERIAL_SOLDTableAdapter();

        return Convert.ToInt32(da.SelectCountSerial(serial));
    }

    public void InsertRCItem(int recall_seq, string serial)
    {
        RC_ITEMTableAdapter da = new RC_ITEMTableAdapter();

        da.InsertRCItem(recall_seq, serial);
    }

    public int SelectNextRCSeq()
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return Convert.ToInt32(da.SelecNextRCSeq());
    }

    public RCDataSet.RC_RECALLDataTable SelectRCBySeq(int rc_seq)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return da.GetDataRCBySeq(rc_seq);
    }

    public void UpdateRCStatus(int rc_seq, string status)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();



        da.UpdateRecallStatus(status, rc_seq);
    }
    public void UpdateRCRANum(int rc_seq, int ra_seq )
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        da.UpdateRASeq(ra_seq, rc_seq);
    }

    
    public void InsertRC(int recall_seq, string last_name, string first_name, string phone, string email, string comments,
                         string to_country, string to_address, string to_city, string to_state, string to_zip,
                         string packaging, string shirt_size, string dealer, string opt_in)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        da.InsertRC(recall_seq, last_name, first_name, phone, email, comments, to_country, to_address,
                    to_city, to_state, to_zip, packaging, shirt_size, dealer, opt_in);
    }


    public int SelectRcEmailCount(string email)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();
        
        return Convert.ToInt32(da.SelectRCEmailCount(email));
    }

    public string SelectDistinctPromoCode(string email)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return da.SelectDistinctDiscountCode(email).ToString();
    }

    public string SelectNextPromoCode()
    {
        RC_PROMOTableAdapter da = new RC_PROMOTableAdapter();

        return da.SelectNextPromoCode().ToString();
    }

    public int SelectCountSpreadsheetSerial(string serial)
    {
        RC_SERIAL_SOLDTableAdapter da = new RC_SERIAL_SOLDTableAdapter();

        return Convert.ToInt32(da.SelectCountSerial(serial));
    }

    public int SelectCountPhxSerial(string serial)
    {
        trECODoneTableAdapter da = new trECODoneTableAdapter();

        return Convert.ToInt32(da.SelectCountSerial(serial));
    }

    public int SelectCountSerialLineItem(string serial)
    {
        RC_ITEMTableAdapter da = new RC_ITEMTableAdapter();

        return Convert.ToInt32(da.SelectCountSerial(serial));
    }

    public int SelectCountSerialShipped(string serail)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();

        return Convert.ToInt32(da.SelectCountSerialShipped(serail));
    }

    public int SelectCountSerialNotShipped(string serail)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();

        return Convert.ToInt32(da.SelectCountSerialNotShipped(serail));
    }

    public int SelectCountRCSeq(int rc_seq)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return Convert.ToInt32(da.SelectCountRCSeq(rc_seq));
    }

    public string SelectEmailByRC(int rc)
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return da.SelectEmailByRC(rc).ToString();
    }

    public string SelectModelSerial(string serial)
    {
        RC_SERIAL_SOLDTableAdapter da = new RC_SERIAL_SOLDTableAdapter();

        return da.SelectModelSerialBySerial(serial).ToString();
    }

    public string SelectPDFseq()
    {
        RC_RECALLTableAdapter da = new RC_RECALLTableAdapter();

        return da.SelectPDFseq().ToString();

    }
}
