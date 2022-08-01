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
			
			<h2><c:out value="${newStudent ? 'Add a new student' : 'Update student'}" /></h2>
			
			<form action="/studentapp/students/save" method="post">
			  <div class="mb-3">
			    <input type="hidden" class="form-control" name="id" value="${student.id}">
			  </div>
			  <div class="mb-3">
			    <label for="name" class="form-label">Name</label>
			    <input type="text" class="form-control" id="name" name="name" value="${student.name}">
			  </div>
			  <div class="mb-3">
			    <label for="department" class="form-label">Department</label>
			    <input type="text" class="form-control" id="department" name="department" value="${student.department}">
			  </div>
			  <div class="mb-3">
			    <label for="country" class="form-label">Country</label>
			    <input type="text" class="form-control" id="country" name="country" value="${student.country}">
			  </div>
			  
			  <button type="submit" class="btn btn-primary">Submit</button>
			  
			  <a href="/studentapp/students/list" class="btn btn-danger">Cancel</a>
			</form>
		</div>
		
	</body>
</html>