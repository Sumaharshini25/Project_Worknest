<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Task Comments</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Comments</h2>
    <table class="table table-striped mt-4">
        <thead class="table-dark">
        <tr>
            <th>Task</th>
            <th>User</th>
            <th>Comment</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${comments}">
            <tr>
                <td>${c.task.title}</td>
                <td>${c.user.name}</td>
                <td>${c.content}</td> <!-- Fixed closing tag -->
            </tr>
        </c:forEach> <!-- Properly close c:forEach -->
        </tbody>
    </table>
</div>

</body>
</html>
