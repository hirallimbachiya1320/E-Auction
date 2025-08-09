<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Admin_Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><span>Sign Out</span></h2>
          
          <div class="post_content">
          <p style=" font: bold 14px/18px arial; color:#169CDA; text-decoration:none;text-align:justify; line-height:22px;"><b>Want to Sign Out? Click On Sign Out Button</b></p>
              <p style=" font: bold 14px/18px arial; color:#169CDA; text-decoration:none;text-align:justify; line-height:22px;">
                  <asp:ImageButton ID="ImageButton1" runat="server" 
                      ImageUrl="~/images/Signout111.png" onclick="ImageButton1_Click" Width="250px" />
              </p>
          
		  
	
          </div>
</asp:Content>



