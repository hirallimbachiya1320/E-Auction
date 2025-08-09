<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2><span>Add Product</span></h2>
          <div class="clr"></div>
          
          <div class="post_content">
    <table style="width: 100%;">
    
    <tr>
            <td colspan="2">
                 &nbsp;</td>
            <td style="width: 164px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
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
            <td style="width: 164px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                 Sub Category</td>
            <td>
                <asp:DropDownList ID="subcatddl" runat="server" 
                    CssClass="input_field" DataSourceID="SqlDataSource2" 
                    DataTextField="SubCategoryName" DataValueField="SubCategoryId" Height="26px" 
                    Width="209px">
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
            <td style="width: 164px">
                &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 190px">
                 Product Id</td>
            <td>
                 <asp:TextBox ID="pidtxt" runat="server" CssClass="input_field"></asp:TextBox>
            </td>
            <td style="width: 164px">
                &nbsp;
                 </td>
        </tr>
         <tr>
            <td style="width: 190px">
                 Product Name 
            </td>
            <td>
                 <asp:TextBox ID="pnametxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 164px">
                &nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="pnametxt" ErrorMessage="Enter Product Name" ForeColor="Red" 
                    Width="160px"></asp:RequiredFieldValidator>
                 </td>
        </tr>
         <tr>
            <td style="width: 190px">
                 Product Description
            </td>
            <td>
                 <asp:TextBox ID="pdesctxt" runat="server" CssClass="input_field" Height="52px" 
                     Rows="5" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 164px">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="pdesctxt" ErrorMessage="Enter Product Description" 
                    ForeColor="Red" Width="185px"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 190px">
                 Product Image</td>
            <td>
                 <asp:FileUpload ID="pimagefu" runat="server" />
                 <br />
            </td>
            <td style="width: 164px">
                &nbsp;</td>
        </tr>
         <tr>
            <td style="width: 190px; height: 35px">
                 Start Date
            </td>
            <td style="height: 35px">
                 <asp:TextBox ID="psdatetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" 
                    ControlToValidate="psdatetxt" Display="Dynamic" 
                    ErrorMessage="eg. Jan-12-2020" ForeColor="Red" 
                    ValidationExpression="\d{1,2}(-)\w{3}(-)\d{4}" Font-Size="10pt"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 164px; height: 35px;">
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="psdatetxt" ErrorMessage="Enter Start Date" ForeColor="Red" 
                    Width="165px"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
         <tr>
            <td style="width: 190px">
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
            <td style="width: 164px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="pedatetxt" ErrorMessage="Enter End Date" ForeColor="Red" 
                     Width="165px"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 190px">
                 Start Bid Amount
            </td>
            <td>
                 <asp:TextBox ID="pbidamttxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 164px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                     ControlToValidate="pbidamttxt" ErrorMessage="Enter Start Bid Amount" 
                     ForeColor="Red" Width="170px"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 190px" >
                 Increment Amount</td>
            <td >
                 <asp:TextBox ID="pincrtxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 164px;">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                     ControlToValidate="pincrtxt" ErrorMessage="Enter Increment Amount" 
                     ForeColor="Red" Width="185px"></asp:RequiredFieldValidator>
             </td>
        </tr>
      
        <tr>
            <td style="width: 190px">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="addbtn" runat="server" Text="Add Product"  
                    CssClass="submit_btn" onclick="addbtn_Click" />
            </td>
            <td style="width: 164px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
            <td style="width: 164px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 164px">
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>

