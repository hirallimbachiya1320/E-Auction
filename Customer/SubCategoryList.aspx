<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="SubCategoryList.aspx.cs" Inherits="Admin_SubCategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>List of<span> Sub </span>Categories</h2>
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
                    CellPadding="1" CellSpacing="1" DataKeyNames="SubCategoryId,CategoryName" 
                    DataSourceID="SqlDataSource1" Width="99%" 
                    EmptyDataText="No Sub Category Exists">
                    <Columns>
                        <asp:BoundField DataField="SubCategoryId" HeaderText="Sub Category Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="SubCategoryId" />
                        <asp:BoundField DataField="SubCategoryName" HeaderText="Sub Category Name" 
                            SortExpression="SubCategoryName" ItemStyle-Width="25%" />
                        <asp:TemplateField HeaderText="Sub Category Image" >
                            <ItemTemplate>
                                <asp:Image ID="imgg" ImageUrl='<%#Eval("SubCategoryImage") %>' runat="server" Height="100" Width="120"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                         <asp:BoundField DataField="CategoryName" HeaderText="Category Name" 
                            ReadOnly="True" SortExpression="CategoryName" ItemStyle-Width="25%" />
                        
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT SubCategoryt.SubCategoryId, SubCategoryt.SubCategoryName, Categoryt.CategoryName, SubCategoryt.SubCategoryImage FROM Categoryt INNER JOIN SubCategoryt ON Categoryt.CategoryId = SubCategoryt.CategoryId">
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


