<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="CategoryList.aspx.cs" Inherits="Admin_CategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>List of<span> </span>Categories</h2>
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
                    CellPadding="1" CellSpacing="1" DataKeyNames="CategoryId" 
                    DataSourceID="SqlDataSource1" Width="80%" 
                    EmptyDataText="No Category Exists">
                    <Columns>
                        <asp:BoundField DataField="CategoryId" HeaderText="Category Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
                        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" 
                            SortExpression="CategoryName" ItemStyle-Width="40%" />
                        <asp:TemplateField HeaderText="Image" >
                            <ItemTemplate>
                                <asp:Image ID="imgg" ImageUrl='<%#Eval("CategoryImage") %>' runat="server" Height="100" Width="120"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                         
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CategoryId], [CategoryName], [CategoryImage] FROM [Categoryt]">
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




