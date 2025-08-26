<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="<c:url value='/assets/bootstrap.min.css'/>"/>
</head>
<body>
<div class="container mt-4">
    <h2>Admin Dashboard</h2>

    <div class="row">
        <div class="col-md-3">
            <div class="card text-bg-warning mb-3">
                <div class="card-body">
                    <h5 class="card-title">Pending</h5>
                    <p class="card-text">${pending.size()} tasks</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-bg-info mb-3">
                <div class="card-body">
                    <h5 class="card-title">In Progress</h5>
                    <p class="card-text">${inProgress.size()} tasks</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-bg-success mb-3">
                <div class="card-body">
                    <h5 class="card-title">Completed</h5>
                    <p class="card-text">${completed.size()} tasks</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-bg-danger mb-3">
                <div class="card-body">
                    <h5 class="card-title">Delayed</h5>
                    <p class="card-text">${delayed.size()} tasks</p>
                </div>
            </div>
        </div>
    </div>

    <h4 class="mt-4">Quick Actions</h4>
    <a href="<c:url value='/admin/users'/>" class="btn btn-primary">Manage Users</a>
    <a href="<c:url value='/admin/tasks/assign'/>" class="btn btn-success">Assign Task</a>
    <a href="<c:url value='/admin/comments'/>" class="btn btn-secondary">View Comments</a>
</div>
</body>
</html>
