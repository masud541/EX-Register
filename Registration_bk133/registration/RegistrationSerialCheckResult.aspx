<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationSerialCheckResult.aspx.cs" Inherits="RegistrationSerialCheckResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 85%;
        }
        .style17
        {
            font-size: 11pt;
            text-align: left;
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
    <center style="font-family: Arial, Helvetica, sans-serif" id="b">
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
                        <span style="mso-bidi-font-size:
12.0pt;font-family:Helvetica;mso-bidi-font-family:Helvetica;letter-spacing:
-.2pt;mso-font-kerning:.5pt">Please enter your
                        product&#39;s serial number</span></p>
                    <p class="MsoNormal">
                        <o:p></o:p>
                    </p>
                    </td>
            </tr>
            <tr>
                <td style="text-align: left" class="style445">
                    <asp:TextBox ID="TextBox1" runat="server" Width="351px"></asp:TextBox>
                    <br />
                </td>
                <td style="text-align: left">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                        style="font-family: Arial, Helvetica, sans-serif; " />
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
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ObjectDataSource1" style="font-size: 9pt" CellPadding="4" 
                        EnableModelValidation="True">
                        <Columns>
                            <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                                SortExpression="SERIAL_NUMBER" />
                            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                            <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                                SortExpression="CATEGORY" />
                            <asp:BoundField DataField="PART_NUMBER" HeaderText="Model" 
                                SortExpression="PART_NUMBER" />
                            <asp:BoundField DataField="PREMIUM" HeaderText="PREMIUM" 
                                SortExpression="PREMIUM" Visible="False" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectMethod="SelectSimilarSerial" TypeName="RSBusinessObject">
                        <SelectParameters>
                            <asp:SessionParameter Name="serial" SessionField="CheckedSerial" 
                                Type="String" DefaultValue="0" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                    <asp:Label ID="LabelPremium" runat="server" style="font-size: 11pt"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="LabelSerialCheckResult" runat="server" style="font-size: 11pt"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" 
                        Text="Continue" Visible="False" />
                    </td>
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
-.2pt;mso-font-kerning:.5pt">If you need assistance locating your product&#39;s serial number, click
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/RegistrationAssistance.aspx">here</asp:LinkButton>
                    .<br />
&nbsp;<br />
&nbsp;</span></td>
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
-.2pt;mso-font-kerning:.5pt">If your product does not have a serial number, click&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        PostBackUrl="~/RegistrationFindProduct.aspx">here</asp:LinkButton>
                    .<br />
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

