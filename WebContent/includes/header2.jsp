<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />


<!-- Toast Begins -->
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<style></style>
<link rel="stylesheet" href="../css/bootstrap.min.css">

<script src="https://kit.fontawesome.com/a323b54415.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/_bootswatch.scss">
<title>title</title>
<style>
</style>
</head>

<body>

	<nav class="navbar navbar-expand-sm bg-faded navbar-light  shadow-sm">
		<a class="navbar-brand" href="#">LMS</a>
		<button class="navbar-toggler d-lg-none" type="button"
			data-toggle="collapse" data-target="#collapsibleNavId"
			aria-controls="collapsibleNavId" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavId">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<a href="home.jsp"><button type="button" class="btn btn-light ">Home</button></a>

				<%if (request.getSession().getAttribute("userStatus") != null){%>

				<%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           if(user.getType().endsWith("admin")){
      	  %>
				<a href="adm-page.jsp?pgprt=2"><button type="button"
						class="btn btn-light ">Course</button></a>
				<a href="adm-page.jsp?pgprt=3"><button type="button"
						class="btn btn-light ">Question</button></a>
				<a href="adm-page.jsp?pgprt=1"><button type="button"
						class="btn btn-light ">Accounts</button></a>
				<a href="adm-page.jsp?pgprt=0"><button type="button"
						class="btn btn-light ">Profile</button></a>
				<a href="controller.jsp?page=logout"><button type="button"
						class="btn btn-light ">Logout</button></a>

				<%}else{%>
				<a href="std-page.jsp?pgprt=1"><button type="button"
						class="btn btn-light ">Exams</button></a>
				<a href="std-page.jsp?pgprt=2"><button type="button"
						class="btn btn-light ">Reasults</button></a>
				<a href="std-page.jsp?pgprt=0"><button type="button"
						class="btn btn-light ">Profile</button></a>
				<a href="controller.jsp?page=logout"><button type="button"
						class="btn btn-light ">Logout</button></a>

				<%}%>
				<%}else{%><a name="login" class="btn btn-outline-success mx-2"
					href="index.jsp" role="button"> Login Menu</a>
				<%};%>
			</ul>
		</div>
	</nav>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
<br>
<br>


<!-- Nav-Bar Ends -->