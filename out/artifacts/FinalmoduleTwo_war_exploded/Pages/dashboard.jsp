<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Full-Stack Application</title>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<div id="wrapper">
    <%@include file="../includes/sidebar.jsp" %>
    <!-- Sidebar -->

    <div class="container">
        <h1>Welcome <%= session.getAttribute("full_name") %>
        </h1>
    </div>
</div>

</body>
</html>
