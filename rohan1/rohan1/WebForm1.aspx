<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="rohan1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 105px;
        }
        .auto-style2 {
            width: 86px;
        }
        .auto-style3 {
            width: 86px;
            height: 55px;
        }
        .auto-style4 {
            height: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Username </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click1" />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student2]"></asp:SqlDataSource>
    </form>
</body>
</html>
