<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 196px;
        }
        .auto-style2 {
            width: 196px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 196px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 196px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 196px;
            height: 50px;
        }
        .auto-style9 {
            height: 50px;
        }
        .auto-style10 {
            width: 196px;
            height: 47px;
        }
        .auto-style11 {
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" BackColor="#99FF33" Text="ĐĂNG KÍ TÀI KHOẢN"></asp:Label>
        <br />
    <div>
    
    </div>
        <table style="width: 100%; height: 309px;">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbltendangnhap" runat="server" Text="Tên đăng nhập:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txttendangnhap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtendangnhap" runat="server" ControlToValidate="txtnhaplaimatkhau" ErrorMessage="Nhập vào tên đăng nhập"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblmatkhau" runat="server" Text="Mật khẩu:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvnhapvaomatkhau" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblnhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtnhaplaimatkhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvnhaplaimatkhau" runat="server" ControlToValidate="txtnhaplaimatkhau" ErrorMessage="Nhập lại mật khẩu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblhoten" runat="server" Text="Họ tên:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txthoten" runat="server" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ControlToValidate="txthoten" ErrorMessage="Nhập vào họ tên"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Nhập lại email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lbltb" runat="server" Text="[lbl-thongbao]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btndangki" runat="server" OnClick="btndangki_Click" Text="Đăng Kí" />
                    <asp:Label ID="lblsumit" runat="server" Text="Sumit"></asp:Label>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="Tên đăng nhập" />
                            <asp:BoundField HeaderText="Mật khẩu" />
                            <asp:BoundField HeaderText="Nhập lại mật khẩu" />
                            <asp:BoundField HeaderText="Họ tên" />
                            <asp:BoundField HeaderText="Email" />
                            <asp:BoundField />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
