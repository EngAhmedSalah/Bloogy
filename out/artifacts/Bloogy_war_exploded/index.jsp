<%--
  Created by IntelliJ IDEA.
  User: ahmed
  Date: ٣١‏/٨‏/٢٠٢٠
  Time: ٢:٠٦ ص
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog and Discuss-Bloogy</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous"/>
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
    <div class="container">
        <a href="/index.jsp" class="navbar-brand">
            <img src="images/logo.png" width="40px">
            Bloogy
        </a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarToggler">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarToggler">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="" class="nav-link">Explore</a></li>
                <li class="nav-item"><a href="" class="nav-link">Create</a></li>
                <li class="nav-item"><a href="" class="nav-link">Share</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href=""><img src="images/001-france.png" alt="france" title="FR">FR</a>
                        <a class="dropdown-item" href=""><img src="images/002-spain.png" alt="spanish" title="ES">ES</a>
                        <a class="dropdown-item" href=""><img src="images/003-united-states.png" alt="English"
                                                              title="EN">EN</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="modal-dialog text-center">
    <div class="col-sm-12 main-section">
        <div class="modal-content">
            <div class="col-12 user-img">
                <img src="images/002-user-1.png" alt="user" width="100" height="100">
            </div>
            <div class="col-12 form-input justify-content-center">
                <form action="CreateAccount" method="post">
                    <div class="row">
                        <div class="form-group col-6" id="firstName">
                            <input type="text" class="form-control" placeholder="First Name" name="firstName">
                        </div>
                        <div class="form-group col-6">
                            <input type="text" class="form-control" placeholder="Last Name" name="lastName">
                        </div>
                    </div>
                    <div class="form-group" id="email">
                        <input type="email" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="form-group" id="password">
                        <input type="password" class="form-control" placeholder="Password" name="password">
                    </div>
                    <div class="form-group" id="password">
                        <input type="password" class="form-control" placeholder="Confirm Password" name="confirmPassword">
                    </div>
                    <div class="form-group" id="date">
                        <input type="date" class="form-control" name="dataOfBirth">
                        <small class="text-light">Choose your date of birth</small>
                    </div>
                    <button type="submit" class="btn btn-light">Register</button>
                </form>
            </div>
            <div>
                <label for="login" class="text-light">already have account ?
                    <button id="login" class="btn btn-danger" data-toggle="modal" data-target="#loginModal">Login
                    </button>
                </label>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="text-light">Login</h5>
                <button class="close text-light" data-dismiss="modal">×</button>
            </div>
            <div class="modal-body">
                <div class="row"><input type="text" class="form-control m-2" placeholder="Username or Email"></div>
                <div class="row"><input type="password" class="form-control m-2" placeholder="Password"></div>
                <div class="row">
                    <div class="col-6"><label class="" for=""><a class="" href="">forget password ?</a></label></div>
                    <div class="col-6"><input type="checkbox" value="remember me" id="rememberMe"><label
                            for="rememberMe" class="text-light ml-2"> remember me</label></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-light m-2">Login</button>
                <button class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<footer class="bg-dark">
    <span class="text-light">all right reserver Bloogy &copy;<%=new java.util.GregorianCalendar().getWeekYear() %></span>
</footer>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js"
        integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J"
        crossorigin="anonymous"></script>
</body>
</html>

</body>
</html>
