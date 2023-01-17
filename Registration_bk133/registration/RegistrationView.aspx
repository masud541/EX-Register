<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationView.aspx.cs" Inherits="RegistrationView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style445
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; font-size: 8pt; font-family: Arial, Helvetica, sans-serif" 
                    Text="Serial"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="REGISTRATION_SEQ" 
        DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical">
        <Columns>
            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
            <asp:BoundField DataField="SERIAL" HeaderText="Serial" 
                SortExpression="SERIAL" />
            <asp:BoundField DataField="REGISTRATION_DATE" HeaderText="Reg Date" 
                SortExpression="REGISTRATION_DATE" />
            <asp:BoundField DataField="PURCHASE_DATE" HeaderText="Purchace Date" 
                SortExpression="PURCHASE_DATE" />
            <asp:BoundField DataField="LAST_NAME" HeaderText="Last Name" 
                SortExpression="LAST_NAME" />
            <asp:BoundField DataField="FIRST_NAME" HeaderText="First Name" 
                SortExpression="FIRST_NAME" />
            <asp:BoundField DataField="PHONE" HeaderText="Phone" SortExpression="PHONE" />
            <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
            <asp:BoundField DataField="CUSTOMER_COUNTRY" HeaderText="Country" 
                SortExpression="CUSTOMER_COUNTRY" />
            <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="Address" 
                SortExpression="CUSTOMER_ADDRESS" />
            <asp:BoundField DataField="CUSTOMER_CITY" HeaderText="City" 
                SortExpression="CUSTOMER_CITY" />
            <asp:BoundField DataField="CUSTOMER_STATE" HeaderText="State" 
                SortExpression="CUSTOMER_STATE" />
            <asp:BoundField DataField="CUSTOMER_ZIP" HeaderText="Zip" 
                SortExpression="CUSTOMER_ZIP" />
            <asp:BoundField DataField="DEALER_NAME" HeaderText="Dealer" 
                SortExpression="DEALER_NAME" />
            <asp:BoundField DataField="DEALER_CITY" HeaderText="Dealer City" 
                SortExpression="DEALER_CITY" />
            <asp:BoundField DataField="DEALER_STATE" HeaderText="Dealer State" 
                SortExpression="DEALER_STATE" />
            <asp:BoundField DataField="PURCHASE_TYPE" HeaderText="Online Purchase" 
                SortExpression="PURCHASE_TYPE" />
            <asp:BoundField DataField="INSTALLATION_TYPE" HeaderText="Installation Type" 
                SortExpression="INSTALLATION_TYPE" />
            <asp:BoundField DataField="SHIRT_SIZE" HeaderText="Size" 
                SortExpression="SHIRT_SIZE" />
            <asp:BoundField DataField="OPT_IN" HeaderText="Opt In" 
                SortExpression="OPT_IN" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="SelectRegistrationBySerial" TypeName="RSBusinessObject">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="serial" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

