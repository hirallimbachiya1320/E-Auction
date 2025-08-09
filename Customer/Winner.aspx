<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Winner.aspx.cs" Inherits="Customer_Winner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Winner</h2>
          <div class="clr"></div>
          
          <div class="post_content">
    <table style="width: 100%;">
   
    <tr>
            <td colspan="2">
                 &nbsp;</td>
        </tr>
        <tr>
            <td>
                 Auction Id
            </td>
            <td>
                <asp:TextBox ID="aidtxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                 Customer Id</td>
            <td>
                <asp:TextBox ID="cidtxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 Productid</td>
            <td>
                 <asp:TextBox ID="pidtxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
                     <br />
            </td>
        </tr>
        <tr>
            <td>
                 Product Name</td>
            <td>
                 <asp:TextBox ID="pnamext" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 Product Image</td>
            <td>
                 <asp:Image ID="pimg" runat="server" Height="255px" Width="255px" />
            </td>
        </tr>
        <tr>
            <td>
                 Winning Bid</td>
            <td>
                 <asp:TextBox ID="wbidxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
               
    </div>
</asp:Content>




