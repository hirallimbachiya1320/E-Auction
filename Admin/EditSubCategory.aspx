<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditSubCategory.aspx.cs" Inherits="Admin_EditSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><span>Edit Sub </span>Category</h2>
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
                Sub Category Id</td>
            <td>
                <asp:TextBox ID="subcatidtxt" runat="server" CssClass="input_field" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Category Name</td>
            <td>
                <asp:DropDownList ID="catddl" runat="server" AppendDataBoundItems="True" 
                    CssClass="input_field" DataSourceID="SqlDataSource1" 
                    DataTextField="CategoryName" DataValueField="CategoryId" Height="26px" 
                    Width="209px">
                    <asp:ListItem>--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CategoryId], [CategoryName] FROM [Categoryt]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Sub
                Category Name</td>
            <td>
                <asp:TextBox ID="subcattxt" runat="server" CssClass="input_field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="subcattxt" ErrorMessage="Enter Subcategory Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="edit_btn" runat="server" CssClass="submit_btn" Text="Edit Sub Category" 
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





