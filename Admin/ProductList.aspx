<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Admin_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>List of<span> Products </span></h2>
          <div class="clr"></div>
          
          <div class="post_content">
    <table style="width:100%;">
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="1" CellSpacing="1" DataKeyNames="productid" 
                    DataSourceID="SqlDataSource1" Width="99%" 
                    EmptyDataText="No Product Exists">
                    <Columns>
                        <asp:BoundField DataField="productid" HeaderText="Product Id" ReadOnly="True" 
                            SortExpression="productid" />
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" ItemStyle-Width="20%" />
                       <asp:TemplateField HeaderText="Product Image" >
                            <ItemTemplate>
                                <asp:Image ID="imgg" ImageUrl='<%#Eval("productimage") %>' runat="server" Height="100" Width="120"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                         
                        <asp:BoundField DataField="description" HeaderText="Description" 
                            SortExpression="description" ItemStyle-Width="30%"/>
                        <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                          <a href='EditProduct.aspx?PID=<%#Eval("productid")%>' style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; color:#1890C6;">Edit</a>
                                 </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT productid, productname, productimage, description FROM Productt ">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
               
    </div>
</asp:Content>




