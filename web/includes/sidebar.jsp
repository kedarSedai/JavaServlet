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


<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
    <%--<a class="navbar-brand" href="#">FINAL PROJECT</a>--%>
    <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"--%>
            <%--aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
    <%--</button>--%>

    <%--<div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
        <%--<ul class="navbar-nav mr-auto">--%>
            <%--<li class="nav-item active">--%>
                <%--<a class="nav-link" href="#">DASHBOARD<span class="sr-only">(current)</span></a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">USER LIST</a>--%>
            <%--</li>--%>

            <%--<li class="nav-item">--%>
                <%--<a class="nav-link disabled" href="#">LOGOUT</a>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>

</body>
</html>
