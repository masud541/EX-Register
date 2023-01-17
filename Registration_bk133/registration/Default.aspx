<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 80%;
        }
        .style16
    {
        font-size: 10pt;
    }
        .style17
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-style: normal;
            font-weight: 700;
            width: 713px;
        }
        .style445
        {
            height: 20px;
        }
        .style446
        {
            font-size: 12pt;
            text-align: left;
        }
        .style1
        {
            height: 50px;
        }
        .style447
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
        <table class="style1" width="100%">
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" class="style17">
                    JL Audio Registration</td>
                <td style="text-align: right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                   colspan="2" class="style445">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="style10">
            <tr>
                <td style="text-align: center">
                    <div class="style447">
                    <br class="style16" />
                    <br class="style16" />
                    <span class="style446">Register select JL Audio products to receive exclusive product updates and other important product information.</span></div>
                    <p class="MsoNormal" 
                        
                        style="font-family: Arial; font-size: 11pt; text-align: center; height: 29px;">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Begin Registration" />
                        &nbsp;</p>
                    <p class="MsoNormal" 
                        
                        style="font-family: Arial; font-size: 11pt; text-align: center; height: 29px;">
                        <img alt="" src="images/W7_AE_FLT_registration.jpg" />&nbsp;</p>
                    <p class="MsoNormal" 
                        
                        style="font-family: Arial; font-size: 11pt; text-align: center; height: 29px;">
                        &nbsp;</p>
                    <p class="MsoNormal" 
                        
                        style="font-family: Arial; font-size: 11pt; text-align: center; height: 29px;">
                        &nbsp;</p>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        <br />
    </center>
</asp:Content>

