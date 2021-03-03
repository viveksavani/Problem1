<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<%-- <c:if test="${page =='add'}">
<title>Add TODO</title>
</c:if> --%>
<title><c:out value="${page }"></c:out></title>
</head>
<body>

	<div class="container mt-3">
		<h1 class="text-center">Welcome to the Portal</h1>


		<c:if test="${not empty msg}">

			<div class="alert alert-success">
				<b><c:out value="${msg}"></c:out></b>
			</div>
		</c:if>


		<div class="row mt-5">

			<div class="col-md-2">

				<div class="list-group">
					<a href="#" class="list-group-item list-group-item-action active">Menu</a>
					<a href='<c:url value='/loginteacher'/>'
						class="list-group-item list-group-item-action">Teacher Login</a> <a
						href='<c:url value='/home'/>'
						class="list-group-item list-group-item-action">Student Login</a>
				</div>

			</div>
			<div class="col-md-10">
				<c:if test="${page=='home'}">

				</c:if>

				<c:if test="${page=='loginteacher'}">
					<h1 class="text-center">Teacher Login</h1>
					<br>
					<form:form action="loginprocess" method="post" modelAttribute="teacher">
						<div class="form-group">
							<form:input path="username" cssClass="form-control"
								placeholder="Enter Your Username" />
						</div>

						<div class="form-group">
							<form:input path="password" cssClass="form-control"
								placeholder="Enter your Password" />
						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-outline-success ">Login</button>
						</div>

					</form:form>
				</c:if>
			</div>
		</div>

	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>