<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Tasks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>My Tasks</h2>
    <table class="table table-bordered table-striped mt-4">
        <thead class="table-dark">
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Start Date</th>
            <th>Due Date</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="t" items="${tasks}">
            <tr>
                <td>${t.title}</td>
                <td>${t.description}</td>
                <td>${t.startDate}</td>
                <td>${t.dueDate}</td>
                <td>
                    <c:choose>
                        <c:when test="${t.status == 'COMPLETED'}">
                            <span class="badge bg-success">Completed ✓</span>
                        </c:when>
                        <c:when test="${t.status == 'IN_PROGRESS'}">
                            <span class="badge bg-primary">In Progress</span>
                        </c:when>
                        <c:when test="${t.status == 'PENDING'}">
                            <span class="badge bg-warning">Pending</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge bg-danger">Delayed</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <a href="/user/tasks/update/${t.id}/IN_PROGRESS" class="btn btn-primary btn-sm">In Progress</a>
                    <a href="/user/tasks/update/${t.id}/COMPLETED" class="btn btn-success btn-sm">Complete</a>
                    <a href="/user/tasks/comment/${t.id}" class="btn btn-info btn-sm">Comment</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
