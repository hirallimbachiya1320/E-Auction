<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="MakePayment.aspx.cs" Inherits="Customer_MakePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Make Payment</h2>
          <div class="clr"></div>
          
          <div class="post_content">
              <asp:Panel ID="Panel1" runat="server">
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
            <td bgcolor="#0096DA" colspan="2" 
                style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold">
                Payment Details</td>
        </tr>
        <tr>
            <td>
                Payment Date</td>
            <td>
                 <asp:TextBox ID="pdatetxt" runat="server" CssClass="input_field" 
                    ReadOnly="True"></asp:TextBox>
                 </td>
        </tr>
        <tr>
            <td>
                Payment Mode</td>
            <td>
                <asp:DropDownList ID="pmodeddl" runat="server" AppendDataBoundItems="True" 
                    CssClass="input_field" Height="26px" 
                    Width="209px" AutoPostBack="True">
                    <asp:ListItem Value="--Select--">--Select--</asp:ListItem>
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Debit Card</asp:ListItem>
                    <asp:ListItem>Cash On Delivery</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="paybtn" runat="server" Text="Pay Now"  CssClass="submit_btn" onclick="paybtn_Click" 
                   />
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
              </asp:Panel>
   
              <asp:Label ID="msglbl1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>





