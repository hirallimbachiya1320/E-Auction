<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="UpdateAccount.aspx.cs" Inherits="Customer_UpdateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2><span>Update</span> Account</h2>
          <div class="clr"></div>
          
          <div class="post_content">
    <table style="width: 100%;" >
   
    <tr>
            <td colspan="2">
                 &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">
                 Customer Id</td>
            <td>
                 <asp:TextBox ID="cidtxt" runat="server" CssClass="input_field" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">
                 First Name
            </td>
            <td>
                 <asp:TextBox ID="fnametxt" runat="server" CssClass="input_field" 
                     ReadOnly="True"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 Last Name
            </td>
            <td>
                 <asp:TextBox ID="lnametxt" runat="server" CssClass="input_field" 
                     ReadOnly="True"></asp:TextBox>
                 <br />
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 Address
            </td>
            <td>
                 <asp:TextBox ID="addresstxt" runat="server" CssClass="input_field" Height="52px" 
                     Rows="5" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 151px">
               
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="addresstxt" Display="Dynamic" ErrorMessage="Enter address" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 City
            </td>
            <td>
                 <asp:TextBox ID="citytxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                     ControlToValidate="citytxt" Display="Dynamic" 
                     ErrorMessage="Only alphabets are allowed" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                     ControlToValidate="citytxt" Display="Dynamic" ErrorMessage="Enter city" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 State
            </td>
            <td>
                 <asp:TextBox ID="statetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                     ControlToValidate="statetxt" Display="Dynamic" 
                     ErrorMessage="Only alphabets are allowed" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                     ControlToValidate="statetxt" Display="Dynamic" ErrorMessage="Enter state" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px" >
                 Country&nbsp;</td>
            <td >
                 <asp:TextBox ID="contxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                     ControlToValidate="contxt" Display="Dynamic" 
                     ErrorMessage="Only alphabets are allowed" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px;">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                     ControlToValidate="contxt" Display="Dynamic" ErrorMessage="Enter country" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 Contact No.
            </td>
            <td>
                 <asp:TextBox ID="contacttxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                     ControlToValidate="contacttxt" Display="Dynamic" 
                     ErrorMessage="eg. 999-9999999" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="\d{3,6}(-)\d{7}"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                     ControlToValidate="contacttxt" Display="Dynamic" ErrorMessage="Enter contact no." 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 Mobile No.
            </td>
            <td>
                 <asp:TextBox ID="mobiletxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                     ControlToValidate="mobiletxt" Display="Dynamic" 
                     ErrorMessage="eg. 99999-99999" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="\d{5}(-)\d{5}"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                     ControlToValidate="mobiletxt" Display="Dynamic" ErrorMessage="Enter phone" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 Email Id
            </td>
            <td>
                 <asp:TextBox ID="emailtxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                     ControlToValidate="emailtxt" Display="Dynamic" 
                     ErrorMessage="Enter valid email id" Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                     ControlToValidate="emailtxt" Display="Dynamic" ErrorMessage="Enter email id" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="updatebtn" runat="server" Text="Update"  
                    CssClass="submit_btn" onclick="updatebtn_Click" />
            </td>
            <td style="width: 151px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 183px">
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>



