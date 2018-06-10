<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InsuranceApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <title>Home</title>

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
                <a class="nav-link" href="Login.aspx">Logout</a>
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

    <!-- Content -->
    <form runat="server">
    <div class="container">
        <div class="row my-4">
        <div class="col-lg-5">
            <h2>Welcome <%=username %></h2>
            <h3>Profile Informations</h3>
            <ul style="font-size:larger">
                <li><b>TC: <%=tcNo %> </b></li>
                <li><b>Age: <%=age %></b> </li>
                <li><b>Email: <%=email %> </b></li>
                <li><b>Health Risk: <%=healthRisk %> </b></li>
            </ul>
        </div>
        <div class="col-md-2"></div>
        <div style="margin-top:55px" class="col-lg-5">
            <h3>Policy Informations</h3>
            <ul>
                <li><b>Policy Risk Percentage: <%=tcNo %> % </b></li>
                <li><b>Total Family Members: <%=age %></b> </li>
                <li><b>Total Assets Number: <%=email %> </b></li>
            </ul>
            <asp:Button ID="colorBlue" CssClass="btn-primary btn-lg" runat="server" Text="Low Risk"/>
            <asp:Button ID="colorGreen" CssClass="btn-success btn-lg" runat="server" Text="Minimum Risk"/>
            <asp:Button ID="colorRed" CssClass="btn-danger btn-lg" runat="server" Text="Maximum Risk"/>
            <asp:Button ID="colorYellow" CssClass="btn-warning btn-lg" runat="server" Text="High Risk"/>
            <asp:Button ID="lightBlue" CssClass="btn-info btn-lg" runat="server" Text="Average Risk"/>
            <h2>Yearly Policy Price: <%=price %> $</h2>
            <p style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:large">Your Current Debt: <%=currentDebt %> $</p>
            <asp:TextBox type="number" runat="server" ID="payAmount"/>
            <asp:Button ID="payButton" CssClass="btn btn-success" runat="server" OnClick="pay" Text="Pay Debt"/>
        </div>
        
        </div>
        <div class="card text-white bg-secondary my-4 text-center">
        </div>
        <div class="row">
        <div class="col-md-4 mb-4">
            <div class="card h-100">
            <div class="card-body">
                <h2 class="card-title">Family Member</h2>
                <p class="card-text">You have <%=numberofFamily %> family member registered in our system. Each member of your family effects your insurance risk.</p>
            </div>
            <div class="card-footer">
                <a href="Family.aspx" class="btn btn-primary">More Info</a>
            </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card h-100">
            <div class="card-body">
                <h2 class="card-title">Cars</h2>
                <p class="card-text">You have <%=numberofCars %> cars registered in our system. Each cars that you registered effects your insurance risk.</p>
            </div>
            <div class="card-footer">
                <a href="Assets.aspx" class="btn btn-primary">More Info</a>
            </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card h-100">
            <div class="card-body">
                <h2 class="card-title">Houses</h2>
                <p class="card-text">You have <%=numberofHouses %> houses registered in our system. Each house that you register effects your policy risk. </p>
            </div>
            <div class="card-footer">
                <a href="Assets.aspx" class="btn btn-primary">More Info</a>
            </div>
            </div>
        </div>
        </div>
    </div>
    </form>
    <footer class="py-5 bg-dark">
        <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; CS350 - 2018</p>
        </div>
    </footer>

    </body>
</html>
