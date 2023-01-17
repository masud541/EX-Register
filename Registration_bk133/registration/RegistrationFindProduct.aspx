<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationFindProduct.aspx.cs" Inherits="RegistrationFindProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 85%;
        }
        .style17
        {
            font-size: 11pt;
            text-align: right;
        }
    .SYN_ROW {background:silver;}
	.SYN_TXT {border-left:1px solid;position:relative;left:4.5em;background:white;font-family:monospace;margin-right:4.5em;}
	.HTML_TXT {color:#000000;}
	.HTML_TAG {color:#0000ff;}
	.HTML_ELM {color:#800000;}
	.HTML_ATR {color:#ff0000;}
	.HTML_VAL {color:#0000ff;}
	.CSS_TXT {color:#000000;}
	.SYN_LNB {position:absolute;left:0;}
	.SYN_LNN {padding:0;color:black;border:0;text-align:right;width:3.5em;height:1em;font-family:monospace;background:transparent;cursor:default;font-size:100%;}
	.SYN_BCH {display:none;}
	.CSS_SEL {color:#800000;}
	.CSS_PRO {color:#ff0000;}
	.CSS_VAL {color:#0000ff;}
	    .style445
        {
            width: 287px;
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
        <table class="style1" width="100%">
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                    class="stepHeader" style="font-size: large">
                    JL Audio Registration</td>
                <td style="text-align: right">
                    <img alt="" src="images/Step1.jpg" style="width: 200px; height: 50px" /></td>
            </tr>
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                   colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <table class="style10">
            <tr>
                <td class="style17" colspan="2">
                    <p class="MsoNormal">
                        &nbsp;</p>
                    <p class="MsoNormal">
                        <o:p></o:p>
                    </p>
                    </td>
            </tr>
            <tr>
                <td style="text-align: left" class="style445">
                    <br />
                </td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <table __designer:mapid="af" cellpadding="0" cellspacing="0" width="100%" 
                        border="0">
                        <tr __designer:mapid="b0">
                            <td __designer:mapid="b1" style="text-align: left;" width="300">
                                <asp:DropDownList ID="DropDownListCat2" runat="server" AutoPostBack="True" 
                                    DataSourceID="ObjectDataSource2" DataTextField="TOOLBAR_CATEGORY" 
                                    DataValueField="TOOLBAR_CATEGORY" 
                                    onselectedindexchanged="DropDownListCat2_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    SelectMethod="SelectToolbarCategoryRegistration" 
                                    TypeName="RABusinessObject">
                                </asp:ObjectDataSource>
                            </td>
                            <td __designer:mapid="b1" style="text-align: left;" width="300">
                                <asp:DropDownList ID="DropDownListCat1" runat="server" AutoPostBack="True" 
                                    DataSourceID="ObjectDataSource5" DataTextField="CATEGORY" 
                                    DataValueField="CATEGORY" 
                                    onselectedindexchanged="DropDownListCat1_SelectedIndexChanged" 
                                    ondatabound="DropDownListCat1_DataBound">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" 
                                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectCategoryRegistration" 
                                    TypeName="RABusinessObject">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownListCat2" Name="toolbar_category" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                            <td __designer:mapid="b4" style="text-align: left;" width="300">
                                <asp:DropDownList ID="DropDownListSubCat1" runat="server" AutoPostBack="True" 
                                    DataSourceID="ObjectDataSource3" DataTextField="SUB_CATEGORY1" 
                                    DataValueField="SUB_CATEGORY1" 
                                    onselectedindexchanged="DropDownListSubCat1_SelectedIndexChanged" 
                                    style="height: 22px" ondatabound="DropDownListSubCat1_DataBound">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectSubCategoryRegistration" 
                                    TypeName="RABusinessObject">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownListCat1" Name="category" 
                                            PropertyName="SelectedValue" Type="String" />
                                        <asp:ControlParameter ControlID="DropDownListCat2" Name="toolbar_category" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                            <td __designer:mapid="bb" style="text-align: left;" width="300">
                                <asp:DropDownList ID="DropDownListSku1" runat="server" AutoPostBack="True" 
                                    DataSourceID="ObjectDataSource4" DataTextField="NAME_AND_SKU" 
                                    DataValueField="SKU" 
                                    onselectedindexchanged="DropDownListSku1_SelectedIndexChanged1" 
                                    ondatabound="DropDownListSku1_DataBound">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" 
                                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectSkuBySubCatRegistration" 
                                    TypeName="RABusinessObject">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownListCat1" Name="category" 
                                            PropertyName="SelectedValue" Type="String" />
                                        <asp:ControlParameter ControlID="DropDownListSubCat1" Name="sub_cat" 
                                            PropertyName="SelectedValue" Type="String" />
                                        <asp:ControlParameter ControlID="DropDownListCat2" Name="toolbar_category" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
        <table class="style10">
            <tr>
                <td class="style17">
                    <asp:Label ID="LabelSerialCheckResult" runat="server" CssClass="style17"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" 
                        Text="Continue" Visible="False" />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ObjectDataSource1" style="font-size: 9pt" CellPadding="4">
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
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectMethod="SelectJLWSerial" TypeName="RSBusinessObject">
                        <SelectParameters>
                            <asp:SessionParameter Name="serial" SessionField="CheckedSerial" 
                                Type="String" DefaultValue="0" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style17">
                    <hr />
                    </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label1" runat="server" 
                        Text="Still can’t find your product? Click " Visible="False"></asp:Label>
                    <span style="mso-bidi-font-size:
12.0pt;font-family:Helvetica;mso-bidi-font-family:Helvetica;letter-spacing:
-.2pt;mso-font-kerning:.5pt">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/RegistrationDescribeProduct.aspx" Visible="False">here</asp:LinkButton>
                    .</span></td>
            </tr>
            <tr>
                <td class="style17">
                    <hr />
                    </td>
            </tr>
            <tr>
                <td class="style17">
                    <span style="mso-bidi-font-size:
12.0pt;font-family:Helvetica;mso-bidi-font-family:Helvetica;letter-spacing:
-.2pt;mso-font-kerning:.5pt"><br />
                    <br />
                    </span>
                    </td>
            </tr>
            </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;</center>
</asp:Content>

