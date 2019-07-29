<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestbook.aspx.cs" Inherits="kimkieu123.gestbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblkk" runat="server" ForeColor="#FF3300" Text="GESTBOOK"></asp:Label>
        <br />
    <div>
    
        <asp:Label ID="lbltieude" runat="server" Text="Tiêu đề:"></asp:Label>
        <asp:TextBox ID="txttieude" runat="server" style="margin-left: 55px" Width="177px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblhoten" runat="server" Text="Họ tên:"></asp:Label>
        <asp:TextBox ID="txthoten" runat="server" Height="22px" style="margin-left: 58px" Width="179px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" style="margin-left: 67px" Width="176px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblnoidung" runat="server" Text="Nội dung:"></asp:Label>
        <asp:TextBox ID="txtnoidung" runat="server" style="margin-left: 42px" Width="183px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btngnd" runat="server" OnClick="btngnd_Click" style="margin-left: 286px" Text="Gởi nội dung" Width="279px" />
        <br />
        <asp:Button ID="btndscm" runat="server" Text="DANH SÁCH COMMENT" Width="923px" />
        <br />
        <span id="Entrycoment" runat="server"/>
        <br />
    
    </div>
    </form>
</body>
</html>
