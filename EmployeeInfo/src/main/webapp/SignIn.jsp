<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="jumbotron">
<img src="img/employee.png">
<h1>Employee Login System:</h1>
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-blue">
<ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">Sign up</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="SignIn.jsp">Sign in</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Show data</a>
    </li>
  </ul>
 
  </nav>
<div class="form-group">
<form action="LoginControll" method="get">
<label for="user">
Employee Id:
</label><input class="form-control" name="id" type="number" placeholder="please enter employee id" id="pass" autocomplete="off">
<br>
<button class="btn btn-primary" type="submit" id="bu">Log in</button>
</form>
</div>
</div>
</body>
</html>