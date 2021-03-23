
<!DOCTYPE html>
<html>
<head>
<title></title>
<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
	<jsp:include page="./includes/header2.jsp" />
	<div class="container jumbotron">
		<div class="row mx-auto">
			<div class="col-lg-6 mx-auto">
				<h3 class="text-center mb-2">
					<i class="fas fa-sign-in-alt fa-3x">Login</i>
				</h3>
				<form method='post' action="controller.jsp">
					<input type="hidden" name="page" value="login">
					<div class="row">
						<div class="col-lg-12">
							<label>Username</label> <input type="text" name="username"
								class="form-control" placeholder="User Name" required="required">
						</div>
						<br>
						<div class="col-lg-12">
							<label>Password</label> <input type="password" name="password"
								class="form-control" placeholder="Password" required="required">
						</div>
						<%
								if (request.getSession().getAttribute("userStatus") != null) {
						
								if (request.getSession().getAttribute("userStatus").equals("-1")) {
								
							%>
						<script>
								alert("username or password is incorrect");
							</script>
						<%
 	}
 }
 %>
						<div class="col-lg-12">
							<label for=""></label>
							<button type="submit" name="login"
								class="btn-primary form-control">Login</button>
						</div>
					</div>
				</form>
				<p class="lead mt-4">
					Don't have an Account? <a href="register.html">Signup</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>