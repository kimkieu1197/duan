<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="nguyenthikimkieu291097.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:Label ID="lblhoten" runat="server" Text="Họ tên:"></asp:Label>
        <asp:TextBox ID="txthoten" runat="server" style="margin-left: 34px" Width="120px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txthoten"></asp:RequiredFieldValidator>
        <br />
        <br />
        Cơ quan:<asp:TextBox ID="txtcoquan" runat="server" style="margin-left: 23px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvcoquan" runat="server" ErrorMessage="Nhập cơ quan" ControlToValidate="txtcoquan"></asp:RequiredFieldValidator>
        <br />
        <br />
        E-mail:<asp:TextBox ID="txtemail" runat="server" style="margin-left: 38px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="rvemail" runat="server" ErrorMessage="Nhập e-mail" ControlToValidate="txtemail"></asp:RegularExpressionValidator>
        <br />
        <br />
        Mật khẩu:<asp:TextBox ID="txtmatkhau" runat="server" style="margin-left: 19px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtmatkhau"></asp:RequiredFieldValidator>
        <br />
        <br />
        Nhập lại mật khẩu:<asp:TextBox ID="txtnhaplaimatkhau" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvnhaplaimatkhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2" ControlToValidate="txtnhaplaimatkhau"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="cmvmatkhau" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimatkhau"></asp:CompareValidator>
        <br />
        <br />
        Ngày check in:<asp:TextBox ID="txtngaychekin" runat="server" style="margin-left: 20px"></asp:TextBox>
        <asp:CompareValidator ID="cmvngaychekin" runat="server" ErrorMessage="Nhập định dạng ngày" ControlToValidate="txtngaychekin" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
        <br />
        <br />
        Số ngày ở:<asp:TextBox ID="txtsongayo" runat="server" style="margin-left: 46px"></asp:TextBox>
        <asp:CompareValidator ID="cmvsongayo" runat="server" ErrorMessage="Nhập định dạng ngày ở" ControlToValidate="txtsongayo" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <br />
        <br />
        Loại phòng:<asp:DropDownList ID="cbxphongdon" runat="server" style="margin-left: 38px">
            <asp:ListItem Value="1">Phòng đơn</asp:ListItem>
            <asp:ListItem Value="2">Phòng vip</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btndangky" runat="server" style="margin-left: 66px" Text="Đăng ký" Width="183px" OnClick="btndangky_Click" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblthongbao" runat="server" Text="thoong bao"></asp:Label>
        <asp:ValidationSummary ID="vstomtatloi" runat="server" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
