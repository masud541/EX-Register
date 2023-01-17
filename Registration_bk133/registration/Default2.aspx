<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RA_ITEM_SEQ" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="RA_SEQ" HeaderText="RA_SEQ" 
                SortExpression="RA_SEQ" />
            <asp:BoundField DataField="AMP_FLAG" HeaderText="AMP_FLAG" 
                SortExpression="AMP_FLAG" />
            <asp:BoundField DataField="MODEL_NUMBER" HeaderText="MODEL_NUMBER" 
                SortExpression="MODEL_NUMBER" />
            <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="SERIAL_NUMBER" 
                SortExpression="SERIAL_NUMBER" />
            <asp:BoundField DataField="CONSUMER_PURCHASE_DATE" 
                HeaderText="CONSUMER_PURCHASE_DATE" SortExpression="CONSUMER_PURCHASE_DATE" />
            <asp:BoundField DataField="WARRANTY_EXPECTED" HeaderText="WARRANTY_EXPECTED" 
                SortExpression="WARRANTY_EXPECTED" />
            <asp:BoundField DataField="PROBLEM_DESCRIPTION" 
                HeaderText="PROBLEM_DESCRIPTION" SortExpression="PROBLEM_DESCRIPTION" />
            <asp:BoundField DataField="CONSUMER_FIRST_NAME" 
                HeaderText="CONSUMER_FIRST_NAME" SortExpression="CONSUMER_FIRST_NAME" />
            <asp:BoundField DataField="RA_ITEM_DATE" HeaderText="RA_ITEM_DATE" 
                SortExpression="RA_ITEM_DATE" />
            <asp:BoundField DataField="CREATED_BY" HeaderText="CREATED_BY" 
                SortExpression="CREATED_BY" />
            <asp:BoundField DataField="CREATED_DATE_TIME" HeaderText="CREATED_DATE_TIME" 
                SortExpression="CREATED_DATE_TIME" />
            <asp:BoundField DataField="MODIFIED_BY" HeaderText="MODIFIED_BY" 
                SortExpression="MODIFIED_BY" />
            <asp:BoundField DataField="MODIFIED_DATE_TIME" HeaderText="MODIFIED_DATE_TIME" 
                SortExpression="MODIFIED_DATE_TIME" />
            <asp:BoundField DataField="APPROVED" HeaderText="APPROVED" 
                SortExpression="APPROVED" />
            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" 
                SortExpression="CATEGORY" />
            <asp:BoundField DataField="REJECTION_MESSAGE" HeaderText="REJECTION_MESSAGE" 
                SortExpression="REJECTION_MESSAGE" />
            <asp:BoundField DataField="APPEAL" HeaderText="APPEAL" 
                SortExpression="APPEAL" />
            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
            <asp:BoundField DataField="CONSUMER_LAST_NAME" HeaderText="CONSUMER_LAST_NAME" 
                SortExpression="CONSUMER_LAST_NAME" />
            <asp:BoundField DataField="ACTION_CD_SEQ" HeaderText="ACTION_CD_SEQ" 
                SortExpression="ACTION_CD_SEQ" />
            <asp:BoundField DataField="APPROVAL_CD_SEQ" HeaderText="APPROVAL_CD_SEQ" 
                SortExpression="APPROVAL_CD_SEQ" />
            <asp:BoundField DataField="CATEGORY_MASTER_SEQ" 
                HeaderText="CATEGORY_MASTER_SEQ" SortExpression="CATEGORY_MASTER_SEQ" />
            <asp:BoundField DataField="RA_ITEM_SEQ" HeaderText="RA_ITEM_SEQ" 
                ReadOnly="True" SortExpression="RA_ITEM_SEQ" />
            <asp:BoundField DataField="RA_DATE" HeaderText="RA_DATE" 
                SortExpression="RA_DATE" />
            <asp:BoundField DataField="SXCUST_FK_FOR_REQUEST" 
                HeaderText="SXCUST_FK_FOR_REQUEST" SortExpression="SXCUST_FK_FOR_REQUEST" />
            <asp:BoundField DataField="RA_NUMBER" HeaderText="RA_NUMBER" 
                SortExpression="RA_NUMBER" />
            <asp:BoundField DataField="DATE_MODEL_SERIAL" HeaderText="DATE_MODEL_SERIAL" 
                SortExpression="DATE_MODEL_SERIAL" />
            <asp:BoundField DataField="LONG_DESC" HeaderText="LONG_DESC" 
                SortExpression="LONG_DESC" />
            <asp:BoundField DataField="CONSUMER_FULL_NAME" HeaderText="CONSUMER_FULL_NAME" 
                SortExpression="CONSUMER_FULL_NAME" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="SelectLineItemsByRaSeq" TypeName="RABusinessObject">
        <SelectParameters>
            <asp:Parameter DefaultValue="208" Name="ra_seq" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    </form>
</body>
</html>
