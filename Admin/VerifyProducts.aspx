<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VerifyProducts.aspx.cs" Inherits="Admin_VerifyProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><span> Verify Products </span></h2>
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
                    EmptyDataText="No Product Exists" onrowcommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="productid" HeaderText="Product Id" ReadOnly="True" 
                            SortExpression="productid"  />
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname"   />
                       <asp:TemplateField HeaderText="Product Image" >
                            <ItemTemplate>
                                <asp:Image ID="imgg" ImageUrl='<%#Eval("productimage") %>' runat="server" Height="70" Width="70"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                         
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" ItemStyle-Width="30%" Visible="false"/>
                       <asp:BoundField DataField="startdate" HeaderText="Start Date"  SortExpression="startdate" ItemStyle-Width="17%" DataFormatString="{0:dd-MMM-yyyy}"/>
                       <asp:BoundField DataField="enddate" HeaderText="End Date"  SortExpression="enddate" ItemStyle-Width="17%" DataFormatString="{0:dd-MMM-yyyy}"/>
                       <asp:BoundField DataField="startbid" HeaderText="Start Bid"  SortExpression="startbid" />
                       <asp:TemplateField HeaderText="Accept">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lblAccept" Text="Accept" CommandName="Accept" CommandArgument='<%# Eval("productid") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="50px" HorizontalAlign="Center"  />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lblReject" Text="Reject" CommandName="Reject" CommandArgument='<%# Eval("productid") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="50px" HorizontalAlign="Center"  />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                   SelectCommand="SELECT [productid], [productname], [productimage], [description], [startdate], [enddate], [startbid] FROM [Productt] WHERE ([productstatus] = @productstatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Verified" Name="productstatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>


                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    
                    SelectCommand="SELECT [productid], [productname], [productimage], [description], [startdate], [enddate], [startbid], [increment] FROM [Productt] WHERE ([productstatus] = @productstatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Not Verified" Name="productstatus" Type="String" />
                    </SelectParameters>
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

