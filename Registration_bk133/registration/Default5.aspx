<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

a:link
	{color:blue;
	text-decoration:underline;
        }
    </style>
</head>   
<body>
    <form id="form1" runat="server">
    <div id="printDiv" runat="server">
 This is the content in the page to print
</div>

<script type="text/javascript">
<!--
    function printPartOfPage(elementId) {
        var printContent = document.getElementById(elementId);
        var windowUrl = 'about:blank';
        var uniqueId = new Date();
        var windowName = 'Print' + uniqueId.getTime();
        var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');

        printWindow.document.write(printContent.innerHTML);
        printWindow.document.close();
        printWindow.focus();
        printWindow.print();
        printWindow.close();
    }
// -->
</script>
    <asp:TextBox ID="TextBox1" runat="server">ok</asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
        Text="Button" />
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Thank You. If you have any questions or problems, please feel free to email us 
        at <a href="mailto:jlaudiorecall@jlaudio.com" 
            title="blocked::mailto:jlaudiorecall@jlaudio.com">jlaudiorecall@jlaudio.com</a> 
        .</p>
</body>
</html>
