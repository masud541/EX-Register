<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="RAStatus.aspx.cs" Inherits="RAStatus"  MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="RA STATUS"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    
 
    <table class="style1">
        <tr>
            <td>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                    Text="RA Requests (#/Date/Model/Serial)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="ObjectDataSource2" DataTextField="DATE_MODEL_SERIAL" 
                    DataValueField="RA_SEQ" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="SelectRARequestByUser" TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="dp_user_id" SessionField="USER" 
                            Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="RA Status"></asp:Label>
    <table class="style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="RA_STATUS_SEQ" DataSourceID="ObjectDataSource1" 
                ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="STATUS_DESC" HeaderText="Status" 
                        SortExpression="STATUS_DESC" />
                        <asp:BoundField DataField="DOCUMENT_LINK" HeaderText="RA Label" 
                            SortExpression="DOCUMENT_LINK" >
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="STATUS_DATE" HeaderText="Status Date" 
                        SortExpression="STATUS_DATE" DataFormatString="{0:d}" HtmlEncode="False" />
                        <asp:BoundField DataField="RA_NUMBER" HeaderText="RA Number" 
                            SortExpression="RA_NUMBER">
                        <HeaderStyle Wrap="False" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectRAStatus" 
                    TypeName="RABusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="ra_seq" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

