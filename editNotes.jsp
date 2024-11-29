<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Your Notes</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp" %>
</head>
<body style="background-color:#081b2b;">
	<%@include file="/WEB-INF/resources/component/navbar.jsp" %>
	<div class="container mt-5 ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card bg-light">
					<div class="card-header text-center text-success">
						<h3>Edit Your Notes <i class="fa-solid fa-pen-nib"></i></h3>
					</div>
					
					<div class="card-body">
						<form action="updateNotes" method="post">
							<div class="mb-3">
								<label>Enter Title:</label>
								<input type="text" name="title" class="form-control bg-light" value="${notes.title}">
							</div>
							
							<div class="mb-3">
								<label>Enter Description:</label>
								<textarea rows="12" cols="6" class="form-control bg-light" name="description" >${notes.description}</textarea>
							</div>
							
							<input type="hidden" name="id" value="${notes.id}">
							<button class="btn btn-dark col-md-6 ">Update</button>
							
							<div class="card-footer text-center p-4">
								Click <a href="${pageContext.request.contextPath}/user/viewNotes" class="text-decoration-none">here</a> to see your notes.
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>