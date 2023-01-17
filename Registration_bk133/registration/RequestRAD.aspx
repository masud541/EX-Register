<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestRAD.aspx.cs" Inherits="RequestRAD" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
        }
        .style11
        {
            font-size: xx-small;
        }
        .style14
        {            margin-left: 40px;
        height: 5px;
    }
        .style18
        {
            width: 331px;
        }
        .style19
        {            height: 17px;
        text-align: left;
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
            width: 102px;
            text-align: center;
            height: 17px;
        }
        .style27
        {
            text-align: center;
            margin-left: 40px;
            height: 17px;
        }
        .style28
        {
            text-align: center;
            margin-left: 80px;
            height: 17px;
        }
        .style29
        {
            width: 151px;
            height: 17px;
        text-align: center;
    }
        .style30
        {
            width: 331px;
            height: 17px;
        text-align: center;
    }
        .style32
    {
        font-weight: bold;
        font-size: small;
    }
        .style33
        {
            text-align: left;
            margin-left: 80px;
            height: 5px;
        }
        .style35
        {
            text-align: left;
            height: 5px;
        }
        .style36
        {
            height: 5px;
        }
        .style37
        {
            width: 151px;
            height: 5px;
        }
        .style38
        {
            width: 331px;
            height: 5px;
        }
        .style13
        {
            width: 41px;
        }
        .style16
        {
            text-align: left;
        }
        .style39
        {
            text-align: left;
            width: 102px;
            height: 10px;
        }
        .style40
        {
            text-align: center;
            margin-left: 40px;
            height: 10px;
        }
        .style41
        {
            text-align: center;
            margin-left: 80px;
            height: 10px;
        }
        .style42
        {
            margin-left: 40px;
            height: 10px;
        }
        .style43
        {
            width: 152px;
            height: 10px;
        }
        .style44
        {
            height: 10px;
        }
        .style45
        {
            width: 151px;
            height: 10px;
        }
        .style46
        {
            width: 331px;
            height: 10px;
        }
    .style47
    {
        text-align: left;
        width: 102px;
        height: 2px;
    }
    .style48
    {
        text-align: center;
        margin-left: 40px;
        height: 2px;
    }
    .style49
    {
        text-align: center;
        margin-left: 80px;
        height: 2px;
    }
    .style50
    {
        margin-left: 40px;
        height: 2px;
    }
    .style51
    {
        width: 152px;
        height: 2px;
    }
    .style52
    {
        height: 2px;
    }
    .style53
    {
        width: 151px;
        height: 2px;
    }
    .style54
    {
        width: 331px;
        height: 2px;
    }
    .style55
    {
        color: #666666;
        font-size: xx-small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
    <tr>
        <td style="text-align: left" colspan="2">
            &nbsp; <span style="text-decoration: underline;">
            <span style="font-family: Arial; color: black;">Step </span><span>
            <span style="font-family: Arial;"><span style="color: black;">&nbsp;&nbsp; </span>
            <span style="color: rgb(204, 204, 153);">
            <span style="font-size: 12pt; color: gray;">1</span></span><span 
                style="font-size: 12pt;">&nbsp; </span></span>
            <span style="color: rgb(204, 204, 153);"><span style="font-family: Arial;">
            <span style="font-size: 12pt; color: gray;">2&nbsp; <span style="font-size: 12pt;">
            <strong><span style="font-size: 16pt; color: black;">3</span></strong></span></span></span></span></span></span></td>
    </tr>
    <tr>
        <td style="text-align: left">
            Enter item details for first item then Click &quot;<b>Add Item</b>&quot;.</td>
        <td style="text-align: left">
                        <asp:Label ID="Label63" runat="server" Font-Bold="True" 
                            Text="Request Timestamp:"></asp:Label>
                        &nbsp;<asp:Label ID="LabelDateTimeStamp" runat="server" 
                            style="color: #009933; font-size: medium"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" colspan="2">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="PRODUCT RA REQUEST FORM"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" colspan="2">
            <table class="style1">
                <tr>
                    <td colspan="5" style="text-align: left">
                        <asp:Label ID="Label62" runat="server" Font-Bold="True" 
                            Text="Dealer And Contact:"></asp:Label>
                        <asp:DropDownList ID="DropDownListDealerAndContact" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" 
                            DataSourceID="ObjectDataSource6" DataTextField="DEALER_AND_CONTACT" 
                            DataValueField="USERID" 
                            onselectedindexchanged="DropDownListDealerAndContact_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectMethod="SelectDealersAndContact" TypeName="RABusinessObject">
                        </asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Dealer:"></asp:Label>
                        <asp:Label ID="LabelDealer" runat="server"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Contact:"></asp:Label>
                        <asp:Label ID="LabelContact" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
                        <asp:Label ID="LabelEmail" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Phone:"></asp:Label>
                        <asp:Label ID="LabelPhone" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Fax:"></asp:Label>
                        <asp:Label ID="LabelFax" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
        </td>
    </tr>
</table>
    <table class="style1" style="height: 120px">
        <tr>
            <td align="right" class="style33" colspan="4">
                        <table class="style1" style="width: 100%">
                            <tr>
                                <td class="style12">
                                    <asp:Label ID="Label64" runat="server" Font-Bold="True" 
                            Text="Item Details:"></asp:Label>
                &nbsp;<asp:Label ID="Label59" runat="server" Text="Category"></asp:Label>
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
                                            <asp:ControlParameter ControlID="DropDownListCat" DefaultValue="Amplifiers" 
                                                Name="category" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropDownListSubCat" DefaultValue="A Series" 
                                                Name="sub_cat" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </td>
                            </tr>
                        </table>
            </td>
            <td class="style35" colspan="2">
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
            <td class="style36">
                </td>
            <td class="style37">
                </td>
            <td class="style38">
                </td>
        </tr>
        <tr>
            <td class="style39">
                <asp:Label ID="Label15" runat="server" Text="Serial #"></asp:Label>
                <span class="style11">
                <br />
                                (Required for Subs and Amps)<br />
                </span><asp:TextBox ID="TextBoxSerial" runat="server" Width="124px"></asp:TextBox>
            </td>
            <td class="style40">
                <asp:Label ID="Label16" runat="server" Text="Consumer Purchase Date"></asp:Label>
                <br />
                <span class="style11">(mm/dd/yyyy)<br />
                </span><asp:TextBox ID="TextBoxPurchaseDate" runat="server" Width="124px"></asp:TextBox>
            </td>
            <td align="right" class="style41" colspan="2">
                <asp:Label ID="Label17" runat="server" Text="Warranty"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Expected*"></asp:Label>
                <br />
                
                <asp:DropDownList ID="DropDownListWarrantyExpected" runat="server">
                    <asp:ListItem Value="N">No</asp:ListItem>
                    <asp:ListItem Value="Y" Selected="True">Yes</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style42">
                <asp:Label ID="Label18" runat="server" ForeColor="Black" 
                    Text="Consumer's First Name "></asp:Label>
                <br />
                <span class="style11">(if applicable)<br />
                </span><asp:TextBox ID="TextBoxConsumerFirstName" runat="server" Width="140px"></asp:TextBox>
            </td>
            <td class="style43">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" 
                    Text="Consumer's Last Name "></asp:Label>
                <span class="style11">
                <br />
                (if applicable)<br />
                </span><asp:TextBox ID="TextBoxConsumerLastName" runat="server" Width="124px"></asp:TextBox>
            </td>
            <td class="style44">
                </td>
            <td class="style45">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="style47">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerial" runat="server" 
                    ControlToValidate="TextBoxSerial" ErrorMessage="Serial Required" 
                    CssClass="style32"></asp:RequiredFieldValidator>
            </td>
            <td class="style48">
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="TextBoxPurchaseDate" ErrorMessage="Invalid Purchase Date" 
                    Operator="LessThan" Type="Date" ControlToCompare="TextBoxHiddenDate" style="font-weight: 700; font-size: xx-small" 
                    ></asp:CompareValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBoxPurchaseDate" ErrorMessage="Invalid Format" 
                    Operator="DataTypeCheck" Type="Date" 
                    style="font-weight: 700; font-size: xx-small" ></asp:CompareValidator>
            </td>
            <td align="right" class="style49" colspan="2">
                </td>
            <td class="style50">
                </td>
            <td class="style51">
                </td>
            <td class="style52">
                </td>
            <td class="style53">
                </td>
            <td class="style54">
                </td>
        </tr>
        <tr>
            <td colspan="3" class="style36">
                <asp:Label ID="Label6" runat="server" Text="Detailed Description of Problem"></asp:Label>
            </td>
            <td class="style14" colspan="3">
                <br />
            </td>
            <td class="style36">
                </td>
            <td class="style37">
                </td>
            <td class="style38">
                </td>
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
        <tr valign="top">
            <td class="style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxProblem" ErrorMessage="Desc. Required" 
                    CssClass="style32"></asp:RequiredFieldValidator>
                </td>
            <td class="style27">
                <asp:Label ID="LabelErrorMessage" runat="server" ForeColor="Red" 
                    CssClass="style32"></asp:Label>
                </td>
            <td align="right" class="style28" colspan="3">
            </td>
            <td class="style19" colspan="2" valign="middle">
                <asp:Button ID="Button1" runat="server" Text="Add Item" 
                    onclick="Button1_Click" />
                </td>
            <td class="style29" valign="middle">
                <span class="style55">&nbsp;<asp:Label ID="LabelFinalized" runat="server" 
                    Text="Done Adding Items?" Visible="False"></asp:Label>
                </span>
                <br />
                <asp:Button ID="ButtonFinalize" runat="server" Height="18px" 
                    onclick=
                    "ButtonFinalize_Click" style="font-size: xx-small; text-align: left" 
                    Text="Finalize Request" ValidationGroup="finalize" Visible="False" />
                </td>
            <td class="style30">
                &nbsp;</td>
        </tr>
    </table>
 
&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Item Details"></asp:Label>
    <table class="style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_ITEM_SEQ" 
                ForeColor="#333333" GridLines="None" 
                onrowdatabound="GridView1_RowDataBound" DataSourceID="ObjectDataSource7">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="RA_DATE" DataFormatString="{0:g}" 
                        HeaderText="Request Timestamp" HtmlEncode="False" 
                        SortExpression="RA_DATE" >
                    <HeaderStyle Wrap="False" />
                    <ItemStyle ForeColor="#009933" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="APPROVED" HeaderText="Status" 
                        SortExpression="APPROVED" />
                    <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                        SortExpression="CATEGORY" />
                    <asp:BoundField DataField="SUBCAT" HeaderText="Subcategory" 
                        SortExpression="SUBCAT" />
                    <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial Number" 
                        SortExpression="SERIAL_NUMBER" />
                    <asp:BoundField DataField="CONSUMER_PURCHASE_DATE" 
                        HeaderText="Consumer Purchase Date" SortExpression="CONSUMER_PURCHASE_DATE" 
                        DataFormatString="{0:d}" HtmlEncode="False" />
                    <asp:BoundField DataField="WARRANTY_EXPECTED" HeaderText="Warranty Expected" 
                        SortExpression="WARRANTY_EXPECTED" />
                    <asp:BoundField DataField="PROBLEM_DESCRIPTION" HeaderText="Problem Description" 
                        SortExpression="PROBLEM_DESCRIPTION" />
                    <asp:BoundField DataField="CONSUMER_FULL_NAME" HeaderText="Consumer's Name" 
                        SortExpression="CONSUMER_FULL_NAME">
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="SelectLineItemsByRaSeq" TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ra_seq" QueryStringField="rs" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                OldValuesParameterFormatString="original_{0}" 
                SelectMethod="SelectLineItemsByRaSeq" TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ra_seq" QueryStringField="rs" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRARequestByUser" 
                TypeName="RABusinessObject">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownListDealerAndContact" 
                        Name="dp_user_id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:TextBox ID="TextBoxHiddenDate" runat="server" BackColor="White" 
                BorderColor="White" BorderWidth="0px" Enabled="False" Font-Italic="True" 
                ReadOnly="True" Width="1px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
    <asp:Label ID="Label9" runat="server" 
        
                    Text="*WARRANTY ITEMS NOT ACCOMPANIED BY A RECEIPT AND NON-WARRANTY ITEMS WILL BE REPAIRED AT A CHARGE. REPAIR CHARGES CAN BE FOUND IN YOUR CURRENT JL AUDIO PRICE LIST." 
                    style="font-size: xx-small"></asp:Label>
        </td>
    </tr>
    </table>
    <br />
<table class="style1">
        <tr>
            <td align="center" class="style11">
                WARRANTY CLAIMS ARE SUBJECT TO EVALUATION PER JL AUDIO&#39;S CURRENT WARRANTY 
                POLICY.</td>
            <td align="center" class="style11">
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




