<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="BidOnProduct.aspx.cs" Inherits="Customer_BidOnProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2><span>Bid on Product</span></h2>
          <div class="clr"></div>
          
          <div class="post_content">
     <table style="width: 100%;">
   
    <tr>
            <td colspan="2">
                 &nbsp;</td>
        </tr>
        <tr>
            <td>
                 Category</td>
            <td>
                <asp:DropDownList ID="catddl" runat="server" AppendDataBoundItems="True" 
                    CssClass="input_field" DataSourceID="SqlDataSource1" 
                    DataTextField="CategoryName" DataValueField="CategoryId" Height="26px" 
                    Width="209px" AutoPostBack="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CategoryId], [CategoryName] FROM [Categoryt]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                 Sub Category</td>
            <td>
                <asp:DropDownList ID="subcatddl" runat="server" 
                    CssClass="input_field" DataSourceID="SqlDataSource2" 
                    DataTextField="SubCategoryName" DataValueField="SubCategoryId" Height="26px" 
                    Width="209px" AutoPostBack="True" 
                     onselectedindexchanged="subcatddl_SelectedIndexChanged" 
                    AppendDataBoundItems="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                     SelectCommand="SELECT [SubCategoryId], [SubCategoryName] FROM [SubCategoryt] WHERE ([CategoryId] = @CategoryId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="catddl" Name="CategoryId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
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
                    SelectCommand="SELECT productid, productname, productimage, startbid FROM Productt WHERE (productstatus = @productstatus) AND (subcategoryid = @subcategoryid) AND (enddate &gt; GETDATE())">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Verified" Name="productstatus" Type="String" />
                        <asp:ControlParameter ControlID="subcatddl" DefaultValue="" 
                            Name="subcategoryid" PropertyName="SelectedValue" />
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
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>





