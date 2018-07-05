<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Rohan.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; font-weight: 700; font-size: xx-large">
    
        Login Form</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User Namae</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Student] WHERE [username] = @original_username AND [password] = @original_password" InsertCommand="INSERT INTO [Student] ([username], [password]) VALUES (@username, @password)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Student] SET [password] = @password WHERE [username] = @original_username AND [password] = @original_password">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
