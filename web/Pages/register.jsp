<%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 3/31/2021
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
    <form action="user?page=register" method="post">
        <input type="hidden" name="page" value="REGISTER"></input>
        <div class="form-group">
            <label for="UserName">UserName</label>
            <input type="text" name="username" class="form-control" id="UserName" placeholder="Enter your UserName ">
        </div>
        <div class="form-group">
            <label for="Full Name">Full Name:</label>
            <input type="text" name="full_name" class="form-control" id="Full Name" placeholder="Enter your Full Name">
        </div>
        <div class="form-group">
            <label for="role">Role:</label>
            <input type="text" name="role" class="form-control" id="role" placeholder="Enter your Role">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your Password">
        </div>
        <input type="submit" class="btn btn-success" value="Rgister">
        <a href="user?page=index">Already a Member GO TO Login </a>
    </form>
</div>
</body>
</html>