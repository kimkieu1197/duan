<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Đăng nhập.aspx.cs" Inherits="WebApplication1.Đăng_nhập" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:100%;">
            <tr>
                <td class="auto-style1">ĐĂNG NHẬP&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Tendangnhap</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txttendangnhap" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Matkhau</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnDangnhap" runat="server" OnClick="btnDangnhap_Click" Text="Đăng nhập" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblThongbao" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
    </div>
    </form>
</body>
</html>
