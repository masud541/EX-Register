<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestReview.aspx.cs" Inherits="RequestReview" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: center;
        }
        .style8
        {
            width: 800px;
        }
        .style10
        {
            width: 111px;
            text-align: left;
        }
        .style11
        {
            width: 450px;
        }
        .style12
        {
            width: 26px;
        }
        .style13
        {
            width: 41px;
        }
    .style14
    {
            width: 102px;
            text-align: left;
        }
    .style15
    {
        width: 445px;
    }
    .style16
    {
        width: 72px;
    }
    .style20
    {
        width: 2px;
    }
        .style21
        {
            font-size: xx-small;
            color: #808080;
        }
        .style22
        {
            text-align: left;
        }
        .style23
        {
            width: 445px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="RA REQUEST REVIEW"></asp:Label>
        </td>
    </tr>
    </table>

 
<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="RA Requests"></asp:Label>
&nbsp;(
                            <asp:HyperLink ID="HyperLinkReviewRequest" 
    runat="server" CssClass="style6" 
                                ForeColor="Black" NavigateUrl="~/RequestReview.aspx" 
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
                    <asp:BoundField DataField="APPROVAL_DESC" HeaderText="Approval" 
                        SortExpression="APPROVAL_DESC">
                    <ItemStyle ForeColor="#0066FF" />
                    </asp:BoundField>
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
                OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRAHForReiew" 
                TypeName="RABusinessObject"></asp:ObjectDataSource>
                                    <asp:Label ID="Label63" runat="server" Text="Approval" 
                style="font-weight: 700; font-size: medium"></asp:Label>
                                    <asp:DropDownList ID="DropDownListApprovalCD" runat="server" 
                                        DataSourceID="ObjectDataSource9" DataTextField="DESCRIPTION" 
                                        DataValueField="APPROVAL_CD_SEQ">
                                    </asp:DropDownList>
                                    <asp:Button ID="ButtonApproval" runat="server" 
                onclick="ButtonApproval_Click" Text="Update Approval CD" />
            <asp:Label ID="LabelApprovalCDError" runat="server" style="color: #FF0000"></asp:Label>
                                    <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectMethod="SelectApprovalCDsActive" TypeName="RABusinessObject">
                                    </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td>

 
            <table class="style1">
                <tr>
                    <td class="style20" valign="top">
                        <br />
                    </td>
                    <td>

 
<asp:Label ID="Label67" runat="server" Font-Bold="True" Text="RA Items"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_ITEM_SEQ" DataSourceID="ObjectDataSource1" 
                ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                PageSize="6" onrowdatabound="GridView1_RowDataBound" 
                onpageindexchanging="GridView1_PageIndexChanging">
                <PagerSettings Mode="NumericFirstLast" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField SelectText="Select RA Item" ShowSelectButton="True" >
                    <ControlStyle ForeColor="Blue" />
                    <ItemStyle Wrap="False" />
                    </asp:CommandField>
                    <asp:BoundField DataField="RA_ITEM_SEQ" HeaderText="Item Seq" 
                        ReadOnly="True" SortExpression="RA_ITEM_SEQ" />
                    <asp:TemplateField HeaderText="Item Date" SortExpression="RA_ITEM_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" Enabled="false" runat="server" Text='<%# Bind("RA_ITEM_DATE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("RA_ITEM_DATE", "{0:g}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                   
                    <asp:BoundField DataField="APPROVED" HeaderText="Status" 
                        SortExpression="APPROVED" />
                    <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                        SortExpression="CATEGORY" />
                    <asp:BoundField DataField="SUBCAT" HeaderText="Subcategory" 
                        SortExpression="SUBCAT" />
                    <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                    <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                        SortExpression="SERIAL_NUMBER" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
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
                    <td class="style7" style="text-align: center" colspan="6">
                        <table align="left" class="style8">
                            <tr>
                    <td class="style22">
                        <asp:Label ID="Label29" runat="server" style="font-size: xx-small; color: #808080;" 
                            Text="Request Date"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label32" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Category / Sub" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label33" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Model Number" 
                            Visible="False" CssClass="style21"></asp:Label>
                        <asp:Label ID="Label62" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Sku" CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label34" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Serial Number" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label30" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Status" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td style="margin-left: 40px;" class="style22">
                        <asp:Label ID="Label31" runat="server" style="font-weight: 700" Text="RA#" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                            </tr>
                            <tr>
                    <td class="style22">
                        <asp:Label ID="LabelRequestDate" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelCategory" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelModel" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="LabelSku" runat="server"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelSerial" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelApproved" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="margin-left: 40px;" class="style22">
                        <asp:Label ID="LabelRANum" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                            </tr>
                            <tr>
                    <td class="style22">
                        <asp:Label ID="Label35" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Purchase Date" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label36" runat="server" style="font-weight: 700" 
                            Text="Wrnt Expected" CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label37" runat="server" style="font-weight: 700" 
                            Text="Consumer Name" CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label38" runat="server" style="font-weight: 700" 
                            Text="Dealer Contact" CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label39" runat="server" style="font-weight: 700" 
                            Text="Dealer Phone" CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="Label40" runat="server" style="font-weight: 700" 
                            Text="Dealer Email" CssClass="style21"></asp:Label>
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                            </tr>
                            <tr>
                    <td class="style22">
                        <asp:Label ID="LabelPurchaseDate" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelWarrantyExpected" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="margin-left: 40px" class="style22">
                        <asp:Label ID="LabelConsumerName" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelDealerContact" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelDealerPhone" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style22">
                        <asp:Label ID="LabelDealerEmail" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label41" runat="server" style="font-weight: 700" Text="Problem" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:Label ID="Label66" runat="server" style="font-weight: 700" Text="Appeal" 
                            CssClass="style21"></asp:Label>
                    </td>
                    <td class="style23">
                        <asp:Label ID="Label42" runat="server" style="font-weight: 700" 
                            Text="Rejection Email Message" CssClass="style21"></asp:Label>
                    </td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style22">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="LabelProblem" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:Label ID="LabelAppeal" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="style15">
                        <asp:TextBox ID="TextBoxRejectionMessage" runat="server" Enabled="False" 
                            TextMode="MultiLine" Width="577px" Height="38px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: left">
                        <table class="style1" style="width: 100%">
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="Label59" runat="server" Text="Category" CssClass="style21"></asp:Label>
                                </td>
                                <td class="style13">
                                    <asp:Label ID="Label60" runat="server" Text="Subcategory" CssClass="style21"></asp:Label>
                                </td>
                                <td class="style16">
                                    <asp:Label ID="Label61" runat="server" Text="Sku" CssClass="style21"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label64" runat="server" Text="Action CDs" CssClass="style21"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        DataSourceID="ObjectDataSource5" DataTextField="CATEGORY" 
                                        DataValueField="CATEGORY" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectCategory" 
                                        TypeName="RABusinessObject"></asp:ObjectDataSource>
                                </td>
                                <td class="style13">
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                        DataSourceID="ObjectDataSource6" DataTextField="SUB_CATEGORY1" 
                                        DataValueField="SUB_CATEGORY1" 
                                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectSubCategory" 
                                        TypeName="RABusinessObject">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="category" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </td>
                                <td class="style16">
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        DataSourceID="ObjectDataSource7" DataTextField="NAME_AND_SKU" 
                                        DataValueField="category_master_seq" 
                                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectSkuBySubCat" 
                                        TypeName="RABusinessObject">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="category" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList2" Name="sub_cat" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownListActionCD" runat="server" 
                                        DataSourceID="ObjectDataSource8" DataTextField="CODE" 
                                        DataValueField="ACTION_CD_SEQ">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectMethod="SelectActionCDsActiveCatSub" TypeName="RABusinessObject">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="cat" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownList2" Name="sub" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td>

 
            <table class="style11">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Enabled="False" onclick="Button1_Click" 
                            style="font-weight: 700; background-color: #00CC00" Text="Approve" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button2" runat="server" Enabled="False" onclick="Button2_Click" 
                            style="font-weight: 700; background-color: #FF5B24" Text="Reject" />
                        <asp:Label ID="LabelRejectionMessage" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>

 
            <asp:Label ID="Label75" runat="server" style="color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>

 
<asp:Label ID="Label65" runat="server" Font-Bold="True" 
                Text="Invoice Details for SERIAL of Selected Request"></asp:Label>
        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Checked="True" 
                Text="Exact Serial Match" />
&nbsp;
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                Text="Search Again" />
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
                    <asp:ControlParameter ControlID="LabelSerial" DefaultValue="AAAAAAAAAAAAAAAAAA" Name="serial" 
                        PropertyName="Text" Type="String" />
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

 
<asp:Label ID="Label28" runat="server" Font-Bold="True" 
                Text="Online History for SERIAL of Selected Request"></asp:Label>
        &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="Exact Serial Match" />
&nbsp;<asp:Button ID="Button4" runat="server" onclick="Button3_Click" Text="Search Again" />
        </td>
    </tr>
    <tr>
        <td>
<table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_SEQ" 
                ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                PageSize="8" onrowdatabound="GridView1_RowDataBound" 
                DataSourceID="ObjectDataSource2">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    
                    <asp:TemplateField HeaderText="Request Date" SortExpression="RA_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox15" Enabled="false" runat="server" 
                                Text='<%# Bind("RA_DATE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%# Bind("RA_DATE", "{0:g}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Approved">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownListAppr0" runat="server" 
                                                SelectedValue='<%# Bind("APPROVED") %>'>
                                                <asp:ListItem Value="N">N</asp:ListItem>
                                                <asp:ListItem Value="Y">Y</asp:ListItem>
                                                <asp:ListItem Value="P">P</asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <%# Eval("APPROVED")%>
                                        </ItemTemplate>
                                        <ItemStyle Font-Bold="True" />
                                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="RA#" SortExpression="RA_NUMBER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox16" Enabled="false" runat="server" 
                                Text='<%# Bind("RA_NUMBER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label16" runat="server" Text='<%# Bind("RA_NUMBER") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Serial Number" SortExpression="Serial Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox19" Enabled="false" runat="server" 
                                Text='<%# Bind("SERIAL_NUMBER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label19" runat="server" Text='<%# Bind("SERIAL_NUMBER") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Consumer Purchase Date" 
                        SortExpression="CONSUMER_PURCHASE_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox20" Enabled="false" runat="server" 
                                Text='<%# Bind("CONSUMER_PURCHASE_DATE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label20" runat="server" 
                                Text='<%# Bind("CONSUMER_PURCHASE_DATE", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Wrnt Expected" 
                        SortExpression="WARRANTY_EXPECTED">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox21" Enabled="false" runat="server" 
                                Text='<%# Bind("WARRANTY_EXPECTED") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label21" runat="server" Text='<%# Bind("WARRANTY_EXPECTED") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Problem" SortExpression="PROBLEM_DESCRIPTION">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox22" Enabled="false" runat="server" 
                                Text='<%# Bind("PROBLEM_DESCRIPTION") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label22" runat="server" 
                                Text='<%# Bind("PROBLEM_DESCRIPTION") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CONSUMER_FULL_NAME" HeaderText="Consumer Name" 
                        SortExpression="CONSUMER_FULL_NAME">
                    <HeaderStyle Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DEALER" HeaderText="Dealer" 
                        SortExpression="DEALER" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <EmptyDataTemplate>
                    No History for RA Request Selected
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRAHistorySimilarSerial" 
                TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ra_item_seq" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="CheckBox2" Name="exact" PropertyName="Checked" 
                        Type="Boolean" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
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

 
<asp:Label ID="Label44" runat="server" Font-Bold="True" 
                Text="Online RA History for Selected Dealer"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_SEQ" 
                ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                PageSize="8" onrowdatabound="GridView1_RowDataBound" AllowPaging="True" 
                DataSourceID="ObjectDataSource3">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    
                    <asp:TemplateField HeaderText="Request Date" SortExpression="RA_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox28" Enabled="false" runat="server" 
                                Text='<%# Bind("RA_DATE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label45" runat="server" Text='<%# Bind("RA_DATE", "{0:g}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Approved">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownListAppr1" runat="server" 
                                                SelectedValue='<%# Bind("APPROVED") %>'>
                                                <asp:ListItem Value="N">N</asp:ListItem>
                                                <asp:ListItem Value="Y">Y</asp:ListItem>
                                                <asp:ListItem Value="P">P</asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <%# Eval("APPROVED")%>
                                        </ItemTemplate>
                                        <ItemStyle Font-Bold="True" />
                                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="RA#" SortExpression="RA_NUMBER">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox29" Enabled="false" runat="server" 
                                Text='<%# Bind("RA_NUMBER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label46" runat="server" Text='<%# Bind("RA_NUMBER") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Serial Number" SortExpression="Serial Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox32" Enabled="false" runat="server" 
                                Text='<%# Bind("SERIAL_NUMBER") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label49" runat="server" Text='<%# Bind("SERIAL_NUMBER") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Consumer Purchase Date" 
                        SortExpression="CONSUMER_PURCHASE_DATE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox33" Enabled="false" runat="server" 
                                Text='<%# Bind("CONSUMER_PURCHASE_DATE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label50" runat="server" 
                                Text='<%# Bind("CONSUMER_PURCHASE_DATE", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Wrnt Expected" 
                        SortExpression="WARRANTY_EXPECTED">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox34" Enabled="false" runat="server" 
                                Text='<%# Bind("WARRANTY_EXPECTED") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label51" runat="server" Text='<%# Bind("WARRANTY_EXPECTED") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Problem" SortExpression="PROBLEM_DESCRIPTION">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox35" Enabled="false" runat="server" 
                                Text='<%# Bind("PROBLEM_DESCRIPTION") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label52" runat="server" 
                                Text='<%# Bind("PROBLEM_DESCRIPTION") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Consumer Name" 
                        SortExpression="CONSUMER_FULL_NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox36" Enabled="false" runat="server" 
                                Text='<%# Bind("CONSUMER_FULL_NAME") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label53" runat="server" Text='<%# Bind("CONSUMER_FULL_NAME") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Wrap="False" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <EmptyDataTemplate>
                    No History for RA Request Selected
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="SelectRAsByCustomer" TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ra_item_seq" 
                        PropertyName="SelectedValue" Type="Int32" />
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
            &nbsp;</td>
    </tr>
</table>
    <br />
    </asp:Content>

