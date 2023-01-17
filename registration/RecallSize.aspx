<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecallSize.aspx.cs" Inherits="RecallSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            color: gray;
            font-weight: bold;
        }
        .style13
        {
            color: gray;
        }
        .style11
        {
            font-size: 12pt;
            color: #808080;
            font-weight: bold;
        }
        .style19
        {
            font-size: 12pt;
            color: gray;
        }
        .style16
        {
            color: #333333;
            font-size: x-small;
        }
        .style10
        {
            width: 63%;
        }
        .style17
        {
            font-size: 11pt;
            text-align: left;
        }
        .style18
        {
            font-size: 9pt;
            font-weight: bold;
        }
        .style20
        {
            font-size: 9pt;
        }
        .style21
        {
            color: #000000;
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table class="style1">
            <tr>
                <td style="text-align: left">
            &nbsp; <span style="text-decoration: underline;">
                    <span style="font-family: Arial; " 
                        class="style12">STEP</span><span style="font-family: Arial; " 
                        class="style13"> </span><span><span style="font-family: Arial;">
                    <span class="style13">&nbsp;&nbsp; </span>
                    <span style="color: rgb(204, 204, 153);"><span class="style11">1</span></span><span 
                style="font-size: 12pt;" class="style13">&nbsp; </span>
                    <span style="font-size: 12pt; "><span class="style12">2</span></span><b><span style="color: rgb(204, 204, 153);"><span style="font-size: 12pt; color: gray;">&nbsp; 3&nbsp;
                    </span><span class="style19">4</span><span style="font-size: 12pt; color: gray;">&nbsp;
                    </span></span><span class="style21">5</span></b></span></span></span><span><span style="font-family: Arial;"><span style="color: rgb(204, 204, 153);"><span style="font-size: 12pt; color: gray;">
                    </span></span><span class="style16">( Gift )</span></span></span></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="style10">
            <tr>
                <td style="text-align: left">
                    <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                        &nbsp;</p>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <span class="style18">Gift<br />
                    <br /></span><span class="style20">As a gift JL Audio will be providing you with 
                    a T-Shirt and a 10 % Shopatron Discount Code.<br />
                    <br />
                    Your discount code is:<br />
                    <br />
                    </span>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <span class="style20">Please enter a T-Shirt size and click FINALIZE.<br />
                    <br />
                    </span>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButtonContinue" runat="server" 
                        Text="Finalize" onclick="ButtonContinue_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </center>
</asp:Content>

