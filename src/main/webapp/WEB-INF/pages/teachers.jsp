<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<%@include file="base.jsp"%>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<%-- <c:if test="${page =='add'}">
<title>Add TODO</title>
</c:if> --%>
<title><c:out value="${page }"></c:out></title>
</head>
<body>

	<div class="container mt-3">
		<h1 class="text-center">Welcome to the portal</h1>


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
						class="list-group-item list-group-item-action">Logout</a>
				</div>

			</div>
			<div class="col-md-10">

				<div id="stock">
					<c:if test="${pages=='teacher'}">
						<nav class="navbar navbar-light bg-light">
							<div class="form-inline">
								<input class="form-control mr-sm-2" type="search" name="search"
									id="searchstock" placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success my-2 my-sm-0" id="search"
									type="submit">Search</button>
							</div>
						</nav>


						<div id="stockvivek">
							<h1 class="text-center">


								All the Students of teacher <span><c:out
										value="${teachers}"></c:out></span>
							</h1>
							<div class="card">
								<c:forEach var="s" items="${students}">
									<div class="card-body">
										<table class="table table-hover">
											<thead>
												<tr>
													<th scope="col">Student ID</th>
													<th scope="col">Student Name</th>
													<th scope="col">Class Name</th>
													<th scope="col">Roll No</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<c:forEach var="stu" items="${s}">
														<td>${stu}</td>
													</c:forEach>
												</tr>
											</tbody>
										</table>

									</div>
								</c:forEach>
							</div>

						</div>
					</c:if>
				</div>

			</div>
		</div>
	</div>
</body>
</html>