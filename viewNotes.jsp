<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View your notes</title>

<%@include file="/WEB-INF/resources/component/all_link.jsp" %>
</head>
<body style="background-color:#081b2b;">
<%@include file="/WEB-INF/resources/component/navbar.jsp" %>
<div class="container-fluid p-4">
	<div class="text-center text-white mb-5">
		<h2>Explore your Notes</h2>
		<c:if test="${not empty editmssg}">
			<p class="fs-3 fw-bold text-danger text-denter">${editmssg}</p>
			<c:remove var="editmssg"/>
		</c:if>
	</div>
	<div class="row">
	<c:forEach items="${list}" var="n">
		<div class="mh-100 col-md-4 offset-m-2 mb-2" style="height: 200px;">
			<div class="card">
				<div class="h-100 card-body">
					<div class="text-center">
						<img alt="" src="<c:url value="/resources/img/viewnotes.jpg"/>" width="120px" height="120px" >
					</div>
					<p class="fs-2 fw-bold">${n.title}</p>
					
					<p>Noted On:${n.date}</p>
					
					<div class="text-center">
						<a href="displayNotes?id=${n.id}" class="btn btn-warning">View Your Note</a>
						<a href="deleteNotes?id=${n.id}" class="btn btn-danger">Delete Your Note</a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>	
		
	</div>
</div>

</body>
</html>