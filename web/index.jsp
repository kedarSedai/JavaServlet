<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Full-Stack Application</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <form action="user" method="post">
        <input type="hidden" name="page" value="LOGIN"></input>
        <div class="form-group">
            <label for="UserName">UserName</label>
            <input type="text" name="username" class="form-control" id="UserName" placeholder="Enter your UserName ">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your Password">
        </div>

        <input type="submit" class="btn btn-success" value="Login">
        <a href="user?page=newUsers">Not a Member yet? Register</a>
    </form>
</div>
</body>
</html>
