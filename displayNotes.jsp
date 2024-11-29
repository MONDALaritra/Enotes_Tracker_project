<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Your Note</title>
<%@include file="/WEB-INF/resources/component/all_link.jsp" %>
</head>
<body style="background-color:#081b2b;">
<%@include file="/WEB-INF/resources/component/navbar.jsp" %>
	<div style="width:700px; margin-left:28%; background-color:white; padding:20px;margin-top:3%;border-radius:10px;">
		<div class="text-center">
			<img alt="" src="<c:url value="/resources/img/viewnotes.jpg"/>" width="120px" height="120px" >
		</div>
		<p class="fs-2 fw-bold text-center">${notes.title}</p>
		<p class="text-center fs-5">${notes.description}</p>		
		<p class="text-info">Noted On: ${notes.date}</p>
		
		<div class="text-center">
			<a href="editNotes?id=${notes.id}" class="btn btn-warning">Edit Your Note</a>
			<a href="viewNotes" class="btn btn-danger">Explore Your Notes</a>
		</div>
	</div>
	
</body>
</html>