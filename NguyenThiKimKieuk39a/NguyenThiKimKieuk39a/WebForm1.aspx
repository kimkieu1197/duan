<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NguyenThiKimKieuk39a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            width: 485px;
            height: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    
            <asp:LinkButton ID="lnku" runat="server">Upload tập tin</asp:LinkButton>
            <asp:LinkButton ID="lnkx" runat="server">Xem tập tin</asp:LinkButton>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="205px"></asp:TextBox>
            <asp:Button ID="btnb" runat="server" Text="Browse" />
            <div>
    
                <br />
                <asp:Button ID="btnup" runat="server" style="margin-left: 46px" Text="Upload" Width="127px" />
    
    </div>
            <br />
            <br />
            <br />
    
    </div>
    </form>
</body>
</html>
