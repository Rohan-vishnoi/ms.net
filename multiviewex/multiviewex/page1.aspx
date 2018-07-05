<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="multiviewex.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style4 {
            width: 136px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
</head>
<body style="height: 167px">
    <form id="form1" runat="server">
    <div style="height: 170px">
    
        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged1">
            <asp:View ID="View1" runat="server">
                Personal Info<br />
                <br />
                Name:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Next1" runat="server" OnClick="Next1_Click" Text="Next" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                Academic Details<br />
                <br />
                <br />
                10th Marks:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="previous" runat="server" OnClick="previous_Click" Text="previous" />
                &nbsp;<asp:Button ID="next2" runat="server" OnClick="Button2_Click" Text="summary" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                Summary<br />
                <asp:Button ID="views" runat="server" OnClick="views_Click" Text="view" />
                <br />
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="name" runat="server" Text="name"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="marks" runat="server" Text="marks"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5"></td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
