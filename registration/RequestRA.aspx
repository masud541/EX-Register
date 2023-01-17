<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestRA.aspx.cs" Inherits="RequestRA" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
        }
        .style8
        {
            width: 100px;
            text-align: center;
            margin-left: 40px;
        }
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
        .style14
        {            margin-left: 40px;
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
        .style31
        {
            width: 211px;
        }
        .style13
        {
            width: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="PRODUCT RA REQUEST FORM"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
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
        </td>
    </tr>
</table>
<br />
    <asp:Label ID="Label3" runat="server" style="font-weight: 700" 
        Text="Enter RA Request"></asp:Label>
    <br />
    <table class="style1">
        <tr>
            <td class="style15" colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Billing Account:"></asp:Label>
            </td>
            <td class="style9" colspan="2">
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
            <td class="style12" valign="top" colspan="8">
                <asp:DropDownList ID="DropDownListAccountAndAddr" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="NO_AND_ADDR" 
                    DataValueField="ID" 
                    onselectedindexchanged="DropDownListAccountAndAddr_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectCustomersByUserID" TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="USER" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td class="style18" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" valign="top" colspan="8">
                <asp:Label ID="Label20" runat="server" Text="Ship To Location:"></asp:Label>
            </td>
            <td class="style18" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" valign="top" colspan="8">
                <asp:DropDownList ID="DropDownListAccountShip" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="NO_AND_ADDR" 
                    DataValueField="ID">
                </asp:DropDownList>
                </td>
            <td class="style18" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                <br />
                </td>
            <td class="style17" colspan="2">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style9" colspan="4">
                <br />
                        <table class="style1" style="width: 100%">
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="Label59" runat="server" Text="Category"></asp:Label>
                                </td>
                                <td class="style13">
                                    <asp:Label ID="Label60" runat="server" Text="Subcategory"></asp:Label>
                                </td>
                                <td class="style16">
                                    <asp:Label ID="Label61" runat="server" Text="Sku"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <asp:DropDownList ID="DropDownListCat" runat="server" AutoPostBack="True" 
                                        DataSourceID="ObjectDataSource5" DataTextField="CATEGORY" 
                                        DataValueField="CATEGORY" 
                                        onselectedindexchanged="DropDownListCat_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectCategory" 
                                        TypeName="RABusinessObject"></asp:ObjectDataSource>
                                </td>
                                <td class="style13">
                                    <asp:DropDownList ID="DropDownListSubCat" runat="server" AutoPostBack="True" 
                                        DataSourceID="ObjectDataSource3" DataTextField="SUB_CATEGORY1" 
                                        DataValueField="SUB_CATEGORY1" 
                                        onselectedindexchanged="DropDownListSubCat_SelectedIndexChanged" 
                                        style="height: 22px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectSubCategory" 
                                        TypeName="RABusinessObject">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownListCat" Name="category" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </td>
                                <td class="style16">
                                    <asp:DropDownList ID="DropDownListSku" runat="server" 
                                        DataSourceID="ObjectDataSource4" DataTextField="NAME_AND_SKU" 
                                        DataValueField="category_master_seq">
                                    </asp:DropDownList>
                                    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                                        OldValuesParameterFormatString="original_{0}" SelectMethod="SelectSkuBySubCat" 
                                        TypeName="RABusinessObject">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownListCat" Name="category" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownListSubCat" Name="sub_cat" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </td>
                            </tr>
                        </table>
            </td>
            <td class="style16" colspan="2">
                <asp:Label ID="LabelShipMessage1" runat="server" 
                    Width="214px" style="font-weight: 700"></asp:Label>
                <br />
                <asp:Label ID="LabelShipMessage2" runat="server" 
                    Width="214px"></asp:Label>
                <br />
                <asp:Label ID="LabelShipMessage3" runat="server" 
                    Width="214px"></asp:Label>
                <br />
                <asp:Label ID="LabelShipMessage4" runat="server" 
                    Width="214px"></asp:Label>
            </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label15" runat="server" Text="Serial #"></asp:Label>
                <span class="style11">(Required for Subs and Amps)</span></td>
            <td class="style8">
                <asp:Label ID="Label16" runat="server" Text="Consumer Purchase Date"></asp:Label>
                (mm/dd/yyyy)</td>
            <td align="right" class="style9" colspan="2">
                <asp:Label ID="Label17" runat="server" Text="Warranty Expected*"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label18" runat="server" ForeColor="Black" 
                    Text="Consumer's First Name "></asp:Label>
                <br />
                <span class="style11">(if applicable)</span></td>
            <td class="style20">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                    Text="Consumer's Last Name "></asp:Label>
                <br />
                <span class="style11">(if applicable)</span></td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:TextBox ID="TextBoxSerial" runat="server" Width="124px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBoxPurchaseDate" runat="server" Width="124px"></asp:TextBox>
            </td>
            <td align="right" class="style9" colspan="2">
                <asp:DropDownList ID="DropDownListWarrantyExpected" runat="server">
                    <asp:ListItem Value="N">No</asp:ListItem>
                    <asp:ListItem Value="Y" Selected="True">Yes</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBoxConsumerFirstName" runat="server" Width="140px"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBoxConsumerLastName" runat="server" Width="124px"></asp:TextBox>
            </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerial" runat="server" 
                    ControlToValidate="TextBoxSerial" ErrorMessage="Serial Required"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="TextBoxPurchaseDate" ErrorMessage="Invalid Purchase Date" 
                    Operator="LessThan" Type="Date" ControlToCompare="TextBoxHiddenDate"></asp:CompareValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBoxPurchaseDate" ErrorMessage="Invalid Format" 
                    Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
            <td align="right" class="style9" colspan="2">
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
            <td class="style31" colspan="3">
                <asp:Label ID="Label6" runat="server" Text="Detailed Description of Problem"></asp:Label>
            </td>
            <td class="style14" colspan="3">
                <br />
                <br />
                <br />
            </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="6">
                <asp:TextBox ID="TextBoxProblem" runat="server" Height="65px" TextMode="MultiLine" 
                    Width="647px"></asp:TextBox>
                <br />
                </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxProblem" ErrorMessage="Desc. Required"></asp:RequiredFieldValidator>
                </td>
            <td class="style8">
                &nbsp;</td>
            <td align="right" class="style9" colspan="2">
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
        <tr valign="top">
            <td class="style26">
                </td>
            <td class="style27">
                </td>
            <td align="right" class="style28" colspan="3">
                <asp:Label ID="LabelErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style19" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Enter RA" 
                    onclick="Button1_Click" />
                <br />
                <br />
                Click on View Status or check your email for RA# and updates.<br />
                </td>
            <td class="style29">
                </td>
            <td class="style30">
                </td>
        </tr>
    </table>
<br />
    <table class="style1">
        <tr>
            <td style="text-align: center">
    <asp:Label ID="Label9" runat="server" 
        
                    Text="*WARRANTY ITEMS NOT ACCOMPANIED BY A RECEIPT AND NON-WARRANTY ITEMS WILL BE REPAIRED AT A CHARGE. REPAIR CHARGES CAN BE FOUND IN YOUR CURRENT JL AUDIO PRICE LIST " 
                    style="font-size: xx-small"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
 
<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="RA Requests"></asp:Label>
    <table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_SEQ" DataSourceID="ObjectDataSource1" 
                ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                PageSize="30" onrowdatabound="GridView1_RowDataBound">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField SelectText="View Status" ShowSelectButton="True" />
                    <asp:BoundField DataField="RA_DATE" DataFormatString="{0:g}" 
                        HeaderText="Request Date" HtmlEncode="False" SortExpression="RA_DATE" />
                    <asp:BoundField DataField="APPROVED" HeaderText="Status" 
                        SortExpression="APPROVED" />
                    <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                        SortExpression="CATEGORY" />
                    <asp:BoundField DataField="MODEL_NUMBER" 
                        HeaderText="Model Number" SortExpression="MODEL_NUMBER">
                    </asp:BoundField>
                    <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial Number" 
                        SortExpression="SERIAL_NUMBER" />
                    <asp:BoundField DataField="LONG_DESC" HeaderText="Description" 
                        SortExpression="LONG_DESC" />
                    <asp:BoundField DataField="CONSUMER_PURCHASE_DATE" 
                        HeaderText="Consumer Purchase Date" SortExpression="CONSUMER_PURCHASE_DATE" 
                        DataFormatString="{0:d}" HtmlEncode="False" />
                    <asp:BoundField DataField="WARRANTY_EXPECTED" HeaderText="Warranty Expected" 
                        SortExpression="WARRANTY_EXPECTED" />
                    <asp:BoundField DataField="PROBLEM_DESCRIPTION" HeaderText="Problem Description" 
                        SortExpression="PROBLEM_DESCRIPTION">
                    </asp:BoundField>
                    <asp:BoundField DataField="CONSUMER_FULL_NAME" HeaderText="Consumer's Name" 
                        SortExpression="CONSUMER_FULL_NAME" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRARequestByUser" 
                TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:SessionParameter Name="dp_user_id" SessionField="USER" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:TextBox ID="TextBoxHiddenDate" runat="server" BackColor="White" 
                BorderColor="White" BorderWidth="0px" Enabled="False" Font-Italic="True" 
                ReadOnly="True" Width="1px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
    <br />
    <table class="style1">
        <tr>
            <td align="center" class="style11">
                *WARRANTY CLAIMS ARE SUBJECT TO EVALUATION PER JL AUDIO&#39;S CURRENT WARRANTY 
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

