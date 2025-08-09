<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="PlaceBid.aspx.cs" Inherits="Customer_PlaceBid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Place Bid</h2>
          <div class="clr"></div>
          
          <div class="post_content">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
        </asp:Timer>
    <table style="width: 100%;" border="0">
    
    <tr>
            <td colspan="2">
                 &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 Product Id
            </td>
            <td bgcolor="#CCEBF9">
                 <asp:Label ID="pidlbl" runat="server"></asp:Label>
                 <br />
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 Product Name
            </td>
            <td bgcolor="#CCEBF9">
                 <asp:Label ID="pnamelbl" runat="server"></asp:Label>
                 <br />
            </td>
            <td style="width: 151px">
                &nbsp;
                 </td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 Product Description
            </td>
            <td bgcolor="#CCEBF9">
                 <asp:Label ID="pdesclbl" runat="server"></asp:Label>
            </td>
            <td style="width: 151px">
                &nbsp;
            </td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 Product Image</td>
            <td bgcolor="#CCEBF9">
                 <asp:Image ID="pimg" runat="server" Height="250px" Width="250px" />
                 <br />
            </td>
            <td style="width: 151px">
                Total Bidders:<br />
                <br />
                <asp:Label ID="bidderslbl" runat="server"></asp:Label>
                <br />
                <br />
                Highest Bid:<br />
                <br />
                <asp:Label ID="highestbidlbl" runat="server"></asp:Label>
             </td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 Start Date
            </td>
            <td bgcolor="#CCEBF9">
                 <asp:Label ID="psdatelbl" runat="server"></asp:Label>
            </td>
            <td style="width: 151px">
               
            </td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 End Date
            </td>
            <td bgcolor="#CCEBF9">
                 <asp:Label ID="pedatelbl" runat="server"></asp:Label>
                 <br />
            </td>
            <td style="width: 151px">
                 &nbsp;</td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px">
                 Start Bid Amount
            </td>
            <td bgcolor="#CCEBF9">
                 <asp:Label ID="psbidlbl" runat="server"></asp:Label>
                 <br />
            </td>
            <td style="width: 151px">
                 &nbsp;</td>
        </tr>
         <tr>
             <td bgcolor="#CCEBF9" style="width: 176px">
                 Increment Amount</td>
             <td bgcolor="#CCEBF9">
                 <asp:Label ID="pincrlbl" runat="server"></asp:Label>
             </td>
             <td style="width: 151px">
                 &nbsp;</td>
        </tr>
         <tr>
            <td bgcolor="#CCEBF9" style="width: 176px" >
                 Time Left To Bid</td>
            <td bgcolor="#CCEBF9" >
           
                
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" 
                    ForeColor="#FF3300"></asp:Label>
              
            </td>
            <td style="width: 151px;">
                 &nbsp;</td>
        </tr>
      </table>
         </ContentTemplate>
        </asp:UpdatePanel>  
         <table style="width: 100%;" border="0"> 
        <tr>
            <td bgcolor="#CCEBF9">
                Your Bid Amount</td>
            <td bgcolor="#CCEBF9">
                <asp:TextBox ID="yourbidtxt" runat="server" CssClass="input_field" 
                    AutoPostBack="True" ontextchanged="yourbidtxt_TextChanged"></asp:TextBox>
            </td>
            <td style="width: 151px;">
                &nbsp;</td>
        </tr>
      
        <tr>
            <td style="width: 176px">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="addbtn" runat="server" Text="Place Bid"  
                    CssClass="submit_btn" onclick="addbtn_Click" />
            </td>
            <td style="width: 151px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 176px">
                &nbsp;</td>
            <td>
                <asp:Label ID="msglbl" runat="server"></asp:Label>
            </td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 176px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 151px">
                &nbsp;</td>
        </tr>
    </table>
         </ContentTemplate>
        </asp:UpdatePanel>       

                
    </div>
</asp:Content>
