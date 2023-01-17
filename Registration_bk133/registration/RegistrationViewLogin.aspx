<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationViewLogin.aspx.cs" Inherits="RecallUpdateLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-style: normal;
            font-weight: 700;
            width: 713px;
        }
    
        .style10
        {
            width: 65%;
        }
        .style13
        {
            font-size: 11pt;
            font-weight: bold;
        }
        .style445
        {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
        <table class="style1" width="100%">
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" class="style17">
                    Registration Sign In<br style="font-size: large" />
                </td>
                <td style="text-align: right">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                   colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="style10">
            <tr>
                <td style="text-align: left" class="style445">
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style445" style="text-align: left">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                        TextMode="Password" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Sign in" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left" class="style13" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </center>
</asp:Content>

