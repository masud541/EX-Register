<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RequestRAH.aspx.cs" Inherits="RequestRAH" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            text-align: center;
            margin-left: 80px;
        }
        .style10
        {
            font-size: xx-small;
            font-weight: bold;
        }
        .style11
        {
            font-size: xx-small;
        }
        .style12
        {
        }
        .style15
        {
        }
        .style16
        {
            text-align: left;
        }
        .style17
        {
            margin-left: 40px;
        }
        .style18
        {
            width: 331px;
        }
        .style19
        {            height: 58px;
        }
        .style20
        {
            width: 38px;
        }
        .style21
        {
        }
        .style22
        {
            width: 151px;
        }
        .style26
        {
            width: 25px;
            text-align: center;
            height: 58px;
        }
        .style27
        {
            width: 100px;
            text-align: center;
            margin-left: 40px;
            height: 58px;
        }
        .style28
        {
            text-align: center;
            margin-left: 80px;
            height: 58px;
        }
        .style29
        {
            width: 151px;
            height: 58px;
        }
        .style30
        {
            width: 331px;
            height: 58px;
        }
        .style32
    {
        font-weight: bold;
        font-size: small;
    }
        .style33
        {
        }
        .style34
        {
            width: 89px;
        }
        .style35
        {
            width: 102px;
        }
        .style36
        {
            width: 42px;
        }
        .style37
        {
            width: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
        <td style="text-align: left">
            &nbsp; <span style="text-decoration: underline;">
            <span style="font-family: Arial; color: black;">Step </span><span>
            <span style="font-family: Arial;"><span style="color: black;">&nbsp;&nbsp; </span>
            <span style="color: rgb(204, 204, 153);">
            <span style="font-size: 12pt; color: gray;">1</span></span><span 
                style="font-size: 12pt;">&nbsp; </span></span>
            <span style="color: rgb(204, 204, 153);"><span style="font-family: Arial;">
            <span style="font-size: 12pt; color: gray;"><span style="font-size: 12pt;">
            <strong><span style="font-size: 16pt; color: black;">2</span></strong></span>&nbsp; 3</span></span></span></span></span></td>
    </tr>
    <tr>
        <td style="text-align: left">
            Review Contact/Billing/Shipping info then Click &quot;<b>Enter Items</b>&quot;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="PRODUCT RA REQUEST FORM"></asp:Label>
        </td>
    </tr>
    </table>
                        &nbsp;<br />
&nbsp;<asp:Label ID="Label62" runat="server" Font-Bold="True" 
                            Text="Dealer And Contact:"></asp:Label>
                        <asp:DropDownList ID="DropDownListDealerAndContact" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" 
                            DataSourceID="ObjectDataSource6" DataTextField="DEALER_AND_CONTACT" 
                            DataValueField="CUSTOMER_ID" 
                            
        onselectedindexchanged="DropDownListDealerAndContact_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectMethod="SelectDealersAndContactNoAccount" 
        TypeName="RABusinessObject">
                        </asp:ObjectDataSource>
            <table class="style1">
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Dealer:"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Contact:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Phone:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Fax:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelDealer" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelContact" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelEmail" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelPhone" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="LabelFax" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
    
    <table class="style1">
        <tr>
            <td class="style15" colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Billing Account:"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" valign="top" colspan="7">
                <asp:DropDownList ID="DropDownListAccountAndAddr" runat="server" 
                    DataSourceID="ObjectDataSource7" DataTextField="NO_AND_ADDR" 
                    DataValueField="ID" Enabled="False">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectParentCustomerByCUSTID" TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListDealerAndContact" Name="custid" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="style18" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" valign="top" colspan="7">
                <asp:Label ID="Label20" runat="server" Text="Ship To Location:"></asp:Label>
            </td>
            <td class="style18" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" valign="top" colspan="7">
                <asp:DropDownList ID="DropDownListAccountShip" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="NO_AND_ADDR" 
                    DataValueField="ID" 
                    onselectedindexchanged="DropDownListAccountShip_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectCustomersByCUSTID" TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListDealerAndContact" Name="custid" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </td>
            <td class="style18" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" colspan="8">
            <table class="style1">
                <tr>
                    <td class="style33" colspan="5">
                        <span lang="en-US"><font face="Times New Roman,serif" size="3">
                        <span style="font-size: 12pt;"><font face="Calibri,sans-serif" size="2">
                        <span class="style6" style="font-size: 11pt;">If your Ship-To address is 
                        different than the one above please alter the address you would like the item(s) 
                        delivered to below.</span></font></span></font></span></td>
                </tr>
                <tr>
                    <td class="style37">
                        <asp:Label ID="Label63" runat="server" Font-Bold="True" 
                            Text="Ship To Address Line 1:"></asp:Label>
                    </td>
                    <td style="margin-left: 40px" class="style34">
                        <asp:Label ID="Label64" runat="server" Font-Bold="True" Text="Line 2:"></asp:Label>
                    </td>
                    <td class="style35">
                        <asp:Label ID="Label65" runat="server" Font-Bold="True" Text="City:"></asp:Label>
                    </td>
                    <td class="style36">
                        <asp:Label ID="Label66" runat="server" Font-Bold="True" Text="State:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label67" runat="server" Font-Bold="True" Text="Zip:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style37">
                        <asp:TextBox ID="TextBoxShipAddress1" runat="server" Width="147px"></asp:TextBox>
                    </td>
                    <td class="style34">
                        <asp:TextBox ID="TextBoxShipAddress2" runat="server"></asp:TextBox>
                    </td>
                    <td class="style35">
                        <asp:TextBox ID="TextBoxShipCity" runat="server"></asp:TextBox>
                    </td>
                    <td class="style36">
                        <asp:TextBox ID="TextBoxShipState" runat="server" Width="49px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxShipZipCode" runat="server" Width="67px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style37">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBoxShipAddress1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style35">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBoxShipCity" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style36">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBoxShipState" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBoxShipZipCode" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
    
            </td>
                &nbsp;</td>
        </tr>
        <tr valign="top">
            <td class="style26">
                </td>
            <td class="style27">
                </td>
            <td align="right" class="style28" colspan="2">
                <asp:Label ID="LabelErrorMessage" runat="server" ForeColor="Red" 
                    CssClass="style32"></asp:Label>
                <br />
            </td>
            <td class="style19" colspan="2">
                <asp:Button ID="ButtonEnterItems" runat="server" Text="Enter Items" 
                    onclick="ButtonEnterItems_Click" />
                <br />
                <br />
                <br />
                </td>
            <td class="style29">
                </td>
            <td class="style30">
                </td>
        </tr>
    </table>
<br />
    <br />
 
    <br />
    <table class="style1">
        <tr>
            <td align="center" class="style11">
                WARRANTY CLAIMS ARE SUBJECT TO EVALUATION PER JL AUDIO&#39;S CURRENT WARRANTY 
                POLICY.</td>
            <td align="center" class="style10">
                EACH INDIVIDUAL PRODUCT MUST BE ENTERED INDEPENDENTLY</td>
        </tr>
    </table>
    <table class="style1" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" class="style11" 
                style="border-style: solid; border-width: 1px" width="50%">
                <b>AMPLIFIERS MUST BE SENT TO:</b><br />
                JL Audio, Inc.<br />
                3343 East Wier Avenue<br />
                Phoenix, AZ 85049</td>
            <td align="center" class="style11" 
                style="border-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid;" 
                width="50%">
                <b>PRODUCTS OTHER THAN AMPLIFIERS MUST BE SENT TO:</b><br />
                JL Audio, Inc<br />
                10369 North Commerce Pkwy.<br />
                Miramar, FL 33025<br />
                Phone: 954-443-1100 Fax: 954-443-1111</td>
        </tr>
    </table>
</asp:Content>




