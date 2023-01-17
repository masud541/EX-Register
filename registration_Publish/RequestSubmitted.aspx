<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestSubmitted.aspx.cs" Inherits="RequestSubmitted" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="PRODUCT RA REQUEST FORM"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table class="style1">
                    <tr>
                        <td colspan="4" style="text-align: center" width="100%">
                            <br />
                            <asp:Label ID="Label9" runat="server" style="font-weight: 700" 
                                Text="Request Timestamp: "></asp:Label>
                            <asp:Label ID="LabelDateTimeStamp" runat="server" 
                                style="color: #009933; font-size: medium" Text="Label"></asp:Label>
                            <br />
                            <br />
                            <table class="style8" width="100%">
                                <tr>
                                    <td>
                                        You may now either Add another Item to the Request or Finalize the Request.
                                        <br />
                                        RA Requests will not be reviewed unless they are finalized.<br />
                                        Upon finalization a confirmation email will be generated.</td>
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
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                            Text="Add Another Item" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>OR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                            Text="Finalize and Submit Request" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_ITEM_SEQ" 
                ForeColor="#333333" GridLines="None" DataSourceID="ObjectDataSource7">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
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
                    <asp:BoundField DataField="SUBCAT" HeaderText="Subcategory" 
                        SortExpression="SUBCAT" />
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
                    <asp:QueryStringParameter Name="ra_seq" QueryStringField="rs" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="margin-left: 40px; text-align: right;">
                            &nbsp;</td>
                        <td style="text-align: left">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

