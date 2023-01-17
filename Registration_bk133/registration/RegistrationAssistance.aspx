<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationAssistance.aspx.cs" Inherits="RegistrationAssistance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 85%;
            height: 339px;
        }
        .style445
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    .style446
    {
        letter-spacing: -.2pt;
        font-family: Arial, Helvetica, sans-serif;
    }
    .style3
    {
    
        font-size: 18pt;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        width: 100%;
    }
        .style448
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-style: normal;
            font-weight: 700;
            width: 100%;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <p class="MsoNormal">
                        <span style="mso-bidi-font-size:14.0pt;font-family:&quot;Lucida Grande&quot;;
mso-bidi-font-family:&quot;Lucida Grande&quot;">
        <table class="style3">
            <tr>
                <td style="mso-bidi-font-size: 14.0pt; mso-bidi-font-family: &quot;Lucida Grande&quot;;" 
                    width="100%" class="style448">
                        <o:p>JL Audio Registration</o:p></td>
                <td style="text-align: right" width="100%">
                    <img alt="" src="images/Step1.jpg" style="width: 200px; height: 50px" /></td>
            </tr>
        </table>
                        </span></p>
        <table class="style10">
            <tr>
                <td style="text-align: left">
                    <p class="MsoNormal">
                        <span class="style445">To register your JL Audio product, you will need the product&#39;s 
                        serial number and your sales receipt from an authorized JL Audio retailer (for 
                        purchase date and retailer information).</span><br class="style445" />
                        <br class="style445" />
                        <span class="style445">The serial number can be located on the product itself or on its packaging. If 
                        you are registering multiple units, register the first one and you will have the 
                        option at the end to register the additional units.</span>
                        <br class="style445" /></p>
                    <p class="MsoNormal">
                        <img alt="" src="images/SN_Label_Woofer.jpg" 
                            style="width: 300px; height: 200px" /><img alt="" 
                            src="images/SN_Label_Woofer_Detail.jpg" style="width: 300px; height: 200px" /></p>
                    <p class="MsoNormal">
                        <img alt="" src="images/SN_Label_Box.jpg" style="width: 300px; height: 200px" /><img 
                            alt="" src="images/SN_Label_Detail.jpg" style="width: 300px; height: 200px" /></p>
                    <p class="MsoNormal">
                        &nbsp;</p>
                    <p class="style445">
                        If your serial number is missing (due to being removed from the product), you 
                        will not be able to register the product using this website. Please contact JL 
                        Audio customer service for assistance at 1-888-JLAUDIO</p>
                    <p class="style446" 
                        
                        style="mso-bidi-font-size: 12.0pt; mso-bidi-font-family: Helvetica; mso-font-kerning: .5pt; text-align: center;">
                        <o:p>&nbsp;</o:p><asp:Button ID="Button1" runat="server" 
                            onclick="Button1_Click" 
                            Text="Continue to Registration" />
                        </p>
                </td>
            </tr>
            <tr>
                <td class="style445">
                    &nbsp;</td>
            </tr>
            </table>
    <center style="font-family: Arial, Helvetica, sans-serif">
    <br />
        <br />
    </center>
</asp:Content>

