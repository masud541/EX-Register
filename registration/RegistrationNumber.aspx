<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationNumber.aspx.cs" Inherits="RegistrationNumber" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 63%;
        }
        .style17
        {
            font-size: 11pt;
            text-align: left;
        }
        .style24
    {
        font-size: 8pt;
    }
        .style445
        {
            font-size: 10pt;
        }
        .style446
        {
            font-size: 12pt;
        }
            
        .style448
    {
        font-size: 9pt;
    }
        .style449
        {
            font-size: large;
        }
        .style450
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 8.5pt;
        }
        .style451
        {
            font-size: 8.5pt;
        }
        .style452
        {
            font-family: Calibri;
            font-size: 11.5pt;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
        <table class="style1" width="100%">
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" class="style449">
                    
                        <strong>JL Audio Registration</strong></td>
                <td style="text-align: right">
                    <img alt="" src="images/Step4.jpg" style="width: 200px; height: 50px" /></td>
            </tr>
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                   colspan="2">
                    <asp:Image ID="ImageBronto" runat="server" BorderStyle="None" BorderWidth="0px" 
                        Height="0px" 
                        Width="0px" />
                </td>
            </tr>
        </table>
        <br />
        
        <table class="style10">
            <tr>
                <td class="style17">
                    <p class="MsoNormal">
                        <span class="style450"><strong>Your
                        <asp:Label ID="LabelModel" runat="server">product</asp:Label>
&nbsp;has been registered.</strong></span><o:p></o:p></p>
                    <p class="MsoNormal">
                        <o:p></o:p></p>
                    <span class="style452">Thank you for registering your JL Audio product. We appreciate your business and hope that you enjoy the performance of your JL Audio product for many years to come. An email will be sent to you confirming your product’s registration. 
                    <asp:Label ID="LabelPremium" runat="server" 
                        Text="Please allow 2 to 3 weeks for your gift to arrive."></asp:Label>
                    <br />
                    <br />
                    To register an additional JL Audio product, click the button below :                     
                    </span>
                    <span class="style448">
                    <br />
                    </span>
                    <span class="style446">
                    <br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="font-size: small;" Text="Register Additional Product" 
                        Font-Size="X-Small" Height="22px" Width="191px" />
                    <br />
                    <br />
                    <br />
                    </span>
                    <span>
                    <strong><span class="style451">Thank You! Your Registration is Complete! 
                    </span></strong> 
                    <br />
                    </span>
                    <span class="style452">You may close this 
                    window.</span><span class="style446"><span class="style448"><br />
                    </span><br />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        style="font-size: small;" Text="Finish" 
                        Font-Size="X-Small" Height="22px" Width="105px" />
                    </span>
                    <br class="style445" />
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    <div id="social">
											<a href="http://www.facebook.com/jlaudio" title="Facebook"><img src="http://mediacdn.jlaudio.com/media/mfg/9013/media_image/live_1/facebook_icon.png?1360818936" alt="Facebook" /></a>&nbsp;&nbsp;
											<a href="http://www.twitter.com/jlaudio" title="Twitter"><img src="http://mediacdn.jlaudio.com/media/mfg/9013/media_image/live_1/twitter_icon.png?1360819005" alt="Twitter" /></a>&nbsp;&nbsp;
											<a href="http://www.youtube.com/jlaudioinc" title="YouTube"><img src="http://mediacdn.jlaudio.com/media/mfg/9013/media_image/live_1/YouTube_Footer_ICON.png?1360818814" alt="YouTube" /></a>&nbsp;&nbsp;
											<a href="http://www.instagram.com/jlaudioinc" title="Instagram"><img src="http://mediacdn.jlaudio.com/media/mfg/9013/media_image/live_1/Instagram_Logo.png?1362529186" alt="Instagram" /></a>
									</div></td>
            </tr>
        </table>
        <br />
    </center>
</asp:Content>

