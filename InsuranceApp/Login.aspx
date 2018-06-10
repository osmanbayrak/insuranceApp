<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InsuranceApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <link href="css/small-business.css" rel="stylesheet"/>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
        <a class="navbar-brand" href="#">Insurance App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="Register.aspx">Register</a>
            </li>
            </ul>
        </div>
        </div>
    </nav>
    <h2>Welcome to Insurance App. Please login first. If you don't have an account please <a href="Register.aspx">register</a></h2>
    <form id="form1" runat="server">
        <div class="border-dark col-md-6" style="margin:100px; border:solid;width:70%; border-color:aliceblue;border-radius:25px">
            <div style="margin-top:30px"></div>
            <b style="padding-top:50px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" for="EmailTextBox" class="form-group">Email:</b>
            <asp:TextBox ID="EmailTextBox" CssClass="form-group form-control" Text="" runat="server" />
            <b style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" for="passwordTextBox" class="form-group" >Password:</b>
            <asp:TextBox CssClass="form-group form-control" ID="passwordTextBox" Text="" runat="server" />
            <asp:Button ID="loginButton" CssClass="btn btn-primary" BorderStyle="Solid" Text="LOGIN" runat="server" OnClick="loginFunction"/>
            <div style="margin-bottom:20px"></div>
        </div>
    </form>
</body>
</html>
