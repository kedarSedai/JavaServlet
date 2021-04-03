<%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 4/3/2021
  Time: 12:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SideBar</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>


<div id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li>
            <a href="user?page=home">Dashboard</a>
        </li>
        <li>
            <a href="user?page=listUser">Users</a>
        </li>

        <li>
            <a href="user?page=logout">Logout</a>
        </li>

    </ul>
</div>

</body>
</html>
