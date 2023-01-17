<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="CategoryMaster.aspx.cs" Inherits="CategoryMaster" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 75px;
        }
        .style8
        {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" Text="New Category:" Width="101px"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBoxCat" runat="server" ValidationGroup="cat"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Insert" ValidationGroup="cat" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxCat" ErrorMessage="Required" 
                    ValidationGroup="cat"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Export (xls)" />
            </td>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBoxCatFilter" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Search" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CATEGORY_MASTER_SEQ" DataSourceID="ObjectDataSource2" 
        EmptyDataText="There are no data records to display." AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU">
            </asp:BoundField>
            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" 
                SortExpression="CATEGORY">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="SUB_CATEGORY1" HeaderText="SUB_CATEGORY1" 
                SortExpression="SUB_CATEGORY1">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="SUB_CATEGORY2" HeaderText="SUB_CATEGORY2" 
                SortExpression="SUB_CATEGORY2">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="SUB_CATEGORY3" HeaderText="SUB_CATEGORY3" 
                SortExpression="SUB_CATEGORY3">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="SUB_CATEGORY4" HeaderText="SUB_CATEGORY4" 
                SortExpression="SUB_CATEGORY4">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="CATEGORY_RANK" HeaderText="CATEGORY_RANK" 
                SortExpression="CATEGORY_RANK"></asp:BoundField>
            <asp:BoundField DataField="FAMILY" HeaderText="FAMILY" 
                SortExpression="FAMILY"></asp:BoundField>
            <asp:BoundField DataField="CATEGORY_MASTER_SEQ" HeaderText="CATEGORY_MASTER_SEQ" 
                SortExpression="CATEGORY_MASTER_SEQ" ReadOnly="True" Visible="False"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="SelectMasterCategory" TypeName="RABusinessObject" 
        UpdateMethod="UpdateCategoryMaster">
        <UpdateParameters>
            <asp:Parameter Name="sku" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="sub_category1" Type="String" />
            <asp:Parameter Name="sub_category2" Type="String" />
            <asp:Parameter Name="sub_category3" Type="String" />
            <asp:Parameter Name="sub_category4" Type="String" />
            <asp:Parameter Name="category_rank" Type="Int32" />
            <asp:Parameter Name="family" Type="Int32" />
            <asp:Parameter Name="Original_CATEGORY_MASTER_SEQ" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxCatFilter" DefaultValue="%" 
                Name="category" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

