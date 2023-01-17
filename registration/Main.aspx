<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        color: #000000;
        text-decoration: none;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
    RA Request System. Click on either 
                            <asp:HyperLink ID="HyperLinkRequest" runat="server" CssClass="style7" 
                                ForeColor="Black" NavigateUrl="~/RequestRAStart.aspx" 
            Font-Underline="True">Request RA</asp:HyperLink>
                        <b>&nbsp;</b>or 
                            <asp:HyperLink ID="HyperLinkStatus" runat="server" CssClass="style7" 
                                ForeColor="Black" NavigateUrl="~/RAStatusCS.aspx" 
            Font-Underline="True">RA Status</asp:HyperLink>
                        &nbsp;to continue.</p>
<p style="text-align: center">
    &nbsp;</p>
<p style="text-align: center">
    &nbsp;</p>
</asp:Content>

