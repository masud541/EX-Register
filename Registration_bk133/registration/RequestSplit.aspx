<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestSplit.aspx.cs" Inherits="RequestSplit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: center;
        }
        .style11
        {
            width: 450px;
        }
        .style12
        {
            text-align: right;
        }
        .style13
        {
            width: 19px;
        }
        .style14
        {
            width: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="RA REQUEST SPLIT"></asp:Label>
        </td>
    </tr>
    </table>

 
<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="RA Requests"></asp:Label>
&nbsp;(
                            <asp:HyperLink ID="HyperLinkReviewRequest" 
        runat="server" CssClass="style6" 
                                ForeColor="Black" NavigateUrl="~/RequestSplit.aspx" 
                                Font-Underline="False">Refresh</asp:HyperLink>
                        )<table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_SEQ" DataSourceID="ObjectDataSource4" 
                ForeColor="#333333" GridLines="None" AllowPaging="True" 
                PageSize="9" onpageindexchanged="GridView6_PageIndexChanged" 
                onselectedindexchanged="GridView6_SelectedIndexChanged" 
                onrowdatabound="GridView6_RowDataBound">
                <PagerSettings Mode="NumericFirstLast" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField SelectText="Select RA" ShowSelectButton="True" >
                    <ControlStyle ForeColor="Blue" />
                    <ItemStyle Wrap="False" />
                    </asp:CommandField>
                    <asp:TemplateField HeaderText="Request Date" SortExpression="RA_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox41" Enabled="false" runat="server" 
                                Text='<%# Bind("RA_DATE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label68" runat="server" Text='<%# Bind("RA_DATE", "{0:g}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="RA#" SortExpression="RA_NUMBER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox42" Enabled="false" runat="server" 
                                Text='<%# Bind("RA_NUMBER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label69" runat="server" Text='<%# Bind("RA_NUMBER") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CNT_ALL" HeaderText="Items" 
                        SortExpression="CNT_ALL" />
                    <asp:BoundField DataField="CNT_APR" HeaderText="Apr" 
                        SortExpression="CNT_APR" />
                    <asp:BoundField DataField="CNT_REJ" HeaderText="Rej" 
                        SortExpression="CNT_REJ" />
                    <asp:BoundField DataField="CNT_PEN" HeaderText="Pending" 
                        SortExpression="CNT_PEN" />
                    <asp:BoundField DataField="CNT_APL" HeaderText="Appealed" 
                        SortExpression="CNT_APL" />
                    <asp:TemplateField HeaderText="Contact" SortExpression="FULL_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox44" Enabled="false" runat="server" 
                                Text='<%# Bind("FULL_NAME") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label71" runat="server" Text='<%# Bind("FULL_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="PHONE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox45" Enabled="false" runat="server" 
                                Text='<%# Bind("PHONE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label72" runat="server" Text='<%# Bind("PHONE") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="EMAIL_ADDRESS">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox46" Enabled="false" runat="server" 
                                Text='<%# Bind("EMAIL_ADDRESS") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label73" runat="server" Text='<%# Bind("EMAIL_ADDRESS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dealer" SortExpression="DEALER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox47" Enabled="false" runat="server" 
                                Text='<%# Bind("DEALER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label74" runat="server" Text='<%# Bind("DEALER") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRAHForSplit" 
                TypeName="RABusinessObject"></asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td class="style12">

 
            <table class="style1">
                <tr>
                    <td class="style14" valign="top">

 
<asp:Label ID="Label67" runat="server" Font-Bold="True" Text="Items" style="text-align: center"></asp:Label>
                    </td>
                    <td valign="top">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="SERIAL_NUMBER" DataSourceID="ObjectDataSource1" 
                ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                PageSize="6" onrowdatabound="GridView1_RowDataBound" 
                onpageindexchanging="GridView1_PageIndexChanging">
                <PagerSettings Mode="NumericFirstLast" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField SelectText="Serial Details" ShowSelectButton="True" >
                    <ItemStyle Wrap="False" />
                    </asp:CommandField>
                    <asp:BoundField DataField="RA_ITEM_SEQ" HeaderText="Item" ReadOnly="True" 
                        SortExpression="RA_ITEM_SEQ" />
                    <asp:BoundField DataField="APPROVED" HeaderText="Status" 
                        SortExpression="APPROVED" />
                    <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                        SortExpression="CATEGORY" />
                    <asp:BoundField DataField="SUBCAT" HeaderText="Subcategory" 
                        SortExpression="SUBCAT" />
                    <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                    <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                        SortExpression="SERIAL_NUMBER" />
                    <asp:BoundField DataField="RA_ITEM_SEQ" HeaderText="RA_ITEM_SEQ" 
                        ReadOnly="True" SortExpression="RA_ITEM_SEQ" Visible="False" />
                    <asp:BoundField DataField="WARRANTY_EXPECTED" HeaderText="Wrt" 
                        SortExpression="WARRANTY_EXPECTED" />
                    <asp:BoundField DataField="PROBLEM_DESCRIPTION" HeaderText="Problem" 
                        SortExpression="PROBLEM_DESCRIPTION" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
                    </td>
                    <td class="style13" style="text-align: left" width="100px">
                        &nbsp;</td>
                    <td style="text-align: left" valign="top" width="40%">
&nbsp;<br />
&nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                DataSourceID="ObjectDataSource2" DataTextField="RA_ITEM_SEQ" 
                DataValueField="RA_ITEM_SEQ">
            </asp:CheckBoxList>
                                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectMethod="SelectRALineItemsPending" TypeName="RABusinessObject">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView6" Name="ra_seq" 
                                                PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                        <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Split" Enabled="False" />

 
                                    <asp:Label ID="Label63" runat="server" Text="Approval CDs" Visible="False"></asp:Label>
                                <br />
                                    <asp:DropDownList ID="DropDownListApprovalCD" runat="server" 
                                        DataSourceID="ObjectDataSource9" DataTextField="DESCRIPTION" 
                                        DataValueField="APPROVAL_CD_SEQ" Enabled="False" Visible="False">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectMethod="SelectApprovalCDsActive" TypeName="RABusinessObject">
                                    </asp:ObjectDataSource>
                                </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRALineItemsApproval" 
                TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView6" Name="ra_seq" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td class="style7" style="text-align: center">
                        &nbsp;</td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td>

 
            <table class="style11">
                <tr>
                    <td style="text-align: center">
                        &nbsp;</td>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>

 
            &nbsp;</td>
    </tr>
    <tr>
        <td>

 
<asp:Label ID="Label65" runat="server" Font-Bold="True" 
                Text="Invoice Details for SERIAL of Selected Request"></asp:Label>
        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Checked="True" 
                Text="Exact Serial Match" />
&nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Search Again" />
        </td>
    </tr>
    <tr>
        <td>

 
            <asp:GridView ID="GridView5" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                ForeColor="#333333" GridLines="None" DataSourceID="ObjectDataSource10">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="Invoice" 
                        SortExpression="INVOICE_NUMBER" />
                    <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" 
                        SortExpression="DESCRIPTION" />
                    <asp:BoundField DataField="INVOICE_DATE" HeaderText="Invoice Date" 
                        SortExpression="INVOICE_DATE" />
                    <asp:BoundField DataField="PRINTED_TERMS" HeaderText="Terms" 
                        SortExpression="PRINTED_TERMS" />
                    <asp:BoundField DataField="STATUS" HeaderText="Status" 
                        SortExpression="STATUS" />
                    <asp:BoundField DataField="PO_NUMBER" HeaderText="PO Number" 
                        SortExpression="PO_NUMBER" />
                    <asp:BoundField DataField="FREIGHT_CHARGE" HeaderText="Freight Charge" 
                        SortExpression="FREIGHT_CHARGE" />
                    <asp:BoundField DataField="BILL_CUSTOMER_NAME" HeaderText="Bill Cust Name" 
                        SortExpression="BILL_CUSTOMER_NAME" />
                    <asp:BoundField DataField="SUBTOTAL" HeaderText="Sub Total" 
                        SortExpression="SUBTOTAL" />
                    <asp:BoundField DataField="SALES_TAX" HeaderText="Sales Tax" 
                        SortExpression="SALES_TAX" />
                    <asp:BoundField DataField="TOTAL_DUE" HeaderText="Total Due" 
                        SortExpression="TOTAL_DUE" />
                    <asp:BoundField DataField="ORDER_DATE" HeaderText="Order Date" 
                        SortExpression="ORDER_DATE" />
                    <asp:BoundField DataField="SHIP_METHOD" HeaderText="Ship Method" 
                        SortExpression="SHIP_METHOD" />
                    <asp:BoundField DataField="BILL_CITY_STATE" HeaderText="Bill City State" 
                        SortExpression="BILL_CITY_STATE" />
                    <asp:BoundField DataField="CUST_TYPE" HeaderText="Cust Type" 
                        SortExpression="CUST_TYPE" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <EmptyDataTemplate>
                    No Details Available<br />
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="SelectCustomerInvoiceLineItemsBySimilarSerial" 
                TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="AAAAAAAAAAAAAAAAAA" Name="serial" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="CheckBox1" DefaultValue="" Name="exact" 
                        PropertyName="Checked" Type="Boolean" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td>

 
            &nbsp;</td>
    </tr>
    <tr>
        <td>

 
            &nbsp;</td>
    </tr>
    <tr>
        <td>
<table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>

 
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>

 
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
    <br />
    </asp:Content>


