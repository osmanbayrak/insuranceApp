<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="InsuranceApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
            <li class="nav-item active">
                <a class="nav-link" href="Default.aspx">Home
                <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Login.aspx">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Family.aspx">Family</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Assets.aspx">Assets</a>
            </li>
            </ul>
        </div>
        </div>
    </nav>
    <form id="form1" runat="server">
    <div>
        <div style="margin:130px">
            <p>First Name:</p>
            <asp:TextBox ID="firstnameTextBox" Text="" runat="server" />
            <p>Last Name:</p>
            <asp:TextBox ID="lastnameTextBox" Text="" runat="server" />
            <p>Phone Number:</p>
            <asp:TextBox ID="PhoneNumberTextBox" Text="" runat="server" />
            <p>Email:</p>
            <asp:TextBox ID="EmailTextBox" Text="" runat="server" />
            <p>Password:</p>
            <asp:TextBox ID="passwordTextBox" Text="" runat="server" />
            <p>Birth Date:</p>
            <asp:TextBox ID="birthDate" type="number" runat="server"  />
            <p>Health Risk:</p>
            <asp:TextBox ID="healthRisk" type="number" runat="server"  />
            <p>TC:</p>
            <asp:TextBox ID="tcTextBox" type="number" runat="server"  />
            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="registerFunction"/>
        </div>
    </div>
    </form>
</body>
</html>
