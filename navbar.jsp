<!-- -Start navbar -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-regular fa-note-sticky"></i> MyNotes </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <c:if test="${empty userobj }">
        <li class="nav-item">
          <a class="nav-link active ms-5" aria-current="page" href="${pageContext.request.contextPath}/home"><i class="fa-solid fa-house"></i> Home</a>
        </li>
       </c:if> 
      <c:if test="${not empty userobj }">
        <li class="nav-item">
          <a class="nav-link active ms-5" href="${pageContext.request.contextPath}/user/addNotes"><i class="fa-solid fa-pen-nib"></i> Keep Notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active ms-5" href="${pageContext.request.contextPath}/user/viewNotes"><i class="fa-solid fa-book"></i> Your Notes</a>
        </li>
      </c:if>  
       </ul> 
       
       <form class="d-flex">
       <c:if test="${empty userobj }">
        <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-success me-5" type="submit">Login</a>
        <a href="${pageContext.request.contextPath}/register" class="btn btn-outline-success me-5" type="submit">SignUp</a>
       </c:if>
       <c:if test="${not empty userobj }">
        <a href="#" class="btn btn-dark me-5" type="submit"> <i class="fa-regular fa-user"></i> ${userobj.name}</a>
        <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger me-5" type="submit">Logout</a>
       </c:if>
      </form>
    </div>
  </div>	
</nav>