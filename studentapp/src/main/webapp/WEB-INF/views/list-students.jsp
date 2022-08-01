<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
			<h1>Debate Event</h1>
			<hr />
			
			<h2>
				List of students
				<a href="/studentapp/students/new" class="btn btn-primary btn-sm float-end">Add a student</a>
			</h2>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Department</th>
						<th>Country</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${students}" var="student">
						<tr>
							<td><c:out value="${student.name}" /></td>
							<td><c:out value="${student.department}"/></td>
							<td><c:out value="${student.country}" /></td>
							<td>
								<a href="/studentapp/students/edit?id=${student.id}" class="btn btn-secondary btn-sm">Update</a>
								<a href="/studentapp/students/delete?id=${student.id}" class="btn btn-danger btn-sm">Delete</a>
							</td>
						</tr>	
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</body>
</html>