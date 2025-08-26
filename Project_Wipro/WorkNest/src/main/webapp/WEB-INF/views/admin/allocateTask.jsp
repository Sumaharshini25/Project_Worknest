<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Allocate Task</title>
</head>
<body>
    <h2><c:choose>
            <c:when test="${task.id != null}">Edit Task</c:when>
            <c:otherwise>Allocate Task</c:otherwise>
        </c:choose>
    </h2>

    <form action="/worknest/admin/tasks/save" method="post">

        <!-- Hidden ID for edit -->
        <c:if test="${task.id != null}">
            <input type="hidden" name="id" value="${task.id}" />
        </c:if>

        <!-- Task Title -->
        <label for="title">Task Title</label>
        <input type="text" id="title" name="title" value="${task.title}" required /><br><br>

        <!-- Description -->
        <label for="description">Description</label>
        <textarea id="description" name="description" required>${task.description}</textarea><br><br>

        <!-- Start Date -->
        <label for="startDate">Start Date</label>
        <input type="date" id="startDate" name="startDate"
               value="<c:if test='${task.startDate != null}'>${task.startDate}</c:if>" required /><br><br>

        <!-- Due Date -->
        <label for="dueDate">Due Date</label>
        <input type="date" id="dueDate" name="dueDate"
               value="<c:if test='${task.dueDate != null}'>${task.dueDate}</c:if>" required /><br><br>

        <!-- Assign User -->
        <label for="assignedUserId">Assign User</label>
        <select id="assignedUserId" name="assignedUserId" required>
            <c:forEach var="user" items="${users}">
                <option value="${user.id}"
                        <c:if test="${task.user != null && task.user.id == user.id}">selected</c:if>>
                    ${user.username}
                </option>
            </c:forEach>
        </select><br><br>

        <button type="submit">
            <c:choose>
                <c:when test="${task.id != null}">Update</c:when>
                <c:otherwise>Allocate</c:otherwise>
            </c:choose>
        </button>
        <a href="/worknest/admin/dashboard">Cancel</a>
    </form>
</body>
</html>
