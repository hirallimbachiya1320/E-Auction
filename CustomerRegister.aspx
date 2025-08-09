<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegister.aspx.cs" Inherits="CustomerRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2><span>Customer </span>Registration</h2>
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
                 &nbsp; First Name
            </td>
            <td>
                 <asp:TextBox ID="fnametxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="fnametxt" Display="Dynamic" ErrorMessage="Only Alphabets" 
                    Font-Size="10pt" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                &nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fnametxt" Display="Dynamic" ErrorMessage="Enter first name" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 &nbsp; Last Name
            </td>
            <td>
                 <asp:TextBox ID="lnametxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" 
                    ControlToValidate="lnametxt" Display="Dynamic" ErrorMessage="Only Alphabets" 
                    Font-Size="10pt" ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                &nbsp;
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="lnametxt" Display="Dynamic" ErrorMessage="Enter last name" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 &nbsp;
                 Gender
            </td>
            <td>
                <asp:RadioButton ID="mrd" runat="server" Text="Male" 
                    CssClass="input_field" GroupName="gender" />
                <asp:RadioButton ID="frd" runat="server" CssClass="input_field" 
                    GroupName="gender" Text="Female" />
            </td>
            <td style="width: 151px">
                &nbsp;
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 &nbsp; Birthdate</td>
            <td>
                 <asp:TextBox ID="bdatetxt" runat="server" CssClass="input_field"></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" 
                    ControlToValidate="bdatetxt" Display="Dynamic" 
                    ErrorMessage="eg. 12-Jan-2020" ForeColor="Red" 
                    ValidationExpression="\d{1,2}(-)\w{3}(-)\d{4}" Font-Size="10pt"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="bdatetxt" Display="Dynamic" ErrorMessage="Enter birth date" 
                    Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="width: 183px">
                 &nbsp;
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
                 &nbsp;
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
                 &nbsp;
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
                 &nbsp; Country&nbsp;</td>
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
                 &nbsp;&nbsp;Contact No.
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
                 &nbsp;
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
                 &nbsp;
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
            <td style="width: 183px" >
                 &nbsp;
                 Desired Username</td>
            <td>
                 <asp:TextBox ID="unametxt" runat="server" CssClass="input_field" ></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" 
                    ControlToValidate="unametxt" Display="Dynamic" 
                    ErrorMessage="Only alphabets, digits and underscore. Min 5 characters" 
                    Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                     ControlToValidate="unametxt" Display="Dynamic" ErrorMessage="Enter user name" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 183px" >
                 &nbsp;
                 Desired Password</td>
            <td >
                 <asp:TextBox ID="passtxt" runat="server" CssClass="input_field" 
                     TextMode="Password" ></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" 
                    ControlToValidate="passtxt" Display="Dynamic" 
                    ErrorMessage="Only alphabets, digits and underscore. Min 5 characters" 
                    Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                     ControlToValidate="passtxt" Display="Dynamic" ErrorMessage="Enter password" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td style="width: 183px" >
                 &nbsp;
                 Confirm Password</td>
            <td >
                 <asp:TextBox ID="cpasstxt" runat="server" CssClass="input_field" 
                     TextMode="Password" ></asp:TextBox>
                 <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" 
                    ControlToValidate="cpasstxt" Display="Dynamic" 
                    ErrorMessage="Only alphabets, digits and underscore. Min 5 characters" 
                    Font-Size="10pt" ForeColor="Red" 
                     ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
                 <br />
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                     ControlToCompare="passtxt" ControlToValidate="cpasstxt" Display="Dynamic" 
                     ErrorMessage="Passwords do not match" Font-Size="10pt" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                     ControlToValidate="cpasstxt" Display="Dynamic" ErrorMessage="Confirm password" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td style="width: 183px" >
                 &nbsp; Security Question</td>
            <td >
                 <asp:DropDownList ID="squeddl" runat="server" AppendDataBoundItems="True" 
                     CssClass="input_field" Height="26px" 
                     Width="320px" DataSourceID="SqlDataSource4" DataTextField="securityque" 
                     DataValueField="securityid">
                     <asp:ListItem Value="0">Select</asp:ListItem>
                 </asp:DropDownList>
                 <br />
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                     ControlToValidate="squeddl" Display="Dynamic" ErrorMessage="Select security question" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td style="width: 183px" >
                 &nbsp; Security Answer</td>
            <td >
                 <asp:TextBox ID="sanswertxt" runat="server" CssClass="input_field" 
                     Width="312px" ></asp:TextBox>
                 <br />
            </td>
            <td style="width: 151px">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                     ControlToValidate="sanswertxt" Display="Dynamic" ErrorMessage="Enter security answer" 
                     Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td style="width: 183px">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="registerbtn" runat="server" Text="Register"  
                    CssClass="submit_btn" onclick="registerbtn_Click" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Securityt]"></asp:SqlDataSource>
            </td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
    </table>
               
    </div>
</asp:Content>


