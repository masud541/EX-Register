<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RAStatusCS.aspx.cs" Inherits="RAStatusCS" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="RA STATUS"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    
 
    <table class="style1">
        <tr>
            <td>
                        <asp:Label ID="Label62" runat="server" Font-Bold="True" 
                    Text="Dealer And Contact:"></asp:Label>
                    <asp:DropDownList ID="DropDownListDealerAndContact" runat="server" 
                    AppendDataBoundItems="True" AutoPostBack="True" 
                    DataSourceID="ObjectDataSource6" DataTextField="DEALER_AND_CONTACT" 
                    DataValueField="USERID" 
                            onselectedindexchanged="DropDownListDealerAndContact_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectDealersAndContact" TypeName="RABusinessObject">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                    Text="RA Requests"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_SEQ" 
                ForeColor="#333333" GridLines="None" DataSourceID="ObjectDataSource2" 
                    AllowPaging="True" onselectedindexchanged="GridView3_SelectedIndexChanged" 
                    onpageindexchanged="GridView3_PageIndexChanged" PageSize="5">
                <PagerSettings Mode="NumericFirstLast" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField SelectText="View Items" ShowSelectButton="True" />
                    <asp:BoundField DataField="RA_DATE" 
                        HeaderText="Request Timestamp" 
                        SortExpression="RA_DATE" >
                    <HeaderStyle Wrap="False" />
                    <ItemStyle ForeColor="#009933" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RA_NUMBER" HeaderText="RA Number" 
                        SortExpression="RA_NUMBER">
                    <HeaderStyle Wrap="False" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRAHByUser" 
                    TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListDealerAndContact" 
                            Name="dp_user_id" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <br />
    <asp:Label ID="Label63" runat="server" Font-Bold="True" 
                    Text="RA Items"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="RA_ITEM_SEQ" 
                ForeColor="#333333" GridLines="None" DataSourceID="ObjectDataSource7" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged" 
                    style="text-align: left" onrowdatabound="GridView2_RowDataBound">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField SelectText="View Status" ShowSelectButton="True" />
                    <asp:BoundField DataField="RA_DATE" DataFormatString="{0:g}" 
                        HeaderText="Request Timestamp" HtmlEncode="False" 
                        SortExpression="RA_DATE" >
                    <HeaderStyle Wrap="False" />
                    <ItemStyle ForeColor="#009933" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="APPROVED" HeaderText="Status" 
                        SortExpression="APPROVED" />
                    <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                        SortExpression="CATEGORY" />
                    <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial Number" 
                        SortExpression="SERIAL_NUMBER" />
                    <asp:BoundField DataField="CONSUMER_PURCHASE_DATE" 
                        HeaderText="Consumer Purchase Date" SortExpression="CONSUMER_PURCHASE_DATE" 
                        DataFormatString="{0:d}" HtmlEncode="False" />
                    <asp:BoundField DataField="WARRANTY_EXPECTED" HeaderText="Warranty Expected" 
                        SortExpression="WARRANTY_EXPECTED" />
                    <asp:BoundField DataField="PROBLEM_DESCRIPTION" HeaderText="Problem Description" 
                        SortExpression="PROBLEM_DESCRIPTION">
                    </asp:BoundField>
                    <asp:BoundField DataField="CONSUMER_FULL_NAME" HeaderText="Consumer's Name" 
                        SortExpression="CONSUMER_FULL_NAME" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="SelectLineItemsByRaSeq" TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView3" Name="ra_seq" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <br />
    &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="RA Item Actions"></asp:Label>
    <table class="style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_STATUS_SEQ" DataSourceID="ObjectDataSource1" 
                ForeColor="#333333" GridLines="None" style="text-align: left">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="STATUS_DESC" HeaderText="Action" 
                        SortExpression="STATUS_DESC" />
                        <asp:BoundField DataField="STATUS_DATE" HeaderText="Action Date" 
                        SortExpression="STATUS_DATE" HtmlEncode="False" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRAStatus" 
                    TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="ra_item_seq" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

