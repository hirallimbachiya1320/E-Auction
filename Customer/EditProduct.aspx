<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="EditProduct.aspx.cs" Inherits="Admin_EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Edit<span> Product</span></h2>
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
            <td style="width: 130px">
                 Product Id</td>
            <td>
                 <asp:TextBox ID="pidtxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
        <tr>
            <td style="width: 130px">
                 Sub Category</td>
            <td>
                <asp:DropDownList ID="subcatddl" runat="server" 
                    CssClass="input_field" DataSourceID="SqlDataSource2" 
                    DataTextField="SubCategoryName" DataValueField="SubCategoryId" Height="26px" 
                    Width="209px" BackColor="#F1F1F1" Enabled="False" Font-Bold="True" 
                    ForeColor="Black">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                     SelectCommand="SELECT SubCategoryId, SubCategoryName FROM SubCategoryt">
                </asp:SqlDataSource>
            </td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 130px">
                 Product Name 
            </td>
            <td>
                 <asp:TextBox ID="pnametxt" runat="server" CssClass="input_field" 
                     ReadOnly="True"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
         <tr>
            <td style="width: 130px">
                 Product Description
            </td>
            <td>
                 <asp:TextBox ID="pdesctxt" runat="server" CssClass="input_field" Height="52px" 
                     Rows="5" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 151px">
                &nbsp;
            </td>
        </tr>
         <tr>
            <td style="width: 130px">
                 Start Date
            </td>
            <td>
                 <asp:TextBox ID="psdatetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="psdatetxt" ErrorMessage="Enter Start Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="width: 151px">
               
            </td>
        </tr>
         <tr>
            <td style="width: 130px">
                 End Date
            </td>
            <td>
                 <asp:TextBox ID="pedatetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="pedatetxt" ErrorMessage="Enter End Date" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
            </td>
            <td style="width: 151px">
                 &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 130px">
                 Start Bid Amount
            </td>
            <td>
                 <asp:TextBox ID="pbidamttxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                     ControlToValidate="pbidamttxt" ErrorMessage="Enter Start Bid Amount" 
                     ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
            </td>
            <td style="width: 151px">
                 &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 130px" >
                 Increment Amount</td>
            <td >
                 <asp:TextBox ID="pincrtxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="pincrtxt" ErrorMessage="Enter Increment Amount" 
                     ForeColor="Red" Width="185px"></asp:RequiredFieldValidator>
                 <br />
            </td>
            <td style="width: 151px;">
                 &nbsp;</td>
        </tr>
      
        <tr>
            <td style="width: 130px">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="editbtn" runat="server" Text="Edit Product"  
                    CssClass="submit_btn" onclick="editbtn_Click" />
            </td>
            <td style="width: 151px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>


