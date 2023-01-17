<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RequestRAStart.aspx.cs" Inherits="RequestRAStart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            font-size: xx-small;
            font-weight: bold;
        }
        .style11
        {
            font-size: xx-small;
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
            <span style="font-size: 12pt;"><strong>
            <span style="font-size: 16pt; color: black;">1</span></strong>&nbsp; </span></span>
            <span style="color: rgb(204, 204, 153);"><span style="font-family: Arial;">
            <span style="font-size: 12pt; color: gray;">2&nbsp; 3</span></span></span></span></span></td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="PRODUCT RA REQUEST FORM"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <table class="style1">
                <tr>
                    <td style="text-align: left">
                        <br />
                        The following screens will guide you in the RA request process.<br />
                        <br />
                        Steps:<br />
                        <br />
&nbsp;- Start RA Request<br />
                        <br />
&nbsp;- Enter Items<br />
                        <br />
&nbsp;- Finalize &amp; Submit</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;<br />
&nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;<asp:Button ID="ButtonStart" runat="server" style="font-weight: 700" 
                Text="Start RA Request" onclick="ButtonStart_Click" />
            &nbsp;</td>
    </tr>
</table>
    <br />
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

