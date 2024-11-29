<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp page</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp" %>
</head>
<body style="background-color:#081b2b;">
<%@include file="/WEB-INF/resources/component/navbar.jsp" %>
	
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Register Yourself</h3>
						<c:if test="${not empty mssg}">
							<p class="fs-3 fw-bold text-success">${mssg}</p>
							<c:remove var="mssg"/>
						</c:if>
						
					</div>
					
					<div class="card-body">
						<form action="registerUser" method="post">
							<div class="mb-3">
								<label>Enter Full Name</label>
								<input type="text" name="name"class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Email Address</label>
								<input type="email" name="email" class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Profession</label>
								<input type="text" name="profession" class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Password</label>
								<input type="password" name="password" class="form-control">
							</div>
							
							<button class="btn btn-dark col-md-6 l-3">Register</button>
							
							<div class="card-footer text-center p-4">
								Already have an account then <a href="login" class="text-decoration-none">Login</a> yourself.
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>