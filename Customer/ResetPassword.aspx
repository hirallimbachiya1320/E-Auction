<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="Customer_ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h2><span>Reset</span> Password</h2>
          <div class="clr"></div>
          
          <div class="post_content">
    <table style="width: 100%;" >
   
       
         <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
         </tr>
   
       
         <tr>
            <td>
                Enter Old Password</td>
            <td>
                <asp:TextBox ID="OpassTxt" runat="server" CssClass="input_field" AutoPostBack="True" 
                    ontextchanged="OpassTxt_TextChanged" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="OpassTxt" Display="Dynamic" ErrorMessage="Enter old password" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td>
                &nbsp;
            </td>
         </tr>
         <tr>
            <td>
                Enter New Password</td>
            <td>
                <asp:TextBox ID="PassTxt" runat="server" CssClass="input_field" 
                    TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="PassTxt" Display="Dynamic" ErrorMessage="Enter password" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="PassTxt" Display="Dynamic" 
                    ErrorMessage="Only alphabets, digits and _ . Min 5 characters" 
                    Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;
            </td>
         </tr>
         <tr>
            <td>
                Reenter New Password</td>
            <td>
                <asp:TextBox ID="CpassTxt" runat="server" CssClass="input_field" 
                    TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="CpassTxt" Display="Dynamic" ErrorMessage="Reenter password" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="CpassTxt" Display="Dynamic" 
                    ErrorMessage="Only alphabets, digits and _ . Min 5 characters" 
                    Font-Size="10pt" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="PassTxt" ControlToValidate="CpassTxt" Display="Dynamic" 
                    ErrorMessage="Passwords should match" Font-Size="10pt" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;
            </td>
         </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="ResetBtn" runat="server" Text="Reset Password" CssClass="submit_btn" 
                    onclick="ResetBtn_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="MsgLbl" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
               
    </div>
</asp:Content>