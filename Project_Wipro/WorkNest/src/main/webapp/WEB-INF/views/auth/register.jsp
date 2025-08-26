<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WorkNest - Register</title>
</head>
<body>
<h2>Register</h2>

<form action="${pageContext.request.contextPath}/auth/register" method="post">
    <label>Username:</label>
    <input type="text" name="username" required><br><br>

    <label>Password:</label>
    <input type="password" name="password" required><br><br>

    <label>Email:</label>
    <input type="email" name="email" required><br><br>

    <input type="submit" value="Register">
</form>

<p>Already have an account? 
   <a href="${pageContext.request.contextPath}/auth/login">Login</a>
</p>
</body>
</html>
