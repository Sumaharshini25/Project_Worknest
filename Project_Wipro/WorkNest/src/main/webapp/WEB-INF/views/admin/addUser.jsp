<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Add User</title>
    <link rel="stylesheet" href="<c:url value='/assets/bootstrap.min.css'/>"/>
</head>
<body>
<div class="container mt-4">
    <h2>Add User</h2>
    <form action="<c:url value='/admin/users/save'/>" method="post">
        <input type="hidden" name="id" value="${user.id}"/>

        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" class="form-control" name="username" value="${user.username}" required/>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" class="form-control" name="password" value="${user.password}" required/>
        </div>

        <div class="mb-3">
            <label class="form-label">Role</label>
            <select class="form-select" name="role">
                <option value="USER" ${user.role == 'USER' ? 'selected' : ''}>USER</option>
                <option value="ADMIN" ${user.role == 'ADMIN' ? 'selected' : ''}>ADMIN</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Save User</button>
    </form>
</div>
</body>
</html>
