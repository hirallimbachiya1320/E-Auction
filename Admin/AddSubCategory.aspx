<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="Admin_AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2><span>Add Sub </span>Category</h2>
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
                Category</td>
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
                    ControlToValidate="subcattxt" ErrorMessage="Enter SubCategory Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Upload Image</td>
            <td>
                <asp:FileUpload ID="subcatfu" runat="server" CssClass="input_field" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="add_btn" runat="server" CssClass="submit_btn" Text="Add Sub Category" 
                    onclick="add_btn_Click" />
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



