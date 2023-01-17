<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="Appeal.aspx.cs" Inherits="Appeal" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            text-align: center;
        }
        .style8
        {
            width: 800px;
        }
        .style9
        {
            text-align: center;
            width: 4px;
        }
        .style10
        {
            width: 4px;
        }
        .style11
        {
            width: 450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                    Text="RA REQUEST REJECTION APPEAL"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <br />
                If an RA Request for an item has been REJECTED you may appeal the decision by entering the 
                reason below.<br />
                <br />
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                    Text="RA Requests (#/Date/Model/Serial)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="ObjectDataSource2" DataTextField="DATE_MODEL_SERIAL" 
                    DataValueField="RA_ITEM_SEQ" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectRAItemssForAppeal" TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="dp_user_id" SessionField="USER" 
                            Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td class="style7" style="text-align: center" colspan="6">
                            <table align="left" class="style8">
                                <tr>
                                    <td class="style7" style="text-align: center">
                                        <asp:Label ID="Label29" runat="server" style="font-weight: 700" 
                            Text="Request Date"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label30" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Status"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label31" runat="server" style="font-weight: 700" Text="RA#"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label32" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Category"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label33" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Model Number" Visible="False"></asp:Label>
                                        <asp:Label ID="Label44" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Sku"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label34" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Serial Number"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="LabelRequestDate" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelApproved" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelRANum" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelCategory" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelModel" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="LabelSku" runat="server"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelSerial" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="Label35" runat="server" 
                            style="font-weight: 700; text-align: center" Text="Purchase Date"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label36" runat="server" style="font-weight: 700" 
                            Text="Wrnt Expected"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label37" runat="server" style="font-weight: 700" 
                            Text="Consumer Name"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label38" runat="server" style="font-weight: 700" 
                            Text="Dealer Contact"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label39" runat="server" style="font-weight: 700" 
                            Text="Dealer Phone"></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label40" runat="server" style="font-weight: 700" 
                            Text="Dealer Email"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="LabelPurchaseDate" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelWarrantyExpected" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center; margin-left: 40px">
                                        <asp:Label ID="LabelConsumerName" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelDealerContact" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelDealerPhone" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:Label ID="LabelDealerEmail" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label41" runat="server" style="font-weight: 700" Text="Problem"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            <asp:Label ID="LabelProblem" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            <asp:Label ID="Label43" runat="server" style="font-weight: 700" 
                                Text="Existing Appeal Message(s)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            <asp:Label ID="LabelAppeal" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            <asp:Label ID="Label42" runat="server" style="font-weight: 700" 
                            Text="Message to Customer Service"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: left">
                            <asp:TextBox ID="TextBoxMessage" runat="server" Enabled="False" 
                            TextMode="MultiLine" Width="501px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style11">
                    <tr>
                        <td style="text-align: center">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBoxMessage" ErrorMessage="Message Required"></asp:RequiredFieldValidator>
                        </td>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Enabled="False" onclick="Button1_Click" 
                            style="font-weight: 700; background-color: #FF9933" 
                                Text="Send Appeal Message" />
                            <br />
                            <br />
                            <asp:Label ID="LabelAppealEntered" runat="server" style="color: #009933"></asp:Label>
                        </td>
                        <td style="text-align: center">
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
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
            &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>

