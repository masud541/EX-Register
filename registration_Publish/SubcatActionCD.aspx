<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="SubcatActionCD.aspx.cs" Inherits="SubcatActionCD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 238px;
        }
        .style13
        {
            width: 612px;
        }
    .style17
    {
        width: 148px;
    }
    .style18
    {
        width: 129px;
    }
        .style19
        {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                Text="Subcategory / Action CD Mappings"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: left">
                        <table class="style1" style="width: 100%">
                            <tr>
                                <td class="style18">
                                    <asp:Label ID="Label59" runat="server" Text="Category"></asp:Label>
                                </td>
                                <td class="style17">
                                    <asp:Label ID="Label60" runat="server" Text="Subcategory"></asp:Label>
                                </td>
                                <td class="style19">
                                    <asp:Label ID="Label64" runat="server" Text="Action CDs"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        DataSourceID="ObjectDataSource5" DataTextField="CATEGORY" 
                                        DataValueField="CATEGORY" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectCategory" 
                                        TypeName="RABusinessObject"></asp:ObjectDataSource>
                                </td>
                                <td class="style17">
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
                                <td class="style19">
                                    <asp:DropDownList ID="DropDownListActionCD" runat="server" 
                                        DataSourceID="ObjectDataSource8" DataTextField="CODE" 
                                        DataValueField="ACTION_CD_SEQ">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        SelectMethod="SelectActionCDsActive" TypeName="RABusinessObject">
                                    </asp:ObjectDataSource>
                                </td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
                                    <br />
                                    <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            &nbsp;</td>
    </tr>
    </table>

 
<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Action Codes"></asp:Label>
<table class="style1">
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="SUB_CAT_ACTION_CD_SEQ" DataSourceID="ObjectDataSource1" 
                ForeColor="#333333" GridLines="None" 
                PageSize="9">
                <PagerSettings Mode="NumericFirstLast" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True">
                    <ControlStyle ForeColor="Blue" />
                    </asp:CommandField>
                    <asp:BoundField DataField="ACTION_CD" HeaderText="Action Code" 
                        SortExpression="ACTION_CD">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ACTION_DESC" HeaderText="Action Description" 
                        SortExpression="ACTION_DESC">
                    <ItemStyle Wrap="False" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                DeleteMethod="DeleteSubcatActionCD" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="SelectSubcatActionCDs" TypeName="RABusinessObject">
                <DeleteParameters>
                    <asp:Parameter Name="Original_SUB_CAT_ACTION_CD_SEQ" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="cat" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="subcat" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td class="style12">

 
            &nbsp;</td>
        <td class="style13" style="text-align: left">

 
                                <br />
                                <br />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">

 
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">

 
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
    <br />
    </asp:Content>



