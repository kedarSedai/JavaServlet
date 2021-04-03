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
    <title>Full-Stack Application</title>
    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../css/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="../css/navbar.css">
    <!-- Custom styles for this template -->
    <link href="../css/simple-sidebar.css" rel="stylesheet">
    <link href="../css/style1.css" rel="stylesheet">
    <%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
</head>
<body>
<div id="wrapper">
    <%@include file="../includes/navbar.jsp"%>
    <!-- Sidebar -->
    <%@include file="../includes/admin_sidebar.jsp"%>

    <div class="container">
        <div class="table-responsive">
            <table class="table">

                <tr>
                    <th>id</th>
                    <td>${user.id}</td>
                </tr>
                <tr>
                    <th>Full Name</th>
                    <td>${user.full_name}</td>
                </tr>
                <tr>
                    <th>Username</th>
                    <td>${user.username}</td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td>${user.password}</td>
                </tr>
                <tr>
                    <th>Role</th>
                    <td>${user.role}</td>
                </tr>
                <tr>
                    <td><a href="user?page=userEdit&id=${user.id}">Edit</a></td>
                    <td><a href="user?page=deleteUser&id=${user.id}">Delete</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>

<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>
</body>
</html>