<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notes.aspx.cs" Inherits="Notes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        User_id stored in DP_USERS points to SX_customer which will be foreing key for 
        dp_request</p>
    <form id="form1" runat="server">
    <div>
    
        on ra request entry<br />
                // null serial - ok<br />
                //invalid serial - error - call<br />
                //existing ra - error - call<br />
                // after entry check serial to update amp flag<br />
        <br />
        in review screen:add&nbsp;
            # of pending RAs at top left<br />
        <br />
        RA Request add this verbiage, if and where appropriate : ra number - NOT 
        Assigneed Yet, Please check back/Monitor you email<br />
&nbsp;
        <br />
        Add comments box to include in email<br />
        <br />
        update error messages based on Ozzy&#39;s email<br />
        <br />
        Meeting notes:<br />
        <br />
        Category field/Question - if amp or sub validate serial enabled<br />
        <br />
        Date format<br />
        <br />
        consumer name if applicable<br />
        <br />
        <br />
        New Pending summary: Date, Dealer RA#, phone, contac, model, category,<br />
        <br />
        Approved/Pending/Rejected</div>
    </form>
</body>
</html>
