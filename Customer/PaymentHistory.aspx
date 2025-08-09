<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="PaymentHistory.aspx.cs" Inherits="Customer_PaymentHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Payment History</h2>
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
                    CellPadding="1" CellSpacing="1" DataKeyNames="paymentid" 
                    DataSourceID="SqlDataSource1" Width="99%" 
                    EmptyDataText="No Product Exists">
                    <Columns>
                        <asp:BoundField DataField="paymentid" HeaderText="Pid" ReadOnly="True" 
                            SortExpression="paymentid" InsertVisible="False" />
                        <asp:BoundField DataField="auctionid" HeaderText="Auction Id" 
                            SortExpression="auctionid" ItemStyle-Width="20%" />
                         
                        <asp:BoundField DataField="productid" HeaderText="Product Id" 
                            SortExpression="productid" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="paymentdate" HeaderText="Payment Date" 
                            SortExpression="paymentdate" ItemStyle-Width="20%"/>
                        <asp:BoundField DataField="paymentamount" HeaderText="Amount" 
                            SortExpression="paymentamount" />
                        <asp:BoundField DataField="paymentmode" HeaderText="Mode" 
                            SortExpression="paymentmode" />
                       
                    </Columns>
                    <HeaderStyle BackColor="#1890C6" ForeColor="White" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                       
                    
                    SelectCommand="SELECT Paymentt.paymentid, Paymentt.auctionid, Paymentt.productid, Productt.productname, Paymentt.paymentdate, Paymentt.paymentamount, Paymentt.paymentmode FROM Paymentt INNER JOIN Productt ON Paymentt.productid = Productt.productid WHERE (Paymentt.userid = @userid)">
               <SelectParameters>
                        <asp:SessionParameter Name="userid" SessionField="Uid" />
                    </SelectParameters>
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

