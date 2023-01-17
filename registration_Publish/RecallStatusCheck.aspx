<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RecallStatusCheck.aspx.cs" Inherits="RecallStatusCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            font-size: 8pt;
        }
        
        .style17
        {
            font-size: 11pt;
            text-align: left;
        }
        .style1
        {
            width: 100%;
        }
        .style18
        {
            width: 104px;
        }
      
a:link{
  color: #0000FF;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif; font-size: 10pt">
    <b>RECALL STATUS CHECK<br /></b>
    <table class="style10">
        <tr>
            <td style="text-align: left" colspan="2">
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                    <asp:Label ID="Label5" runat="server" 
                            style="font-weight: 700; font-size: 8pt; color: #808080" 
                            Text="Find Recall Request"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td class="style17" colspan="2">
                <table class="style1">
                    <tr>
                        <td class="style18">
                            <asp:Label ID="Label6" runat="server" style="font-weight: 700; font-size: 9pt" 
                                    Text="RC Num"></asp:Label>
                        </td>
                        <td style="text-align: center">
                                or</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-size: 9pt" 
                                    Text="Email"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                    style="width: 39px" Text="Find" Width="84px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: left" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="3" DataKeyNames="RECALL_SEQ" DataSourceID="ObjectDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="RECALL_SEQ" HeaderText="RECALL_SEQ" ReadOnly="True" 
                                SortExpression="RECALL_SEQ" Visible="False" />
                        <asp:BoundField DataField="RC_NUM_DISPLAY" HeaderText="RC Num" 
                                SortExpression="RC_NUM_DISPLAY" />
                        <asp:BoundField DataField="LAST_NAME" HeaderText="Last Name" 
                                SortExpression="LAST_NAME">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FIRST_NAME" HeaderText="First Name" 
                                SortExpression="FIRST_NAME">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PHONE" HeaderText="Phone" SortExpression="PHONE" />
                        <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                        <asp:BoundField DataField="DEALER_NUM" HeaderText="Dealer" 
                            SortExpression="DEALER_NUM" />
                        <asp:BoundField DataField="COMMENTS" HeaderText="Comments" 
                                SortExpression="COMMENTS" />
                        <asp:BoundField DataField="TO_ADDRESS" HeaderText="Address" 
                                SortExpression="TO_ADDRESS" />
                        <asp:BoundField DataField="TO_CITY" HeaderText="City" 
                                SortExpression="TO_CITY" />
                        <asp:BoundField DataField="TO_STATE" HeaderText="ST" 
                                SortExpression="TO_STATE" />
                        <asp:BoundField DataField="TO_ZIP" HeaderText="Zip" SortExpression="TO_ZIP" />
                        <asp:BoundField DataField="PACKAGING" HeaderText="Packaging" 
                                SortExpression="PACKAGING" />
                        <asp:BoundField DataField="SHIRT_SIZE" HeaderText="Shirt Size" 
                                SortExpression="SHIRT_SIZE">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RA_NUMBER" HeaderText="RA Num" 
                                SortExpression="RA_NUMBER" />
                        <asp:BoundField DataField="RA_SEQ" HeaderText="RA_SEQ" SortExpression="RA_SEQ" 
                                Visible="False" />
                    </Columns>
                    <SelectedRowStyle BackColor="#FFFF99" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRCByRCorEmail" 
                        TypeName="RCBusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox3" DefaultValue="RC0" Name="rc_num" 
                                PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox4" DefaultValue="none" Name="email" 
                                PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                <br />
                <asp:Label ID="Label8" runat="server" 
                        style="font-weight: 700; font-size: 8pt; color: #808080" 
                    Text="Recall Item(s)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="3" DataKeyNames="RA_ITEM_SEQ" 
                    DataSourceID="ObjectDataSource2" onrowdatabound="GridView2_RowDataBound" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                                SortExpression="SERIAL_NUMBER">
                        <ItemStyle Font-Bold="True" Font-Size="14pt" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                                SortExpression="CATEGORY" />
                        <asp:BoundField DataField="SUBCAT" HeaderText="Subcat" 
                                SortExpression="SUBCAT" />
                        <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                        <asp:BoundField DataField="RA_ITEM_DATE" HeaderText="RA Date" 
                                SortExpression="RA_ITEM_DATE" />
                    </Columns>
                    <SelectedRowStyle BackColor="#FFFF99" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRCItems" 
                        TypeName="RCBusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="recall_seq" 
                                PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                <br />
                <asp:Label ID="Label9" runat="server" 
                        style="font-weight: 700; font-size: 8pt; color: #808080" 
                        Text="Selected Item Status" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ObjectDataSource3" 
                    onrowdatabound="GridView3_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                                SortExpression="SERIAL_NUMBER">
                        <ItemStyle BackColor="#FFFF99" Font-Bold="True" Font-Size="12pt" />
                        </asp:BoundField>
                        <asp:BoundField DataField="STATUS_DATE_TIME" HeaderText="Date" 
                                SortExpression="STATUS_DATE_TIME" />
                        <asp:BoundField DataField="STATUS" HeaderText="Status" 
                                SortExpression="STATUS" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectPublicItemStatus" 
                        TypeName="RCBusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="item_seq" 
                                PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</center>
</asp:Content>

