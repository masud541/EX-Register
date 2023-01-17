using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//non - default using statements
using System.ComponentModel;
using RADataSetTableAdapters;
using System.Collections;
using System.Net.Mail;

/// <summary>
/// Summary description for RABusinessObject - Contains RA Business Rules
/// </summary>
/// 
[DataObject(true)]
public class RABusinessObject
{
    public Hashtable SelectUserRoles()
    {
        USER_ROLE_PRIVSTableAdapter da = new USER_ROLE_PRIVSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        RADataSet.USER_ROLE_PRIVSDataTable dt = da.GetGrantedRoles();

        Hashtable ht_user_roles = new Hashtable();


        for (int i = 0; i < dt.Count; i++)
        {
            ht_user_roles.Add(dt[i].GRANTED_ROLE, dt[i].GRANTED_ROLE);
        }

        return ht_user_roles;

    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertRA(int dealer_seq, string title, string description)
    {
        DP_RATableAdapter da = new DP_RATableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertRA(dealer_seq, title, description);

    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertRARequest(int ra_seq, string dp_user_id, string serial_number, 
                               string purchase_date, string warranty_expected, string problem_description,
                               string consumer_first_name, string consumer_last_name, int sxcust_fk_for_request, string category, int sxcust_fk_for_request_ship,
                               int category_master_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        if (purchase_date == "")
        {
            da.InsertRARequestNoDate(ra_seq, dp_user_id, serial_number, warranty_expected, problem_description, consumer_first_name, consumer_last_name, sxcust_fk_for_request, category, sxcust_fk_for_request_ship, category_master_seq, this.SelectSkuByCategoryMasterSeq(category_master_seq));
        }
        else
        {
            da.InsertRARequest(ra_seq, dp_user_id, serial_number, Convert.ToDateTime(purchase_date), warranty_expected, problem_description, consumer_first_name, consumer_last_name, sxcust_fk_for_request, category, sxcust_fk_for_request_ship, category_master_seq, this.SelectSkuByCategoryMasterSeq(category_master_seq));
        }
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertRARequestH(int ra_seq, string dp_user_id,  int sxcust_fk_for_request, int sxcust_fk_for_request_ship,
                               string ship_address1, string ship_address2, string ship_city, string ship_state, 
                               string ship_zipcode, string ship_different)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();


        da.InsertRaRequestH(ra_seq, dp_user_id, sxcust_fk_for_request, sxcust_fk_for_request_ship, ship_address1,
                            ship_address2, ship_city, ship_state, ship_zipcode, ship_different);
        
    }

    public void InsertRARequestHRC(int ra_seq, string dp_user_id, int sxcust_fk_for_request, int sxcust_fk_for_request_ship,
                               string ship_address1, string ship_address2, string ship_city, string ship_state,
                               string ship_zipcode, string ship_different)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
     


        da.InsertRaRequestH(ra_seq, dp_user_id, sxcust_fk_for_request, sxcust_fk_for_request_ship, ship_address1,
                            ship_address2, ship_city, ship_state, ship_zipcode, ship_different);

    }
    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertRARequestLineItem(int ra_item_seq, int ra_seq, string serial_number,
                               string purchase_date, string warranty_expected, string problem_description,
                               string consumer_first_name, string consumer_last_name,  string category, string subcat,
                               int category_master_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        if (purchase_date == "")
        {
            da.InsertRaRequestLineItemNoDate(ra_item_seq, ra_seq, serial_number, warranty_expected,
                                             problem_description, consumer_first_name,
                                             consumer_last_name, category, subcat,
                                              category_master_seq, this.SelectSkuByCategoryMasterSeq(category_master_seq));
                                             
        }
        else
        {
            da.InsertRaRequestLineItem(ra_item_seq,ra_seq, serial_number, Convert.ToDateTime(purchase_date), warranty_expected,
                                             problem_description, consumer_first_name,
                                             consumer_last_name, category, subcat,
                                             category_master_seq, this.SelectSkuByCategoryMasterSeq(category_master_seq));
        }
    }

    public void InsertRARequestLineItemRC(int ra_item_seq, int ra_seq, string serial_number,
                              string purchase_date, string warranty_expected, string problem_description,
                              string consumer_first_name, string consumer_last_name, string category, string subcat,
                              int category_master_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
      

        if (purchase_date == "")
        {
            da.InsertRaRequestLineItemNoDate(ra_item_seq, ra_seq, serial_number, warranty_expected,
                                             problem_description, consumer_first_name,
                                             consumer_last_name, category, subcat,
                                              category_master_seq, category_master_seq.ToString());

        }
        else
        {
            da.InsertRaRequestLineItem(ra_item_seq, ra_seq, serial_number, Convert.ToDateTime(purchase_date), warranty_expected,
                                             problem_description, consumer_first_name,
                                             consumer_last_name, category, subcat,
                                             category_master_seq, category_master_seq.ToString());
        }
    }

    public string SelectSkuByCategoryMasterSeq(int category_master_seq)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectSkuByCategoryMasterSeq(category_master_seq).ToString();
    }

    public string SelectSkuByCategoryMasterSeqRC(int category_master_seq)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        

        return da.SelectSkuByCategoryMasterSeq(category_master_seq).ToString();
    }

    public int SelectNextRaSeq()
    {

        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectNextRASeq());
    }

    public int SelectNextRaSeqRC()
    {

        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
     

        return Convert.ToInt32(da.SelectNextRASeq());
    }

    public int SelectNextRaLineItemSeq()
    {

        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectNextRaLineItemSeq() );
    }

    public int SelectNextRaLineItemSeqRC()
    {

        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        

        return Convert.ToInt32(da.SelectNextRaLineItemSeq());
    }


    public int SelectCountRaBySeq(int ra_seq)
    {

        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCountRAByRaSeq(ra_seq));
    }

    public string SelectDP_USER_IDByRaSeq(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectDP_USER_IDByraSeq(ra_seq).ToString();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RADataTable SelectRA()
    {
        DP_RATableAdapter da = new DP_RATableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRA();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectLineItemsByRaSeq(int ra_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataLineItemsByRaSeq(ra_seq);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRARequestByUser(string dp_user_id)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataByDPUserRequests(dp_user_id);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRAHByUser(string dp_user_id)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAHByUserID(dp_user_id);

    }

    public DateTime SelectRaDate(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToDateTime(da.SelectRaDate(ra_seq));
    }

    public int SelectCountItemsByRaSeq(int ra_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCountItemsByRaSeq(ra_seq));
    }

    public int SelectCountItemsByRaSeqAndCategory(int ra_seq, string category)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCountItemsByRaSeqAndCategory(ra_seq, category));
    }

    public void UpdateRaSeqByRaSeqAndCategory(int new_ra_seq, int current_ra_seq, string category)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateRaSeqByRaSeqAndCategory(new_ra_seq, current_ra_seq, category);
    }

    public void UpdateRaSeqByRaItemSeq(int new_ra_seq, int ra_item_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateRASeqByItemSeq(new_ra_seq, ra_item_seq);
    }


    public string SelectShipToLocAddrByRaSeq(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectShipToByRaSeq(ra_seq).ToString();
    }


    public int SelectCountItemsByRaSeqAndStatus(int ra_seq, string approved)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCountItemsByRaSeqAndStatus(ra_seq, approved));
    }
    
    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRAsForAppeal(string dp_user_id)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAsForAppeal(dp_user_id);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRAItemssForAppeal(string dp_user_id)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAItemsForAppeal(dp_user_id);

    }


    public void UpdateFinalizeNewRequest(int ra_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateFinalizeNewRequest(ra_seq);
    }

    public void UpdateAppeal(string appeal, int ra_item_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateAppeal(appeal, ra_item_seq);

    }


    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRAsForApproval()
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAsForApproval();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRAHForReiew()
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAHForReview();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRAHForSplit()
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAHForSplit();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SUBCAT_ACTION_CDDataTable SelectSubcatActionCDs(string cat, string subcat)
    {
        DP_SUBCAT_ACTION_CDTableAdapter da = new DP_SUBCAT_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSubcatActionCDs(cat, subcat);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void DeleteSubcatActionCD(int Original_SUB_CAT_ACTION_CD_SEQ)
    {
        DP_SUBCAT_ACTION_CDTableAdapter da = new DP_SUBCAT_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.DeleteSubcatActionCD(Original_SUB_CAT_ACTION_CD_SEQ);
    }

    public void InserSubcatActionCD(int action_cd_seq, string cat, string subcat)
    {
        DP_SUBCAT_ACTION_CDTableAdapter da = new DP_SUBCAT_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertSubcatActionCD(action_cd_seq, cat, subcat);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRALineItemsApproval(int ra_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRALineItemsForApproval(ra_seq);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRALineItemsPending(int ra_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRALineItemsPending(ra_seq);

    }


    public RADataSet.DP_RA_REQUESTDataTable SelectRARequestBySeq(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRArequestBySeq(ra_seq);

    }

    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRALineItemByItemSeq(int ra_item_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDatRALineItemByLineItemSeq(ra_item_seq);

    }

    public int SelectRaSeqByRaItemSeq(int ra_item_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectRaSeqByRaItemSeq(ra_item_seq));


    }

    public RADataSet.DP_RA_REQUESTDataTable SelectRAHBySeq(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAHBySeq(ra_seq);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRAHistory(int ra_item_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAHistory(ra_item_seq);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRAHistorySimilarSerial(int ra_item_seq, bool exact)
    {
        if (exact)
        {
            return this.SelectRAHistory(ra_item_seq);
        }

        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAHistorySimilarSerial(ra_item_seq);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUEST_LINE_ITEMDataTable SelectRAsByCustomer(int ra_item_seq)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAsByCustomer(ra_item_seq);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_SALES_INVOICE_LINE_ITEMSDataTable SelectCustomerInvoiceLineItems(int ra_seq)
    {
        SX_SALES_INVOICE_LINE_ITEMSTableAdapter da = new SX_SALES_INVOICE_LINE_ITEMSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();


        string customer_id;
        
        DP_RA_REQUESTTableAdapter rda = new DP_RA_REQUESTTableAdapter();
        rda.Connection = JLUtils.GetConnectionString();

        customer_id = rda.ScalarCustomerID(ra_seq).ToString();

        return da.GetDataInvoiceLineItems(customer_id);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_SALES_INVOICE_LINE_ITEMSDataTable SelectCustomerInvoiceLineItemsBySerial(string serial)
    {
        SX_SALES_INVOICE_LINE_ITEMSTableAdapter da = new SX_SALES_INVOICE_LINE_ITEMSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        int inv_id = 0;

        if (serial != "")
        {
            inv_id = Convert.ToInt32(da.SelectINVIDbySerial(serial));
        }


        return da.GetDataInvoiceLineItemsByID(inv_id);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_SALES_INVOICE_LINE_ITEMSDataTable SelectCustomerInvoiceLineItemsBySimilarSerial(string serial, bool exact)
    {
        if (exact)
        {
            return this.SelectCustomerInvoiceLineItemsBySerial(serial);
        }

        SX_SALES_INVOICE_LINE_ITEMSTableAdapter da = new SX_SALES_INVOICE_LINE_ITEMSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();



        return da.GetDataInvoiceLineItemsSimilarSerial("%"+serial+"%");

    }

  

  



 

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateApproveDisapproveRA(string APPROVED, string REJECTION_MESSAGE, int category_master_seq, 
                                          int approval_cd_seq, int action_cd_seq, int original_RA_SEQ)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateApproveDisapproveRA(APPROVED, REJECTION_MESSAGE, this.SelectSkuByCategoryMasterSeq(category_master_seq), approval_cd_seq, action_cd_seq, category_master_seq, original_RA_SEQ);

    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateRAHApprovalCDSeq(int approval_cd_seq, int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateRAHApprovalCDSeq(approval_cd_seq, ra_seq);
    }


    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateRAHApprovalCDSeqRC(int approval_cd_seq, int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        

        da.UpdateRAHApprovalCDSeq(approval_cd_seq, ra_seq);
    }

    public void UpdateApproveDisapproveRAItem(string APPROVED, string REJECTION_MESSAGE, string cat, string sub, int category_master_seq,
                                         int action_cd_seq, int original_RA_ITEM_SEQ)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateApproveDisapproveRAItem(APPROVED, REJECTION_MESSAGE, cat, sub, this.SelectSkuByCategoryMasterSeq(category_master_seq), action_cd_seq, category_master_seq, original_RA_ITEM_SEQ);

    }

    public void UpdateApproveDisapproveRAItemRC(string APPROVED, string REJECTION_MESSAGE, string cat, string sub, int category_master_seq,
                                         int action_cd_seq, int original_RA_ITEM_SEQ)
    {
        DP_RA_REQUEST_LINE_ITEMTableAdapter da = new DP_RA_REQUEST_LINE_ITEMTableAdapter();
        

        da.UpdateApproveDisapproveRAItem(APPROVED, REJECTION_MESSAGE, cat, sub, category_master_seq.ToString(), action_cd_seq, category_master_seq, original_RA_ITEM_SEQ);

    }


    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_REQUESTDataTable SelectRecentRA(string serial)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRecentRA(serial);

    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertRAStatus(int ra_seq, string status_desc, string document_link)
    {
        DP_RA_STATUSTableAdapter da = new DP_RA_STATUSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertRAStatus(ra_seq, status_desc, document_link);
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void InsertRALineItemStatus(int ra_item_seq, string status_desc)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertLineItemStatus(ra_item_seq, status_desc);
    }

    public void InsertRALineItemStatusRC(int ra_item_seq, string status_desc)
    {
        DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter da = new DP_RA_FM_PRO_STATUS_LINE_ITEMTableAdapter();
        

        da.InsertLineItemStatus(ra_item_seq, status_desc);
    }


    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_RA_ITEM_STATUS_COMBINEDDataTable SelectRAStatus(int ra_item_seq)
    {
        DP_RA_ITEM_STATUS_COMBINEDTableAdapter da = new DP_RA_ITEM_STATUS_COMBINEDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataRAItemStatusCombined(ra_item_seq);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_USERSDataTable SelectDPUserDetails(string userid)
    {
        DP_USERSTableAdapter da = new DP_USERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataDPUserDetails(userid);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_CUSTOMERSDataTable SelectCustomersByUserID(string userid)
    {
        SX_CUSTOMERSTableAdapter da = new SX_CUSTOMERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataCustomersByID(userid);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_CUSTOMERSDataTable SelectCustomersByCUSTID(int custid)
    {
        SX_CUSTOMERSTableAdapter da = new SX_CUSTOMERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataCustomersByCUSTID(custid);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_CUSTOMERSDataTable SelectCustomerByCustomerID(int customer_id)
    {
        SX_CUSTOMERSTableAdapter da = new SX_CUSTOMERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataCustomerByCustomerID(customer_id);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_CUSTOMERSDataTable SelectParentCustomerByUserID(string userid)
    {
        SX_CUSTOMERSTableAdapter da = new SX_CUSTOMERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataParentCustomerByID(userid);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.SX_CUSTOMERSDataTable SelectParentCustomerByCUSTID(int custid)
    {
        SX_CUSTOMERSTableAdapter da = new SX_CUSTOMERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataParentByCustID(custid);

    }


    //[DataObjectMethod(DataObjectMethodType.Select)]
    //public RADataSet.DP_SKU_MASTER_TEMPDataTable SelectMasterSkusTemp()
    //{
    //    DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();
    //    da.Connection = JLUtils.GetConnectionString();

    //    return da.GetDataMasterSkuTemp();
    //}

    //public void InsertMasterSkuTemp(string sku)
    //{
    //    DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();
    //    da.Connection = JLUtils.GetConnectionString();

    //    da.InsertMasterSkuTemp(sku);
       
    //}

    //public void InsertMasterCategory(string sku, string category, string sub_category1, string sub_category2, string sub_category3, string sub_category4, int rank, int family)
    //{
    //    DP_CATEGORY_MASTER_TEMPTableAdapter da = new DP_CATEGORY_MASTER_TEMPTableAdapter();
    //    da.Connection = JLUtils.GetConnectionString();

    //    da.InsertCategory(sku, category, sub_category1, sub_category2, sub_category3, sub_category4, rank, family);
    //}

    //[DataObjectMethod(DataObjectMethodType.Update)]
    //public void UpdateMasterSkuTemp( string name, string upc, string short_descr, string long_descr, string availability, string category, string sub_category1, string
    //                           sub_category2, string sub_category3, string sub_category4, string category_rank, string dealer_cost, string
    //                           retail_price, string map_price, string mgf_offer_price, string avg_dealer_margin, string image, string active, string
    //                           weight, string length, string height, string width, string additional_img_name1, string additional_img_file1, string
    //                           additional_img_name2, string additional_img_file2, string additional_img_name3, string additional_img_file3, string
    //                           additional_img_name4, string additional_img_file4, string additional_img_name5, string additional_img_file5, string
    //                           spec_type1, string spec_name1, string spec_description1, string spec_type2, string spec_name2, string spec_description2, string
    //                           spec_type3, string spec_name3, string spec_description3, string spec_type4, string spec_name4, string spec_description4, string
    //                           spec_type5, string spec_name5, string spec_description5, string Original_SKU)
    //{
    //    DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();
    //    da.Connection = JLUtils.GetConnectionString();

    //    da.UpdateMasterSkuTemp(name, upc, short_descr, long_descr, availability, category, sub_category1,
    //                           sub_category2, sub_category3, sub_category4, category_rank, dealer_cost,
    //                           retail_price, map_price, mgf_offer_price, avg_dealer_margin, image, active,
    //                           weight, length, height, width, additional_img_name1, additional_img_file1,
    //                           additional_img_name2, additional_img_file2, additional_img_name3, additional_img_file3,
    //                           additional_img_name4, additional_img_file4, additional_img_name5, additional_img_file5,
    //                           spec_type1, spec_name1, spec_description1, spec_type2, spec_name2, spec_description2,
    //                           spec_type3, spec_name3, spec_description3, spec_type4, spec_name4, spec_description4,
    //                           spec_type5, spec_name5, spec_description5, Original_SKU);

    //}


    public string SelectDealerNameByUserID(string userid)
    {
        SX_CUSTOMERSTableAdapter da = new SX_CUSTOMERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectNAME1ByUserid(userid).ToString();
    }

    public string SelectDPUserIDByRaSeq(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.SelectDPUserIDByRaSeq(ra_seq).ToString();

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_USERSDataTable SelectDealersAndContact()
    {
        DP_USERSTableAdapter da = new DP_USERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataDPAllUserDetails();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_USERS_NO_ACCOUNTDataTable SelectDealersAndContactNoAccount()
    {
        DP_USERS_NO_ACCOUNTTableAdapter da = new DP_USERS_NO_ACCOUNTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataDPAllUserDeatilsNoAccount();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public int SelectCustIDByUserID(string userid)
    {
        DP_USERSTableAdapter da = new DP_USERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCustIDByUserID(userid));
    }


    public int SelectCountSerial(string serial)
    {
        SX_SERIAL_NUMBERSTableAdapter da = new SX_SERIAL_NUMBERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCountSerialNumber(serial));
    }


    public int SelectCountIsAmpBySerial(string serial)
    {
        SX_SERIAL_NUMBERSTableAdapter da = new SX_SERIAL_NUMBERSTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return Convert.ToInt32(da.SelectCountIsAmpBySerial(serial));
    }

    public void UpdateAmpFlag(string amp_flag, int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateAmpFlag(amp_flag, ra_seq);
    }

    public string SelectUserIDByRaSeq(int ra_seq)
    {
        DP_RA_REQUESTTableAdapter da = new DP_RA_REQUESTTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectUserIDByRaSeq(ra_seq).ToString();
    }

    public void SendRAemail(string email_address, string subject, string message_text)
    {
       // try
       // {

        MailMessage message = new MailMessage("JL Audio - Registration <no-reply-registration@jlaudio.com>",
                email_address.ToLower(),
                subject,
                message_text);
        SmtpClient emailClient = new SmtpClient("imail.jlaudio.com");
           // System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("oreyes@jlaudio.com", "none");
            emailClient.UseDefaultCredentials = false;
           // emailClient.Credentials = SMTPUserInfo;
            message.IsBodyHtml = true;
            emailClient.Send(message);
            //Response.Write("Message Sent");

      //  }
       // catch (Exception ex)
        //{
            //  Response.Write(ex.ToString());
        //    int i = 0;

        //}
    }

    public void SendRCemail(string email_address, string subject, string message_text)
    {
        // try
        // {

        MailMessage message = new MailMessage("JL Audio - Registration <no-reply-registration@jlaudio.com>",
                email_address.ToLower(),
                subject,
                message_text);
        SmtpClient emailClient = new SmtpClient("imail.jlaudio.com");
        // System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("oreyes@jlaudio.com", "none");
        emailClient.UseDefaultCredentials = false;
        // emailClient.Credentials = SMTPUserInfo;
        message.IsBodyHtml = true;
        emailClient.Send(message);
        //Response.Write("Message Sent");

        //  }
        // catch (Exception ex)
        //{
        //  Response.Write(ex.ToString());
        //    int i = 0;

        //}
    }

    public void SendRSemail(string email_address, string subject, string message_text)
    {
        // try
        // {

        MailMessage message = new MailMessage("JL Audio - Registration <no-reply-registration@jlaudio.com>",
                email_address.ToLower(),
                subject,
                message_text);
        SmtpClient emailClient = new SmtpClient("imail.jlaudio.com");
        // System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("oreyes@jlaudio.com", "none");
        emailClient.UseDefaultCredentials = false;
        // emailClient.Credentials = SMTPUserInfo;
        message.IsBodyHtml = true;
        emailClient.Send(message);
        //Response.Write("Message Sent");

        //  }
        // catch (Exception ex)
        //{
        //  Response.Write(ex.ToString());
        //    int i = 0;

        //}
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectToolbarCategory()
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        //  da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSkuFilterToolbarCategory();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectToolbarCategoryRegistration()
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        //  da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSkuFilterToolbarCategoryRegistration();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectCategory(string toolbar_category)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
      //  da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSkuFilterCategory(toolbar_category);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectCategoryRegistration(string toolbar_category)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        //  da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSkuFilterCategoryRegistration(toolbar_category);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectSubCategory(string category, string toolbar_category)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
     //   da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSkuFilterSubCategory(category, toolbar_category);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectSubCategoryRegistration(string category, string toolbar_category)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        //   da.Connection = JLUtils.GetConnectionString();

        return da.GetDataSkuFilterSubCategoryRegistration(category, toolbar_category);
    }




    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectSkuBySubCat(string category, string sub_cat, string toolbar_category)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
      //  da.Connection = JLUtils.GetConnectionString();

        return da.GetDaaSkusBySubCat(category, sub_cat, toolbar_category);
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMP_FILTERDataTable SelectSkuBySubCatRegistration(string category, string sub_cat, string toolbar_category)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        //  da.Connection = JLUtils.GetConnectionString();

        return da.GetDaaSkusBySubCatRegistration(category, sub_cat, toolbar_category);
    }


    public string SelectSkuCategory(string sku)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectSkuCategory(sku).ToString();
    }

    public string SelectSkuSubCategory(string sku)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.SelectSkuSubCat(sku).ToString();
    }

    public string SelectSkuSubCategoryRC(string sku)
    {
        DP_SKU_MASTER_TEMP_FILTERTableAdapter da = new DP_SKU_MASTER_TEMP_FILTERTableAdapter();
        

        return da.SelectSkuSubCat(sku).ToString();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_APPROVAL_CDDataTable SelectApprovalCDs()
    {
        DP_APPROVAL_CDTableAdapter da = new DP_APPROVAL_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataByApprovalCDs();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_APPROVAL_CDDataTable SelectApprovalCDsActive()
    {
        DP_APPROVAL_CDTableAdapter da = new DP_APPROVAL_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataApprovalCDsActive();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_ACTION_CDDataTable SelectActionCDs()
    {
        DP_ACTION_CDTableAdapter da = new DP_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataActionCDs();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_ACTION_CDDataTable SelectActionCDsActive()
    {
        DP_ACTION_CDTableAdapter da = new DP_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataActionCDsActive();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_ACTION_CDDataTable SelectActionCDsActiveCatSub(string cat, string sub)
    {
        DP_ACTION_CDTableAdapter da = new DP_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataActionCDsActiveByCatSub(cat, sub);
    }

    public void InsertApprovalCD(string code, string description)
    {
        DP_APPROVAL_CDTableAdapter da = new DP_APPROVAL_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertApprovalCD(code, description);
    }

    public void InsertActionCD(string code, string description)
    {
        DP_ACTION_CDTableAdapter da = new DP_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertActionCD(code, description);
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateApprovalCD(string code, string description, string active_flag, int original_APPROVAL_CD_SEQ)
    {
        DP_APPROVAL_CDTableAdapter da = new DP_APPROVAL_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        try
        {
            da.UpdateApprovalCD(code, description, active_flag, original_APPROVAL_CD_SEQ);
            HttpContext.Current.Session["ApprovalCodeError"] = "";
        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["ApprovalCodeError"] = ex.Message;
        }
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateActionCD(string code, string description, string active_flag, int original_ACTION_CD_SEQ)
    {
        DP_ACTION_CDTableAdapter da = new DP_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        try
        {
            da.UpdateActionCD(code, description, active_flag, original_ACTION_CD_SEQ);
            HttpContext.Current.Session["ActionCodeError"] = "";
        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["ActionCodeError"] = ex.Message;
        }
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void DeleteApprovalCD(int original_APPROVAL_CD_SEQ)
    {
        DP_APPROVAL_CDTableAdapter da = new DP_APPROVAL_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        try
        {
            da.DeleteApprovalCD(original_APPROVAL_CD_SEQ);
            HttpContext.Current.Session["ApprovalCodeError"] = "";
        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["ApprovalCodeError"] = ex.Message;
        }
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void DeleteActionCD(int original_ACTION_CD_SEQ)
    {
        DP_ACTION_CDTableAdapter da = new DP_ACTION_CDTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        try
        {
            da.DeleteActionCD(original_ACTION_CD_SEQ);
            HttpContext.Current.Session["ActionCodeError"] = "";
        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["ActionCodeError"] = ex.Message;
        }
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_SKU_MASTER_TEMPDataTable SelectSkuMasterTemp(string sku)
    {
        DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        if (sku != "%")
        {
            sku = "%" + sku + "%";
        }

        return da.GetDataSKUsBySku(sku);
    }

    public void InsertSku(string name, string upc, string sku, string short_desc, string long_desc, string availability, 
                          string dealer_cost, string retail_price, string map_price, string mgf_offer_price,
                          string avg_dealer_margin, string image, string active, string weight, string length, string height, string width, string additional_img_name1, string additional_img_file1,
                          string addtional_img_name2, string additional_img_file2, string additional_img_name3, string additional_img_file3, string additional_img_name4,
                          string additional_img_file4, string additional_img_name5, string additional_img_file5, string spec_type1, string spec_name1, string spec_description1,
                          string spec_type2, string spec_name2, string spec_description2, string spec_type3, string spec_name3, string spec_description3, string spec_type4, string spec_name4,
                          string spec_description4, string spec_type5, string spec_name5, string spec_description5, string additional_img_name6, string additional_img_file6,
                          string additional_img_name7, string additional_img_file7)
    {
        DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();

        da.InsertSku(name, upc, sku, short_desc, long_desc, availability, dealer_cost, retail_price, map_price, mgf_offer_price,
                          avg_dealer_margin, image, active, weight, length, height, width, additional_img_name1, additional_img_file1,
                          addtional_img_name2, additional_img_file2, additional_img_name3, additional_img_file3, additional_img_name4,
                          additional_img_file4, additional_img_name5, additional_img_file5, spec_type1, spec_name1, spec_description1,
                          spec_type2, spec_name2, spec_description2, spec_type3, spec_name3, spec_description3, spec_type4, spec_name4,
                          spec_description4, spec_type5, spec_name5, spec_description5, additional_img_name6, additional_img_file6,
                          additional_img_name7, additional_img_file7);

    }

    public void InsertJustSku(string sku)
    {
        DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();

        da.InsertJustSku(sku);

    }


    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateSku(string name, string upc, string short_descr, string long_descr, string availability,
                          string dealer_cost, string retail_price, string map_price, string mfg_offer_price,
                          string avg_dealer_margin, string image, string active, string weight, string length, string height, string width, string additional_img_name1, string additional_img_file1,
                          string additional_img_name2, string additional_img_file2, string additional_img_name3, string additional_img_file3, string additional_img_name4,
                          string additional_img_file4, string additional_img_name5, string additional_img_file5, string spec_type1, string spec_name1, string spec_description1,
                          string spec_type2, string spec_name2, string spec_description2, string spec_type3, string spec_name3, string spec_description3, string spec_type4, string spec_name4,
                          string spec_description4, string spec_type5, string spec_name5, string spec_description5, string additional_img_name6, string additional_img_file6,
                          string additional_img_name7, string additional_img_file7, string Original_SKU)
    {
        DP_SKU_MASTER_TEMPTableAdapter da = new DP_SKU_MASTER_TEMPTableAdapter();

        da.UpdateSku(name, upc, short_descr, long_descr, availability, dealer_cost, retail_price, map_price, mfg_offer_price,
                          avg_dealer_margin, image, active, weight, length, height, width, additional_img_name1, additional_img_file1,
                          additional_img_name2, additional_img_file2, additional_img_name3, additional_img_file3, additional_img_name4,
                          additional_img_file4, additional_img_name5, additional_img_file5, spec_type1, spec_name1, spec_description1,
                          spec_type2, spec_name2, spec_description2, spec_type3, spec_name3, spec_description3, spec_type4, spec_name4,
                          spec_description4, spec_type5, spec_name5, spec_description5, additional_img_name6, additional_img_file6,
                          additional_img_name7, additional_img_file7, Original_SKU);

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public RADataSet.DP_CATEGORY_MASTER_TEMPDataTable SelectMasterCategory(string category)
    {
        if (category != "%")
        {
            category = "%" + category + "%";
        }

        DP_CATEGORY_MASTER_TEMPTableAdapter da = new DP_CATEGORY_MASTER_TEMPTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        return da.GetDataCategoriesMasterByCategory(category);
    }

    public void InsertMasterCategory(string sku, string category, string sub_category1, string sub_category2, string sub_category3, string sub_category4, int category_rank, int cat_fam)
    {
        DP_CATEGORY_MASTER_TEMPTableAdapter da = new DP_CATEGORY_MASTER_TEMPTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertCategoryMaster(sku, category, sub_category1, sub_category2, sub_category3, sub_category4, category_rank, cat_fam);
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void UpdateCategoryMaster(string sku, string category, string sub_category1, string sub_category2, string sub_category3, string sub_category4, int category_rank, int family, int Original_CATEGORY_MASTER_SEQ)
    {
        DP_CATEGORY_MASTER_TEMPTableAdapter da = new DP_CATEGORY_MASTER_TEMPTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.UpdateCategoryMaster(sku, category, sub_category1, sub_category2, sub_category3, sub_category4, category_rank, family, Original_CATEGORY_MASTER_SEQ);
    }

    public void InsertJustMasterCat(string category)
    {
        DP_CATEGORY_MASTER_TEMPTableAdapter da = new DP_CATEGORY_MASTER_TEMPTableAdapter();
        da.Connection = JLUtils.GetConnectionString();

        da.InsertJustCat(category);
    }

    public void SendRAemailWithAttachmentCcBcc(string email_address, string subject, string message_text, string attachment_url, string CC, string Bcc)
    {
        // try
        // {

        MailMessage message = new MailMessage("JL Audio - Registration <no-reply-registration@jlaudio.com>",
                email_address.ToLower(),
                subject,
                message_text);

        if (attachment_url != "")
        {
            System.Net.Mail.Attachment attachment;
            attachment = new System.Net.Mail.Attachment(attachment_url);
            message.Attachments.Add(attachment);
        }

        if (CC != "")
        {
            message.CC.Add(CC);
        }
        if (Bcc != "")
        {
            message.Bcc.Add(Bcc);
        }


        SmtpClient emailClient = new SmtpClient("imail.jlaudio.com");
        // System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("oreyes@jlaudio.com", "none");
        emailClient.UseDefaultCredentials = false;
        // emailClient.Credentials = SMTPUserInfo;
        message.IsBodyHtml = true;
        emailClient.Send(message);
        //Response.Write("Message Sent");

        //  }
        // catch (Exception ex)
        //{
        //  Response.Write(ex.ToString());
        //    int i = 0;

        //}
    }

}
