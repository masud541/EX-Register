<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="ActionCDs.aspx.cs" Inherits="ActionCDs" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label3" runat="server" style="font-weight: 700" 
                    Text="ACTION CODES"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                    Text="Add Action Code"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1" style="width: 8%">
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Code"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Description"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelActionCDInsertError" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBoxCode" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxDesc" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
                                ValidationGroup="insert_code" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBoxCode" ErrorMessage="Required" 
                                ValidationGroup="insert_code"></asp:RequiredFieldValidator>
                        </td>
                        <td style="text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBoxDesc" ErrorMessage="Required" 
                                ValidationGroup="insert_code"></asp:RequiredFieldValidator>
                        </td>
                        <td style="text-align: left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td style="text-align: right">
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
                <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                    Text="Existing Action Codes"></asp:Label>
            &nbsp;
                <asp:Label ID="LabelActionCDError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ACTION_CD_SEQ" DataSourceID="ObjectDataSource1" 
                    ForeColor="#333333" GridLines="None" onrowdeleted="GridView1_RowDeleted" 
                    onrowupdated="GridView1_RowUpdated">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True">
                        <ControlStyle Font-Bold="True" ForeColor="#6666FF" />
                        </asp:CommandField>
                        <asp:BoundField DataField="CODE" HeaderText="Code" SortExpression="CODE" />
                        <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" 
                            SortExpression="DESCRIPTION" />
                        <asp:TemplateField HeaderText="Active Flag" SortExpression="ACTIVE_FLAG">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownListActive0" runat="server" 
                                                SelectedValue='<%# Bind("ACTIVE_FLAG") %>'>
                                                <asp:ListItem Value="Y">Y</asp:ListItem>
                                                <asp:ListItem Value="N">N</asp:ListItem>
                                            </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ACTIVE_FLAG") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Wrap="False" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    DeleteMethod="DeleteActionCD" OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectActionCDs" TypeName="RABusinessObject" 
                    UpdateMethod="UpdateActionCD">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ACTION_CD_SEQ" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="code" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="active_flag" Type="String" />
                        <asp:Parameter Name="original_ACTION_CD_SEQ" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

