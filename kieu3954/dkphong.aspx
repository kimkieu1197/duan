<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dkphong.aspx.cs" Inherits="kieu3954.dkphong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbldkp" runat="server" Text="ĐĂNG KÝ PHÒNG"></asp:Label>
        <br />
        <asp:Label ID="lblhoten" runat="server" Text="Họ tên:"></asp:Label>
        <asp:TextBox ID="txthoten" runat="server" style="margin-left: 128px" Width="117px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ControlToValidate="txthoten" EnableTheming="True" ErrorMessage="Nhập họ tên"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblcoquan" runat="server" Text="Cơ quan:"></asp:Label>
        <asp:TextBox ID="txtcoquan" runat="server" style="margin-left: 116px" Width="122px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvcoquan" runat="server" ControlToValidate="txtcoquan" ErrorMessage="Nhập cơ quan"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" style="margin-left: 135px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Nhập địa chỉ email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblmatkhau" runat="server" Text="Mật khẩu:"></asp:Label>
        <asp:TextBox ID="txtmatkhau" runat="server" style="margin-left: 112px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Nhập mật khẩu"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Label ID="lblnhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
        <asp:TextBox ID="txtnhaplaimatkhau" runat="server" style="margin-left: 57px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvnlmk" runat="server" ControlToValidate="txtnhaplaimatkhau" ErrorMessage="Nhập lại mật khẩu lần 2"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="txtmkl2" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimatkhau"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="lblngaycheck" runat="server" Text="Ngày check in:"></asp:Label>
        <asp:TextBox ID="txtngaycheck" runat="server" style="margin-left: 80px"></asp:TextBox>
        <asp:CompareValidator ID="cmvngaycheck" runat="server" ErrorMessage="Nhập ngày check in" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtngaycheck"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="lblsongayo" runat="server" Text="Số ngày ở:"></asp:Label>
        <asp:TextBox ID="txtngayo" runat="server" OnTextChanged="TextBox7_TextChanged" style="margin-left: 106px"></asp:TextBox>
        <asp:CompareValidator ID="cmvsongayo" runat="server" ControlToValidate="txtngayo" ErrorMessage="Nhập số ngày ở" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="lblloaiphong" runat="server" Text="Loại phòng:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 99px" Width="124px">
            <asp:ListItem Value="1">Phòn đơn</asp:ListItem>
            <asp:ListItem Value="2">Phòng vip đơn</asp:ListItem>
            <asp:ListItem Value="3">Phòng vip đôi</asp:ListItem>
        </asp:DropDownList>
        <br />
    <div>
    
        <asp:Button ID="btndangky" runat="server" OnClick="Button1_Click" style="margin-left: 362px" Text="Đăng ký" />
        <br />
        <asp:Label ID="lblthongbao" runat="server" Text="[lbl-thongbao]"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vstomtatloi" runat="server" />
    
    </div>
    </form>
</body>
</html>
