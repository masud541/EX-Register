<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRA.master" AutoEventWireup="true" CodeFile="COG.aspx.cs" Inherits="COG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <br />
                <b>COG<br />
                </b>&nbsp;<table class="style1">
                    <tr>
                        <td class="style7">
                            <asp:Label ID="Label4" runat="server" Text="From:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="Label3" runat="server" Text="To:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Run" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ObjectDataSource1">
                    <Columns>
                        <asp:BoundField DataField="CATEGORY" HeaderText="cat" SortExpression="CATEGORY">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="WARRANTY" HeaderText="wr" SortExpression="WARRANTY">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SKU" HeaderText="sku" SortExpression="SKU">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PART_NUMBER" HeaderText="part_num" 
                            SortExpression="PART_NUMBER">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRIPTION" HeaderText="desc" 
                            SortExpression="DESCRIPTION">
                        <ItemStyle Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SIMPLEX_COST" DataFormatString="{0:c}" 
                            HeaderText="sx_cost" HtmlEncode="False" SortExpression="SIMPLEX_COST" />
                        <asp:BoundField DataField="SIMPLEX_SKU_W_VALUE" DataFormatString="{0:c}" 
                            HeaderText="sx_sku_w_val" HtmlEncode="False" 
                            SortExpression="SIMPLEX_SKU_W_VALUE" />
                        <asp:BoundField DataField="MAX_COST" DataFormatString="{0:c}" 
                            HeaderText="max_cost" HtmlEncode="False" SortExpression="MAX_COST" />
                        <asp:BoundField DataField="SIMPLEX_SKU_W_QTY" HeaderText="sx_sku_w_qty" 
                            SortExpression="SIMPLEX_SKU_W_QTY" />
                        <asp:BoundField DataField="SIMPLEX_CAT_SKU_QTY" HeaderText="sx_cat_sku_qty" 
                            SortExpression="SIMPLEX_CAT_SKU_QTY" />
                        <asp:BoundField DataField="SIMPLEX_CAT_SKU_VALUE" DataFormatString="{0:c}" 
                            HeaderText="sx_cat_sku_val" HtmlEncode="False" 
                            SortExpression="SIMPLEX_CAT_SKU_VALUE" />
                        <asp:BoundField DataField="SIMPLEX_SKU_QTY_W_MAX_COST" 
                            HeaderText="sx_qty_max_cost" SortExpression="SIMPLEX_SKU_QTY_W_MAX_COST" />
                        <asp:BoundField DataField="SIMPLEX_CAT_W_VALUE" DataFormatString="{0:c}" 
                            HeaderText="sx_cal_w_val" HtmlEncode="False" 
                            SortExpression="SIMPLEX_CAT_W_VALUE" />
                        <asp:BoundField DataField="SIMPLEX_CAT_VALUE" DataFormatString="{0:c}" 
                            HeaderText="sx_cat_val" HtmlEncode="False" SortExpression="SIMPLEX_CAT_VALUE" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="SelectCombinedCOG" 
                    TypeName="COGBusinessObject">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="from" PropertyName="Text" 
                            Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox2" Name="to" PropertyName="Text" 
                            Type="DateTime" />
                        <asp:Parameter DefaultValue="%" Name="sku" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

