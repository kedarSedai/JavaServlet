<%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 4/2/2021
  Time: 5:58 AM
  To change this template use File | Settings | File Templates.
--%>
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
        <h1>Admin Registration Form</h1>
        <form action="user?page=editUser" method="post">
            <input type="hidden" name="id" value="${user.id}">
            <h3>Step 1 :</h3>
            <div class="form-w3step1">
                <input type="text" name="full_name" value="${user.full_name}" placeholder="Enter full name">
                <input type="text" name="role" value="${user.role}" placeholder="Enter role">
            </div>
            <h3>Step 2 :</h3>
            <div class="form-w3step1 w3ls-formrow">
                <input type="text" name="username" value="${user.username}" placeholder="Enter a username">
                <input type="password" name="password" value="${user.password}" placeholder="Enter a password">
            </div>
            <input type="submit" value="Update User" name="submit">
            <input type="reset" value="Reset" name="reset">
        </form>
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
