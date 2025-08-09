<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerLogin.aspx.cs" Inherits="CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2><span>Customer </span>SignIn</h2>
          <div class="clr"></div>
          
          <div class="post_content">
     <table style="width: 100%;">
   
    <tr>
            <td colspan="2">
                 &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                 Username
            </td>
            <td>
                <asp:TextBox ID="unametxt" runat="server" CssClass="input_field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="unametxt" Display="Dynamic" ErrorMessage="Enter Username" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="unametxt" Display="Dynamic" 
                    ErrorMessage="Enter Valid Characters" Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[^;-=%']*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                 Password
            </td>
            <td>
                 <asp:TextBox ID="passtxt" runat="server" CssClass="input_field" 
                     TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="passtxt" Display="Dynamic" ErrorMessage="Enter Password" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="passtxt" Display="Dynamic" 
                    ErrorMessage="Enter Valid Characters" Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[^;-=%']*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="loginbtn" runat="server" Text="Sign In"  CssClass="submit_btn" onclick="loginbtn_Click" 
                   />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/CustomerRegister.aspx">Create Your Account!</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>




