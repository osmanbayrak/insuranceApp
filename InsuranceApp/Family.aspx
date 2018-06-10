<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Family.aspx.cs" Inherits="InsuranceApp.Family" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Family</title>
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
                <a class="nav-link" href="Register.aspx">Register</a>
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
    <div>
        <table class="table table-responsive">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Health Risk</th>
                    <th>TC No</th>
                    <th>Relationship</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=id %></td>
                    <td><%=name %></td>
                    <td><%=age %></td>
                    <td><%=healthRisk %></td>
                    <td><%=tcNo %></td>
                    <td><%=relationship %></td>
                </tr>
            </tbody>
        </table>
    
    </div>
</body>
</html>
