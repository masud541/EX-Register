<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="SkuMasterListTemp.aspx.cs" Inherits="SkuMasterListTemp" MaintainScrollPositionOnPostback="true" ValidateRequest="false" EnableEventValidation="False"%>

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
                <asp:Label ID="Label3" runat="server" Text="New Sku:"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBoxSku" runat="server" ValidationGroup="sku"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Insert" ValidationGroup="sku" 
                    onclick="Button1_Click1" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxSku" ErrorMessage="Required" 
                    ValidationGroup="sku"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="TextBoxSkuFilter" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Search" />
            </td>
        </tr>
        </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SKU" DataSourceID="ObjectDataSource2" 
        EmptyDataText="There are no data records to display." AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="UPC" HeaderText="UPC" SortExpression="UPC">
            </asp:BoundField>
            <asp:BoundField DataField="SKU" HeaderText="SKU" ReadOnly="True" 
                SortExpression="SKU">
            </asp:BoundField>
            <asp:BoundField DataField="SHORT_DESCR" HeaderText="SHORT_DESCR" 
                SortExpression="SHORT_DESCR">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="LONG_DESCR" HeaderText="LONG_DESCR" 
                SortExpression="LONG_DESCR">
            <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="AVAILABILITY" HeaderText="AVAILABILITY" 
                SortExpression="AVAILABILITY">
            </asp:BoundField>
            <asp:BoundField DataField="DEALER_COST" HeaderText="DEALER_COST" 
                SortExpression="DEALER_COST">
            </asp:BoundField>
            <asp:BoundField DataField="RETAIL_PRICE" HeaderText="RETAIL_PRICE" 
                SortExpression="RETAIL_PRICE">
            </asp:BoundField>
            <asp:BoundField DataField="MAP_PRICE" HeaderText="MAP_PRICE" 
                SortExpression="MAP_PRICE">
            </asp:BoundField>
            <asp:BoundField DataField="MFG_OFFER_PRICE" HeaderText="MFG_OFFER_PRICE" 
                SortExpression="MFG_OFFER_PRICE">
            </asp:BoundField>
            <asp:BoundField DataField="AVG_DEALER_MARGIN" HeaderText="AVG_DEALER_MARGIN" 
                SortExpression="AVG_DEALER_MARGIN">
            </asp:BoundField>
            <asp:BoundField DataField="IMAGE" HeaderText="IMAGE" SortExpression="IMAGE">
            </asp:BoundField>
            <asp:BoundField DataField="ACTIVE" HeaderText="ACTIVE" SortExpression="ACTIVE">
            </asp:BoundField>
            <asp:BoundField DataField="WEIGHT" HeaderText="WEIGHT" SortExpression="WEIGHT">
            </asp:BoundField>
            <asp:BoundField DataField="LENGTH" HeaderText="LENGTH" SortExpression="LENGTH">
            </asp:BoundField>
            <asp:BoundField DataField="HEIGHT" HeaderText="HEIGHT" SortExpression="HEIGHT">
            </asp:BoundField>
            <asp:BoundField DataField="WIDTH" HeaderText="WIDTH" SortExpression="WIDTH">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME1" 
                HeaderText="ADDITIONAL_IMG_NAME1" SortExpression="ADDITIONAL_IMG_NAME1">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE1" 
                HeaderText="ADDITIONAL_IMG_FILE1" SortExpression="ADDITIONAL_IMG_FILE1">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME2" 
                HeaderText="ADDITIONAL_IMG_NAME2" SortExpression="ADDITIONAL_IMG_NAME2">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE2" 
                HeaderText="ADDITIONAL_IMG_FILE2" SortExpression="ADDITIONAL_IMG_FILE2">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME3" 
                HeaderText="ADDITIONAL_IMG_NAME3" SortExpression="ADDITIONAL_IMG_NAME3">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE3" 
                HeaderText="ADDITIONAL_IMG_FILE3" SortExpression="ADDITIONAL_IMG_FILE3">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME4" 
                HeaderText="ADDITIONAL_IMG_NAME4" SortExpression="ADDITIONAL_IMG_NAME4">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE4" 
                HeaderText="ADDITIONAL_IMG_FILE4" SortExpression="ADDITIONAL_IMG_FILE4">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME5" 
                HeaderText="ADDITIONAL_IMG_NAME5" SortExpression="ADDITIONAL_IMG_NAME5">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE5" 
                HeaderText="ADDITIONAL_IMG_FILE5" SortExpression="ADDITIONAL_IMG_FILE5">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_TYPE1" HeaderText="SPEC_TYPE1" 
                SortExpression="SPEC_TYPE1">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_NAME1" HeaderText="SPEC_NAME1" 
                SortExpression="SPEC_NAME1">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_DESCRIPTION1" HeaderText="SPEC_DESCRIPTION1" 
                SortExpression="SPEC_DESCRIPTION1">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_TYPE2" HeaderText="SPEC_TYPE2" 
                SortExpression="SPEC_TYPE2">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_NAME2" HeaderText="SPEC_NAME2" 
                SortExpression="SPEC_NAME2">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_DESCRIPTION2" HeaderText="SPEC_DESCRIPTION2" 
                SortExpression="SPEC_DESCRIPTION2">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_TYPE3" HeaderText="SPEC_TYPE3" 
                SortExpression="SPEC_TYPE3">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_NAME3" HeaderText="SPEC_NAME3" 
                SortExpression="SPEC_NAME3">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_DESCRIPTION3" HeaderText="SPEC_DESCRIPTION3" 
                SortExpression="SPEC_DESCRIPTION3">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_TYPE4" HeaderText="SPEC_TYPE4" 
                SortExpression="SPEC_TYPE4">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_NAME4" HeaderText="SPEC_NAME4" 
                SortExpression="SPEC_NAME4">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_DESCRIPTION4" HeaderText="SPEC_DESCRIPTION4" 
                SortExpression="SPEC_DESCRIPTION4">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_TYPE5" HeaderText="SPEC_TYPE5" 
                SortExpression="SPEC_TYPE5">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_NAME5" HeaderText="SPEC_NAME5" 
                SortExpression="SPEC_NAME5">
            </asp:BoundField>
            <asp:BoundField DataField="SPEC_DESCRIPTION5" HeaderText="SPEC_DESCRIPTION5" 
                SortExpression="SPEC_DESCRIPTION5">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME6" 
                HeaderText="ADDITIONAL_IMG_NAME6" SortExpression="ADDITIONAL_IMG_NAME6">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE6" 
                HeaderText="ADDITIONAL_IMG_FILE6" SortExpression="ADDITIONAL_IMG_FILE6">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_NAME7" 
                HeaderText="ADDITIONAL_IMG_NAME7" SortExpression="ADDITIONAL_IMG_NAME7">
            </asp:BoundField>
            <asp:BoundField DataField="ADDITIONAL_IMG_FILE7" 
                HeaderText="ADDITIONAL_IMG_FILE7" SortExpression="ADDITIONAL_IMG_FILE7">
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="SelectSkuMasterTemp" TypeName="RABusinessObject" 
        UpdateMethod="UpdateSku">
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="upc" Type="String" />
            <asp:Parameter Name="short_descr" Type="String" />
            <asp:Parameter Name="long_descr" Type="String" />
            <asp:Parameter Name="availability" Type="String" />
            <asp:Parameter Name="dealer_cost" Type="String" />
            <asp:Parameter Name="retail_price" Type="String" />
            <asp:Parameter Name="map_price" Type="String" />
            <asp:Parameter Name="mfg_offer_price" Type="String" />
            <asp:Parameter Name="avg_dealer_margin" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="active" Type="String" />
            <asp:Parameter Name="weight" Type="String" />
            <asp:Parameter Name="length" Type="String" />
            <asp:Parameter Name="height" Type="String" />
            <asp:Parameter Name="width" Type="String" />
            <asp:Parameter Name="additional_img_name1" Type="String" />
            <asp:Parameter Name="additional_img_file1" Type="String" />
            <asp:Parameter Name="additional_img_name2" Type="String" />
            <asp:Parameter Name="additional_img_file2" Type="String" />
            <asp:Parameter Name="additional_img_name3" Type="String" />
            <asp:Parameter Name="additional_img_file3" Type="String" />
            <asp:Parameter Name="additional_img_name4" Type="String" />
            <asp:Parameter Name="additional_img_file4" Type="String" />
            <asp:Parameter Name="additional_img_name5" Type="String" />
            <asp:Parameter Name="additional_img_file5" Type="String" />
            <asp:Parameter Name="spec_type1" Type="String" />
            <asp:Parameter Name="spec_name1" Type="String" />
            <asp:Parameter Name="spec_description1" Type="String" />
            <asp:Parameter Name="spec_type2" Type="String" />
            <asp:Parameter Name="spec_name2" Type="String" />
            <asp:Parameter Name="spec_description2" Type="String" />
            <asp:Parameter Name="spec_type3" Type="String" />
            <asp:Parameter Name="spec_name3" Type="String" />
            <asp:Parameter Name="spec_description3" Type="String" />
            <asp:Parameter Name="spec_type4" Type="String" />
            <asp:Parameter Name="spec_name4" Type="String" />
            <asp:Parameter Name="spec_description4" Type="String" />
            <asp:Parameter Name="spec_type5" Type="String" />
            <asp:Parameter Name="spec_name5" Type="String" />
            <asp:Parameter Name="spec_description5" Type="String" />
            <asp:Parameter Name="additional_img_name6" Type="String" />
            <asp:Parameter Name="additional_img_file6" Type="String" />
            <asp:Parameter Name="additional_img_name7" Type="String" />
            <asp:Parameter Name="additional_img_file7" Type="String" />
            <asp:Parameter Name="Original_SKU" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxSkuFilter" DefaultValue="%" Name="sku" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

