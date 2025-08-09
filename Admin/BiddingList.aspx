<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="BiddingList.aspx.cs" Inherits="Admin_BiddingList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Bidding List</h2>
          
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
                    CellPadding="1" CellSpacing="1" 
                    DataSourceID="SqlDataSource1" Width="99%" 
                    EmptyDataText="No Product Exists">
                    <Columns>
                        <asp:BoundField DataField="auctionid" HeaderText="Auction Id" 
                            SortExpression="auctionid"  ItemStyle-Width="25%"/>
                        <asp:TemplateField HeaderText="Product Image" >
                            <ItemTemplate>
                                <asp:Image ID="imgg" ImageUrl='<%#Eval("productimage") %>' runat="server" Height="100" Width="100"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="productid" HeaderText="Product Id" 
                            SortExpression="productid" ItemStyle-Width="20%" />
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" ItemStyle-Width="25%"/>
                        <asp:BoundField DataField="bidamount" HeaderText="Bid Amount" 
                            SortExpression="bidamount" />
                        
                       
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                       
                    
                    SelectCommand="SELECT Auctiont.auctionid, Auctiont.productid, Productt.productname, Auctiont.bidamount, Productt.productimage FROM Auctiont INNER JOIN Productt ON Auctiont.productid = Productt.productid ">
               
                </asp:SqlDataSource>
                
               
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>







