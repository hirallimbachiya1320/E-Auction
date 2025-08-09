<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageCustomers.aspx.cs" Inherits="Admin_ManageCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>List of<span> </span>Customers</h2>
          <div class="clr"></div>
          
          <div class="post_content">
    <table style="width:100%;">
        
        <tr>
            <td style="width: 193px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="1" CellSpacing="1" 
                    DataSourceID="SqlDataSource1" Width="99%" 
                    EmptyDataText="No Sub Category Exists" DataKeyNames="userid">
                    <Columns>
                        <asp:BoundField DataField="userno" HeaderText="UNo." ReadOnly="True" 
                            SortExpression="userno" InsertVisible="False" />
                       
                         <asp:TemplateField HeaderText="User Id">  
                                <ItemTemplate>  
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("userid") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>
                        <asp:BoundField DataField="firstname" HeaderText="Firstname" 
                            SortExpression="firstname"/>
                        <asp:BoundField DataField="lastname" HeaderText="Lastname" 
                            SortExpression="lastname" />
                        <asp:BoundField DataField="city" HeaderText="City" 
                            SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="country" HeaderText="Country" 
                            SortExpression="country" />
                         <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center">  
                                <EditItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </ItemTemplate>  
                            </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    
                    
                    SelectCommand="SELECT [userno], [userid], [firstname], [lastname], [city], [state], [country] FROM [CUsert]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">
                &nbsp;</td>
            <td>
              
                
                        <asp:Button ID="Delete_btn" runat="server" CssClass="submit_btn" 
                            onclick="Delete_btn_Click" Text="Delete Customer" />
                 
               
            </td>
        </tr>
        <tr>
            <td style="width: 193px">
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
               
    </div>
</asp:Content>



