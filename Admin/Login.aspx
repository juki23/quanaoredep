<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name" style="margin-left: -70px;">LOGO</h1>
            </div>
            <h3>Welcome to Admin page</h3>
            <p>
                &nbsp;
               
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>Đăng nhập vào để nhìn thấy nhiều hơn.</p>
            <form class="m-t" role="form" runat="server">
                <div class="form-group">
                    <asp:TextBox ID="txtusername" runat="server" placeholder="Tên đăng nhập" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtpassword" runat="server" placeholder="Mật khẩu" CssClass="form-control" TextMode="Password" />
                </div>
                <div class="form-group">
                    <BotDetect:Captcha ID="SampleCaptcha" Visible="false" runat="server" CssClass="form-control-static" />
                    <asp:TextBox ID="CaptchaCodeTextBox" Visible="false" runat="server" CssClass="form-control" placeholder="Captcha" />
                </div>
                <asp:Button ID="btnLogin" OnClick="btnLogin_Click" Text="Đăng nhập" CssClass="btn btn-primary block full-width m-b" runat="server" />
                <a href="Forgotpassword.aspx"><small>Quên mật khẩu?</small></a>
                <p class="text-muted text-center" style="height: 50px;"><small></small></p>
            </form>
            <p class="m-t"><small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>
        </div>
    </div>
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
