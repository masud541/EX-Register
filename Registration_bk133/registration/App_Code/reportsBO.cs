using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel;
using reportsDSTableAdapters;
using System.Collections;

[DataObject(true)]

public class reportsBO
{

    # region ReportsAdmin

    # region reports
    public reportsDS.reportsDataTable getAllReports(string strVal)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString(); 
        return da.GetDataAllReports(strVal);
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void insertReport(string cd, string description, string active_flag)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.InsertReport(cd, description, active_flag);
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void updateReport(string description, string active_flag, string Original_cd)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.UpdateReport(description, active_flag, Original_cd);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteReport(string Original_cd)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteReport(Original_cd);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteReportParms(string rep_cd)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteReportParms(rep_cd);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteReportRoles(string rep_cd)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteReportRoles(rep_cd);
    }

    # endregion

    # region parameters

    public reportsDS.parametersDataTable getReportParms(string rep_cd, string strVal)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataReportParms(rep_cd, strVal);
    }

    public reportsDS.parametersDataTable getOneParm(decimal id)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataOneParameter(id);
    }

    public reportsDS.parametersDataTable getReportMissingParms(string rep_cd, string strVal)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataReportMissingParms(rep_cd, strVal);
    }

    public decimal getParmID()
    {
        parametersTableAdapter da = new parametersTableAdapter();
        return Convert.ToDecimal(da.GetParmID());
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void insertReportParm(string rep_cd, decimal parm_id, string mandatory)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.InsertReportParm(rep_cd, parm_id, mandatory);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteOneReportParm(string rep_cd, decimal parm_id)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteOneReportParm(rep_cd, parm_id);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteOneParm(decimal parm_id)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteOneParm(parm_id);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteAllReportParms(decimal parm_id)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteAllReportParms(parm_id);
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void updateParameter(string name, string description, string value, string default_value, string datatype, decimal Original_id)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.UpdateParameter(name, description, value, default_value, datatype, Original_id);
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public void updateParmMandatory(string mandatory, string rep_cd, decimal parm_id)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.UpdateParmMandatory(mandatory, rep_cd, parm_id);
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void insertNewParm(decimal id, string name, string description, string value, string default_value, string datatype)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.InsertNewParm(id, name, description, value, default_value, datatype);
    }

    # endregion

    # region roles

    public reportsDS.rolesDataTable getReportRoles(string rep_cd, string strVal)
    {
        rolesTableAdapter da = new rolesTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataReportRoles(rep_cd, strVal);
    }

    public reportsDS.rolesDataTable getReportMissingRoles(string rep_cd, string strVal)
    {
        rolesTableAdapter da = new rolesTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataReportMissingRoles(rep_cd, strVal);
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public void insertReportRole(string rep_cd, string role)
    {
        rolesTableAdapter da = new rolesTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.InsertReportRole(rep_cd, role);
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void deleteOneReportRole(string rep_cd, string role)
    {
        rolesTableAdapter da = new rolesTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteOneReportRole(rep_cd, role);
    }

    # endregion

    # endregion

    # region Reports Selection

    # region reports

    public reportsDS.reportsDataTable getUserReports(string strVal)
    {
        reportsTableAdapter da = new reportsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataUserReports(strVal);
    }
    
    # endregion

    # region parameters

    public reportsDS.parametersDataTable getReportParmsNonAdmin(string rep_cd, string strVal)
    {
        parametersTableAdapter da = new parametersTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.GetDataReportParmsNonAdmin(rep_cd, strVal);
    }

    # endregion

    # region DBCalls

    public string FncCallRep(string in_conn, decimal in_request, string in_report, string in_pdfname)
    {
        DBCallsTableAdapter da = new DBCallsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.FunctionCallRep(in_conn, in_request, in_report, in_pdfname).ToString();
    }

    public string FncGetRepURL()
    {
        DBCallsTableAdapter da = new DBCallsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        return da.FunctionGetRepOutputURL().ToString();
    }

    [DataObjectMethod(DataObjectMethodType.Delete)]
    public void DeleteParms(decimal in_request)
    {
        DBCallsTableAdapter da = new DBCallsTableAdapter();
        da.Connection = JLUtils.GetConnectionString();
        da.DeleteRepParms(in_request);
    }

    # endregion

    # endregion
}
