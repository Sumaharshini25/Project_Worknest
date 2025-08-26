<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Manage Users</title>
    <link rel="stylesheet" href="<c:url value='/assets/bootstrap.min.css'/>"/>
</head>
<body>
<div class="container mt-4">
    <h2>Manage Users</h2>
    <a href="<c:url value='/admin/users/add'/>" class="btn btn-primary mb-3">Add New User</a>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Role</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.role}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
