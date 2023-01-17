<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationCustomerInfoConfirm.aspx.cs" Inherits="RegistrationCustomerInfoConfirm" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 63%;
        }
        .style26
        {
            font-size: 8pt;
            text-align: left;
        }
        .style20
        {
            font-size: 8pt;
            font-weight: bold;
            text-align: left;
        }
        .style21
        {
            width: 101px;
        }
        .style19
        {
            height: 15px;
            text-align: left;
        }
        .style22
        {
            height: 15px;
            text-align: left;
            width: 101px;
        }
        .style23
        {
            font-size: 8pt;
            text-align: left;
        }
        .style25
        {
    }
        .style27
    {
        font-size: 8pt;
        font-style: italic;
    }
        .style11
        {
            font-size: large;
            font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
    }
        .style445
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
        <table class="style1" width="100%">
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" class="stepHeader">
                    <span style="mso-bidi-font-size:14.0pt;font-family:&quot;Lucida Grande&quot;;
mso-bidi-font-family:&quot;Lucida Grande&quot;">
                        <span 
                            class="style11">JL Audio Warranty Registration</span></span></td>
                <td style="text-align: right">
                    <img alt="" src="images/Step4.jpg" style="width: 200px; height: 50px" /></td>
            </tr>
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                   colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ObjectDataSource2" style="font-size: 9pt" CellPadding="4" 
                        EnableModelValidation="True">
                        <Columns>
                            <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                                SortExpression="SERIAL_NUMBER" />
                            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                            <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                                SortExpression="CATEGORY" />
                            <asp:BoundField DataField="PART_NUMBER" HeaderText="Model" 
                                SortExpression="PART_NUMBER" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectMethod="SelectSimilarSerial" TypeName="RSBusinessObject">
                        <SelectParameters>
                            <asp:SessionParameter Name="serial" SessionField="CheckedSerial" 
                                Type="String" DefaultValue="" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    </td>
            </tr>
        </table>
        <table class="style10">
            <tr>
                <td class="style445">
                    <b>Confirm Your Information: </b>
                    <br /><span class="style26">Review the fields below to continue.</span></td>
            </tr>
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td colspan="5" class="style20">
                                Customer Information</td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="Label3" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Last Name"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="LabelLastName" runat="server" CssClass="style26"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="margin-left: 40px; text-align: left;">
                                <asp:Label ID="Label33" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="First Name"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="LabelFirstName" runat="server" CssClass="style26"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="margin-left: 40px; text-align: left;">
                                <asp:Label ID="Label4" runat="server" style="font-size: 8pt; color: #808080;" 
                                    Text="Phone"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="LabelPhone" runat="server" CssClass="style26"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="margin-left: 40px; text-align: left;">
                                <asp:Label ID="Label6" runat="server" style="font-size: 8pt; color: #808080;" 
                                    Text="Email"></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="LabelEmail" runat="server" CssClass="style26"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5" style="text-align: left">
                    <table class="style1">
                        <tr>
                            <td style="text-align: left">
                                <table class="style1">
                                    <tr>
                                        <td class="style20" colspan="3" style="text-align: left">
                                            Customer Address</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="Label40" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Country"></asp:Label>
                                        </td>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="LabelCountry" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style22">
                                        </td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label41" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Address"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelAddress" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label42" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="City"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelCity" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label45" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="State"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelState" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label43" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Zip"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelZip" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" class="style23">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                    </table>
                                <table class="style1">
                                    <tr>
                                        <td class="style20" colspan="3" style="text-align: left">
                                            Store / Dealer Information</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="Label46" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Purchase Date"></asp:Label>
                                        </td>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="LabelPurchaseDate" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style22">
                                        </td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label47" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Purchase Type"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelPurchaseType" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label48" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Name"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelDealerName" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label49" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Country"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelDealerCountry" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label50" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="City"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelDealerCity" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left">
                                            <asp:Label ID="Label51" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="State/Province"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Label ID="LabelDealerState" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" colspan="3">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                                <table class="style1">
                                    <tr>
                                        <td class="style20" colspan="3" style="text-align: left">
                                            Installation</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="Label52" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="Installed by"></asp:Label>
                                        </td>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="LabelInstallation" runat="server" CssClass="style26"></asp:Label>
                                        </td>
                                        <td class="style22">
                                        </td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" colspan="3">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" style="text-align: left">
                    <table class="style1">
                        <tr>
                            <td style="text-align: left">
                                <table class="style1">
                                    <tr>
                                        <td class="style20" colspan="3" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="Label7" runat="server" style="color: #808080; font-size: 8pt" 
                                    Text="T-Shirt Size" Visible="False"></asp:Label>
                                        </td>
                                        <td class="style19" style="text-align: left">
                                            <asp:Label ID="LabelSize" runat="server" CssClass="style26" Visible="False"></asp:Label>
                                        </td>
                                        <td class="style22">
                                        </td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" class="style23">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" style="text-align: left">
                                <table class="style1">
                                    <tr>
                                        <td class="style25">
                                            <asp:CheckBoxList ID="CheckBoxListOptIn" runat="server" Enabled="False" 
                                                style="font-size: 8pt" Width="451px">
                                                <asp:ListItem Selected="True" Value="Y">Yes, I would like to receive periodic updates on Sales and other JL Audio related news.</asp:ListItem>
                                            </asp:CheckBoxList>
                                            <span class="style27">(Your email address shall not be sold or otherwise transferred to any other 
                                            entity.)<br />
&nbsp;</span></td>
                                    </tr>
                                    <tr>
                                        <td class="style26">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style26">
                                            After&nbsp; reviewing the information above either click CONTINUE or EDIT</td>
                                    </tr>
                                    <tr>
                                        <td class="style25">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left" class="style26" colspan="2">
                                </td>
                            <td>
                                <asp:Button ID="ButtonContinue" runat="server" Text="Continue" 
                        onclick="ButtonContinue_Click" />
                                <asp:Label ID="LabelError" runat="server" 
                                    style="font-size: 8pt; color: #FF0000"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="ButtonContinue0" runat="server" Text="Edit" 
                        onclick="ButtonContinueEdit_Click" />
                            </td>
                            <td class="style26">
                                &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

