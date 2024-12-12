<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="tr">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Student Management System</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
	<style>
		.table-container {
			background: #fff;
			border-radius: 8px;
			box-shadow: 0 0 15px rgba(0,0,0,0.1);
			padding: 20px;
			margin-top: 20px;
		}
		.page-header {
			background: #f8f9fa;
			padding: 20px 0;
			margin-bottom: 30px;
			border-bottom: 1px solid #dee2e6;
		}
		.action-buttons a {
			margin: 0 5px;
		}
		.success-alert {
			animation: fadeOut 5s forwards;
		}
		@keyframes fadeOut {
			0% { opacity: 1; }
			70% { opacity: 1; }
			100% { opacity: 0; }
		}
		.table-hover tbody tr:hover {
			background-color: #f5f5f5;
			transition: background-color 0.3s ease;
		}
		.btn-group-actions {
			white-space: nowrap;
		}
	</style>
</head>
<body class="bg-light">
<div class="page-header">
	<div class="container">
		<div class="d-flex justify-content-between align-items-center">
			<h1 class="h2 mb-0">Student Management System</h1>
			<a href="<c:url value='/new' />" class="btn btn-primary">
				<i class="fas fa-plus"></i> Add New Student
			</a>
		</div>
	</div>
</div>

<div class="container">
	<c:if test="${not empty success}">
		<div class="alert alert-success success-alert" role="alert">
			<i class="fas fa-check-circle"></i> ${success}
		</div>
	</c:if>

	<div class="table-container">
		<div class="table-responsive">
			<table class="table table-hover">
				<thead class="table-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Full Name</th>
					<th scope="col">Grade</th>
					<th scope="col" class="text-center">Actions</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${allstudents}" var="student">
					<tr>
						<td>${student.id}</td>
						<td>${student.firstName} ${student.lastName}</td>
						<td>${student.grade}</td>
						<td class="text-center btn-group-actions">
							<a href="<c:url value='/edit-${student.id}' />"
							   class="btn btn-sm btn-outline-primary">
								<i class="fas fa-edit"></i> Edit
							</a>
							<a href="<c:url value='/delete-${student.id}' />"
							   class="btn btn-sm btn-outline-danger"
							   onclick="return confirm('Are you sure you want to delete this student?');">
								<i class="fas fa-trash"></i> Delete
							</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>>