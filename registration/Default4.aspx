<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script type="text/javascript"><!--function printTextBox_Text(elementId){ var textboxText = document.getElementById(elementId); var windowUrl = 'about:blank'; var windowName = 'Print' + new Date().getTime(); var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');  printWindow.document.write(textboxText .value); printWindow.document.close(); printWindow.focus(); printWindow.print(); printWindow.close();}// --></script><script type="text/javascript">
<!--
function printTextBox_Text(elementId)
{
 var textboxText = document.getElementById(elementId);
 var windowUrl = 'about<b></b>:blank';
 var windowName = 'Print' + new Date().getTime();
 var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');

 printWindow.document.write(textboxText .value);
 printWindow.document.close();
 printWindow.focus();
 printWindow.print();
 printWindow.close();
}
// -->
</script>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server">123</asp:TextBox>
    
    </div>
    </form>
</body>
</html>


