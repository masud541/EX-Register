<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestRAFinalized.aspx.cs" Inherits="RequestRAFinalized" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            width: 100%;
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
                    <td colspan="4" style="text-align: center" width="100%">
                        <br />
                        <br />
                        <asp:Label ID="LabelSumittedMessage" runat="server"></asp:Label>
                        <br />
                        <table class="style8" width="100%">
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LabelHeading1" runat="server" 
                                        Text="Until an RA number is assigned please refer to the Request by the Timestamp below:"
                                        Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                        <asp:Label ID="LabelRT1" runat="server" Font-Bold="True" 
                            Text="Request Timestamp:" Visible="False"></asp:Label>
                        &nbsp;<asp:Label ID="LabelDateTimeStamp1" runat="server" 
                            style="color: #009933; font-size: medium" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="LabelHeading2" runat="server" 
                                        
                                        Text="Since the Request contained Amplifiers, the request was split into two requests. The Timestamp for the second Request is below:" 
                                        Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                        <asp:Label ID="LabelRT2" runat="server" Font-Bold="True" 
                            Text="Request Timestamp:" Visible="False"></asp:Label>
                        &nbsp;<asp:Label ID="LabelDateTimeStamp2" runat="server" 
                            style="color: #009933; font-size: medium" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                        You may click on
                            <asp:HyperLink ID="HyperLinkStatus" runat="server" CssClass="style6" 
                                ForeColor="Black" NavigateUrl="~/RAStatusCS.aspx" Font-Underline="True">RA Status</asp:HyperLink>
                        &nbsp;to view the staus of all Requests.</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                            &nbsp;</td>
                    <td style="margin-left: 40px; text-align: right;">
                            &nbsp;</td>
                    <td style="text-align: left">
                            &nbsp;</td>
                    <td>
                            &nbsp;</td>
                </tr>
                <tr>
                    <td>
                            &nbsp;</td>
                    <td>
                            &nbsp;</td>
                    <td>
                            &nbsp;</td>
                    <td>
                            &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

