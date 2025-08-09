<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem Text="Product" Value="Product">
                    <asp:MenuItem Text="Add " Value="Add "></asp:MenuItem>
                    <asp:MenuItem Text="Edit" Value="Edit"></asp:MenuItem>
                    <asp:MenuItem Text="View" Value="View"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Logout" Value="Logout"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
