<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WorkNest - Login</title>
</head>
<body>
<h2>Login</h2>

<form action="${pageContext.request.contextPath}/auth/login" method="post">
    <label>Username:</label>
    <input type="text" name="username" required><br><br>

    <label>Password:</label>
    <input type="password" name="password" required><br><br>

    <input type="submit" value="Login">
</form>

<p>Don’t have an account? 
   <a href="${pageContext.request.contextPath}/auth/register">Register</a>
</p>
</body>
</html>
