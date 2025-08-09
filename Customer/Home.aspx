<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2><span>Welcome to</span> bid.com</h2>
          <div class="clr"></div>
          <div class="img"><img src="../images/slide3.jpg" width="630" height="140" alt="" 
                  class="fl" /></div>

          <div class="post_content">
          <p style=" font: bold 14px/18px arial; color:#169CDA; text-decoration:none;text-align:justify; line-height:22px;"><b>Welcome To 
              Customer Area</b></p>
              <p style=" font: bold 14px/18px arial; color:#169CDA; text-decoration:none;text-align:justify; line-height:22px;">
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </p>
          
		   <asp:DataList ID="dlProducts" runat="server" CellPadding="2" CellSpacing="2" 
                    DataKeyField="productid" datasourceid="SqlDataSource3" RepeatColumns="4" HorizontalAlign="Center">
                    <ItemStyle BackColor="#0096DA" ForeColor="White" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemTemplate>
                        <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>'/>
                    <br />
                        <asp:Image ID="imgsearch" runat="server" Height="150px" 
                            ImageUrl='<%#Eval("productimage")%>' Width="150px" />
                    <br />
                        <asp:Label ID="productnameLabel" runat="server" 
                            Text='<%# Eval("productname") %>' />
                    <br />
                        Start Bid:
                        <asp:Label ID="startbidLabel" runat="server" Text='<%# Eval("startbid") %>' />
                    <br />
                        <a href='PlaceBid.aspx?PID=<%#Eval("productid") %>'>
                        <asp:Image ID="Image1" runat="server" Height="30px" 
                            ImageUrl="~/images/Bid-Now-Button-Red.png" Width="135px" />
                        </a>
                    <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT productid, productname, productimage, startbid FROM Productt WHERE (productstatus = @productstatus) AND (enddate &gt; GETDATE())">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Verified" Name="productstatus" Type="String" />
                        
                    </SelectParameters>
                </asp:SqlDataSource>
          
		  
	
	
          </div>
</asp:Content>


