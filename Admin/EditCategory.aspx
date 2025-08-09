<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditCategory.aspx.cs" Inherits="Admin_EditCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>E<span>dit </span>Category</h2>
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
            <td>
                Category Id</td>
            <td>
                <asp:TextBox ID="catidtxt" runat="server" CssClass="input_field" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Category Name</td>
            <td>
                <asp:TextBox ID="cattxt" runat="server" CssClass="input_field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="cattxt" ErrorMessage="Enter Category Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="edit_btn" runat="server" CssClass="submit_btn" Text="Edit Category" 
                    onclick="edit_btn_Click" />
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



