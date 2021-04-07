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

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div id="wrapper">

    <%@include file="../includes/sidebar.jsp" %>

    <div class="container">
        <div class="table-responsive">
            <table class="table">

                <tr>
                    <th>id</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Full Name</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Username</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td></td>
                </tr>
                <tr>
                    <th>Role</th>
                    <td></td>
                </tr>
                <tr>
                    <td><a href="#">Edit</a></td>
                    <td><a href="#">Delete</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>

</body>
</html>