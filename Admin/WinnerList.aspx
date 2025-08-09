<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="WinnerList.aspx.cs" Inherits="Admin_WinnerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Winner List</h2>
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
                    CellPadding="1" CellSpacing="1" 
                    DataSourceID="SqlDataSource1" Width="99%" 
                    EmptyDataText="No Product Exists">
                    <Columns>
                        <asp:BoundField DataField="auctionid" HeaderText="Auction Id" 
                            SortExpression="auctionid" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" ItemStyle-Width="20%" />
                         <asp:BoundField DataField="firstname" HeaderText="First Name" 
                            SortExpression="firstname" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" 
                            SortExpression="lastname" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="bidamt" HeaderText="Bid Amount" 
                            SortExpression="bidamt" />
                        
                       
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                       
                    
                    
                    
                    SelectCommand="SELECT Winner.auctionid, Productt.productname, Winner.bidamt, CUsert.firstname, CUsert.lastname FROM Auctiont INNER JOIN Productt ON Auctiont.productid = Productt.productid INNER JOIN Winner ON Auctiont.auctionid = Winner.auctionid AND Auctiont.userid = Winner.userid INNER JOIN CUsert ON Auctiont.userid = CUsert.userid">
              
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



