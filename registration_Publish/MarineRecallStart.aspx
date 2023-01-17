<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="MarineRecallStart.aspx.cs" Inherits="MarineRecallStart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 43%;
        }
    .style12
    {
        font-weight: bold;
    }
    .style11
    {
        font-weight: normal;
    }
    .style13
    {
        font-size: 11pt;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
    <br />
    <table class="style10">
        <tr>
            <td style="text-align: left">
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                    <span class="style12">Marine Recall Advisory:</span><span class="style11"> On November 1, 2010 JL Audio issued a recall for:</p>
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                    &nbsp;</p>
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                    <b>MHD750</b> amplifiers.</p>
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                    &nbsp;</p>
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                        We are committed to correcting the situation at no cost
                        <span style="mso-spacerun:yes">&nbsp;</span>to you. If you purchased an . .<span 
                            style="mso-spacerun:yes">&nbsp; </span>. 2009 or are not sure please use 
                        this site to find out if the 
                    <o:p>
                    </o:p>
                </p>
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                        item you purchased is in recall.</span></p>
                <p class="MsoNormal" style="font-family: Arial; font-size: 11pt">
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Continue" />
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
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left" class="style13">
                Existing Requests:</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/RecallStatusCheck.aspx" Font-Underline="True" 
                        ForeColor="Blue" style="font-size: 8pt">Check Status</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</center>
</asp:Content>

