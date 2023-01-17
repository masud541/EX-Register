<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecallStatusUpdate.aspx.cs" Inherits="RecallStatusUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            font-size: 11pt;
            text-align: left;
        }
        .style18
        {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <b>RECALL STATUS UPDATE<br /></b>
        <table class="style10">
            <tr>
                <td style="text-align: left" colspan="7">
                    <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                        <asp:Label ID="Label5" runat="server" 
                            style="font-weight: 700; font-size: 8pt; color: #808080" 
                            Text="Find Recall Request"></asp:Label>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="style17" colspan="7">
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
                                    Text="RA Num"></asp:Label>
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
                <td style="text-align: left" colspan="7">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="3" DataKeyNames="RECALL_SEQ" DataSourceID="ObjectDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="RECALL_SEQ" HeaderText="RECALL_SEQ" ReadOnly="True" 
                                SortExpression="RECALL_SEQ" Visible="False" />
                            <asp:TemplateField HeaderText="RC Num" SortExpression="RC_NUM_DISPLAY">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" Width="60" Enabled="false" runat="server" Text='<%# Bind("RC_NUM_DISPLAY") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("RC_NUM_DISPLAY") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Last Name" SortExpression="LAST_NAME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" Width="60" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("LAST_NAME") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="First Name" SortExpression="FIRST_NAME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" Width="60" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("FIRST_NAME") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone" SortExpression="PHONE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" Width="100" runat="server" Text='<%# Bind("PHONE") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("PHONE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EMAIL" SortExpression="EMAIL">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" Width="120" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <a href='mailto:<%#Eval("EMAIL")%>' title="Click to send email to <%#Eval("EMAIL")%>">
                                                <%#Eval("EMAIl")%></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Dealer" SortExpression="DEALER_NUM">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" Width="40" runat="server" Text='<%# Bind("DEALER_NUM") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DEALER_NUM") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Comments" SortExpression="COMMENTS">
                                <EditItemTemplate>
                                    
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("COMMENTS") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="TO_ADDRESS">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" Width="80" runat="server" Text='<%# Bind("TO_ADDRESS") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("TO_ADDRESS") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" SortExpression="TO_CITY">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" Width="60" runat="server" Text='<%# Bind("TO_CITY") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("TO_CITY") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ST" SortExpression="TO_STATE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" Width="25" runat="server" Text='<%# Bind("TO_STATE") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("TO_STATE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Zip" SortExpression="TO_ZIP">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" Width="45" runat="server" Text='<%# Bind("TO_ZIP") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("TO_ZIP") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Shirt Size" SortExpression="SHIRT_SIZE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox14" Width="24" runat="server" Text='<%# Bind("SHIRT_SIZE") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("SHIRT_SIZE") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="RA Num" SortExpression="RA_NUMBER">
                                <EditItemTemplate>
                                    
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("RA_NUMBER") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="RA_SEQ" HeaderText="RA_SEQ" SortExpression="RA_SEQ" 
                                Visible="False" />
                            <asp:BoundField DataField="TRACKING_NUMBER" HeaderText="Tracking #" 
                                SortExpression="TRACKING_NUMBER" />
                            <asp:BoundField DataField="PO_NUMBER" HeaderText="PO #" 
                                SortExpression="PO_NUMBER" />
                        </Columns>
                        <SelectedRowStyle BackColor="#FFFF99" />
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRCByRCorRA" 
                        TypeName="RCBusinessObject" UpdateMethod="UpdateCustomerInfo">
                        <UpdateParameters>
                            <asp:Parameter Name="LAST_NAME" Type="String" />
                            <asp:Parameter Name="FIRST_NAME" Type="String" />
                            <asp:Parameter Name="PHONE" Type="String" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="DEALER_NUM" Type="String" />
                            <asp:Parameter Name="TO_ADDRESS" Type="String" />
                            <asp:Parameter Name="TO_CITY" Type="String" />
                            <asp:Parameter Name="TO_STATE" Type="String" />
                            <asp:Parameter Name="TO_ZIP" Type="String" />
                            <asp:Parameter Name="SHIRT_SIZE" Type="String" />
                            <asp:Parameter Name="RC_NUM_DISPLAY" Type="String" />
                            <asp:Parameter Name="COMMENTS" Type="String" />
                            <asp:Parameter Name="PACKAGING" Type="String" />
                            <asp:Parameter Name="RA_NUMBER" Type="String" />
                            <asp:Parameter Name="Original_RECALL_SEQ" Type="Int32" />
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox3" DefaultValue="RC0" Name="rc_num" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" DefaultValue="RA0" Name="ra_num" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="7" style="text-align: left">
                    <br />
                    <asp:Label ID="Label8" runat="server" 
                        style="font-weight: 700; font-size: 8pt; color: #808080" 
                        Text="Recall Item(s)" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7" style="text-align: left">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="3" DataKeyNames="RA_ITEM_SEQ" DataSourceID="ObjectDataSource2" 
                        onrowdatabound="GridView2_RowDataBound" 
                        onselectedindexchanged="GridView2_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField SelectText="View/Update Status" ShowSelectButton="True" />
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
                <td colspan="7" style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label10" runat="server" style="font-weight: 700" 
                        Text="New Status"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
                        <asp:ListItem Value="0"> -</asp:ListItem>
                        <asp:ListItem>RECEIVED</asp:ListItem>
                        <asp:ListItem Value="INTERNAL">INTERNAL COMMENT</asp:ListItem>
                        <asp:ListItem>SHIPPED</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left">
                    <asp:Label ID="Label11" runat="server" style="font-weight: 700" Text="Comments"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBoxComments" runat="server" Enabled="False" Width="262px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:Label ID="LabelInsertError" runat="server" style="color: #FF0000"></asp:Label>
                    <br />
                    <asp:Button ID="Button4" runat="server" Enabled="False" onclick="Button4_Click" 
                        Text="Update Status" />
                </td>
                <td width="150">
                    <asp:HyperLink ID="HyperLink2" runat="server" Enabled="False" 
                        NavigateUrl="~/RecallRepairLetter.aspx" Target="_blank">Print Return Letter (PDF)</asp:HyperLink>
                </td>
                <td width="150">
                    <asp:HyperLink ID="HyperLink3" runat="server" Enabled="False" 
                        NavigateUrl="~/RecallRepairLetterWRD.aspx" Target="_blank">Print Return Letter (.doc)</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" Enabled="False" 
                        NavigateUrl="~/RecallRepairLetter.aspx" Target="_blank">Print Return Letter (txt)</asp:HyperLink>
                </td>
                <td width="150">
                    <asp:HyperLink ID="HyperLink5" runat="server" Enabled="False" 
                        NavigateUrl="~/RecallRepairLetter.aspx" Target="_blank">Print Return Letter (HTML)</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="7" style="text-align: left">
                    <i>(if the status is set to RECEIVED or SHIPPED, the customer will automatically 
                    receive an email)</i></td>
            </tr>
            <tr>
                <td colspan="7" style="text-align: left">
                    <br />
                    <asp:Label ID="Label9" runat="server" 
                        style="font-weight: 700; font-size: 8pt; color: #808080" 
                        Text="Selected Item Status" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="7" style="text-align: left">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ObjectDataSource3" onrowdatabound="GridView3_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                                SortExpression="SERIAL_NUMBER">
                            <ItemStyle BackColor="#FFFF99" Font-Bold="True" Font-Size="12pt" />
                            </asp:BoundField>
                            <asp:BoundField DataField="STATUS_DATE_TIME" HeaderText="Date" 
                                SortExpression="STATUS_DATE_TIME" />
                            <asp:BoundField DataField="STATUS" HeaderText="Status" 
                                SortExpression="STATUS" />
                            <asp:BoundField DataField="COMMENTS" HeaderText="Comments" 
                                SortExpression="COMMENTS" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectItemStatus" 
                        TypeName="RCBusinessObject">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="item_seq" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: left" colspan="2">
                    &nbsp;</td>
                <td style="text-align: left" colspan="5">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/RecallSearchResult.aspx">Customer Searches</asp:HyperLink>
        <br />
&nbsp;</center>
</asp:Content>

