<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BirthCertificateThankYou.aspx.cs" Inherits="BirthCertificateThankYou" MaintainScrollPositionOnPostback="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        .style2
        {
            font-size: 8pt;
        }
        .style3
        {
            font-size: 8pt;
            color: #FFFFFF;
        }
        .style4
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>

<br/>
    <form id="form1" runat="server">
        <ajaxtoolkit:toolkitscriptmanager ID="ToolkitScriptManager1" runat="server">
        </ajaxtoolkit:toolkitscriptmanager>    
    <div class="grid-container">

    

      <div class="grid-x grid-padding-x">
       <div class="large-8 medium-8 cell">

       <div class="row">
            <div class="eight columns text-center"><br />
                <img src="images/C7.png" />
            </div>
          </div>

          <br />
         

          <div class="callout">

          <div class="row">
            <div class="eight columns text-center">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/check-icon.png" />
            </div>
          </div>

          <br />

            <div class="row">  
                <div class="eight columns text-center">  
                    <asp:Label ID="Label96" runat="server" 
                                    style="color: #000000; font-family: Verdana; font-size: 16pt; " 
                                    Text="Thank You,"></asp:Label>&nbsp;<asp:Label ID="LabelName" runat="server" 
                                    style="color: #000000; font-family: Verdana; font-size: 10pt; "></asp:Label>
                </div>            
            </div>
          
          <br />
          <br />
          
            <div class="row">
            <div class="eight columns text-center">
                <asp:Label ID="Label94" runat="server" 
                                    style="color: #000000; font-family: Verdana; font-size: 10pt; " 
                                    Text="Serial Number(s) Registered:"></asp:Label>
            </div>
          </div>

          <div class="row">
            <div class="eight columns text-center">
                <asp:Label ID="LabelSerialList" runat="server" 
                                    style="color: #000000; font-family: Verdana; font-size: 10pt; " 
                                    Text="List"></asp:Label>
            </div>
          </div>
 
            
            <br />
          <br />
          <br />

          <div class="row">
            <div class="eight columns text-center">
                <asp:Label ID="Label97" runat="server" 
                                    style="color: #000000; font-family: Verdana; font-size: 10pt; " 
                                    
                                    Text="Your C7 Birth Certificate(s) have been sent to the email you provided."></asp:Label>
            </div>
          </div>

            
          
          </div>
          <div class="row">
            <div class="eight columns text-center"><br />
                <p style="color: #FFFFFF" class="style2">If you require assistance with the registration process, please contact JL Audio Customer Service: JL Audio, Inc, 10369 North Commerce Pkwy., Miramar, FL 33025, Phone: 1-888-JLAUDIO 1-888-552-8346 Fax: 954-443-1111</p>
            </div>
          </div>
          <div class="row">
            <div class="eight columns text-center"><br class="style3" />
                <p style="color: #FFFFFF"><span class="style444"><span class="style2">Copyright © 2013, JL Audio, Inc. - All Rights Reserved. 
                </span> 
                    <font class="style2" size="2"> 
                <font color="#336699"><a href="http://www.jlaudio.com/footer/Copyright+%26+Trademark+Notice/Copyright+%26+Trademark+Notice/719811" >
                        <span class="style4">Copyright & Trademark Notice</span></a></font><span > I
                        </span></font></span><font color="#336699">
                        <a href="http://www.jlaudio.com/footer/Privacy/Privacy+Policy/719808">
                        <span class="style3">Privacy Policy</span></a></font><span> </span></p>
            </div>
          </div>

        </div>
      </div>


    </div>

    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>
    </form>

</body>
</html>
