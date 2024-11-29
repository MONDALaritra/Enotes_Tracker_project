<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add your notes</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp" %>
</head>
<body>

 <body style="background-color:#081b2b;">
<%@include file="/WEB-INF/resources/component/navbar.jsp" %>
	
	<div class="container mt-5 ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card bg-secondary">
					<div class="card-header text-center text-white">
						<h3>Add Your Notes <i class="fa-solid fa-pen-nib"></i></h3>
						<c:if test="${not empty notemssg}">
							<p class="fs-3 fw-bold text-warning">${notemssg}</p>
							<c:remove var="notemssg"/>
						</c:if>
					</div>
					
					<div class="card-body">
						<form action="saveNotes" method="post">
							<div class="mb-3">
								<label class="text-white ">Enter Title:</label>
								<input type="text" name="title"class="form-control bg-secondary text-white">
							</div>
							
							<div class="mb-3">
								<label class="text-white fs-20">Enter Description:</label>
								<textarea rows="4" cols="6" class="form-control bg-secondary text-white" name="description"></textarea>
							</div>
							
							
							<button class="btn btn-dark col-md-6 ">Save</button>
							
							<div class="card-footer text-center p-4 text-white">
								Click <a href="${pageContext.request.contextPath}/user/viewNotes" class="text-decoration-none">here</a> to see your notes.
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</body>
</html>