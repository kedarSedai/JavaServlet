<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Full-Stack Application</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
<div id="wrapper">

    <!-- Sidebar -->
    <%@include file="../includes/sidebar.jsp" %>

    <div class="container">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th>id</th>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>password</th>
                    <th>Role</th>
                </tr>

                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.full_name}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td>${user.role}</td>
                        <td><a href="user?page=userDetails&id=${user.id}">View Details</a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
        <a href="user?page=newUsers"><h4>Add New User</h4></a>
    </div>

</div>

</body>
</html>
