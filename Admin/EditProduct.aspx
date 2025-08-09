<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditProduct.aspx.cs" Inherits="Admin_EditProduct" %>

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
            <td style="width: 143px">
                 Product Id</td>
            <td>
                 <asp:TextBox ID="pidtxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox>
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
        <tr>
            <td style="width: 143px">
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
            <td style="width: 143px">
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
            <td style="width: 143px">
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
            <td style="width: 143px">
                 Start Date
            </td>
            <td>
                 <asp:TextBox ID="psdatetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" 
                    ControlToValidate="psdatetxt" Display="Dynamic" 
                    ErrorMessage="eg. Jan-12-2020" ForeColor="Red" 
                    ValidationExpression="\d{1,2}(-)\w{3}(-)\d{4}" Font-Size="10pt"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="psdatetxt" ErrorMessage="Enter Start Date" ForeColor="Red" 
                    Width="160px"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
         <tr>
            <td style="width: 143px">
                 End Date
            </td>
            <td>
                 <asp:TextBox ID="pedatetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" 
                    ControlToValidate="pedatetxt" Display="Dynamic" 
                    ErrorMessage="eg. Jan-12-2020" ForeColor="Red" 
                    ValidationExpression="\d{1,2}(-)\w{3}(-)\d{4}" Font-Size="10pt"></asp:RegularExpressionValidator>
                 <br />
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="pedatetxt" ErrorMessage="Enter End Date" ForeColor="Red" 
                     Width="160px"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 143px">
                 Start Bid Amount
            </td>
            <td>
                 <asp:TextBox ID="pbidamttxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                     ControlToValidate="pbidamttxt" ErrorMessage="Enter Start Bid Amount" 
                     ForeColor="Red" Width="170px"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 143px" >
                 Increment Amount</td>
            <td >
                 <asp:TextBox ID="pincrtxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 151px;">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="pincrtxt" ErrorMessage="Enter Increment Amount" 
                     ForeColor="Red" Width="180px"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 143px">
                 Product Status
            </td>
            <td>
                <asp:DropDownList ID="pstatusddl" runat="server" 
                    CssClass="input_field" Height="26px" 
                    Width="209px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem>Verified</asp:ListItem>
                    <asp:ListItem>Not Verified</asp:ListItem>
                    <asp:ListItem>DeActivate</asp:ListItem>
                </asp:DropDownList>
                 <br />
            </td>
            <td style="width: 151px">
                 &nbsp;</td>
        </tr>
      
        <tr>
            <td style="width: 143px">
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
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>


