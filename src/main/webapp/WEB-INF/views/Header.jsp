<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>EzKart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#upperLabel {
	height: 30px;
	background: blue; /* For browsers that do not support gradients */
	background: linear-gradient(to right, rgba(0, 128, 128, 0),
		rgba(0, 128, 128, 1)); /* Standard syntax (must be last) */
}
}
</style>

</head>
<body>


	<div id="upperlabel" class="container-fluid">
		<label> EzKart:::<i>The Best You Can Get:::<span class="glyphicon glyphicon-shopping-cart"></span></i>
		</label>
	</div>
	<div class="container">
		<nav id="upperlabel" class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="index">EzKart<span class="glyphicon glyphicon-shopping-cart"></span></a>
				</div>
				<c:if test="${!sessionScope.loggedIn }">
					<ul class="nav navbar-nav">
						<li><a href="home">Home</a></li>
						<li><a href="about">About</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="Login">Login</a></li>
						<li><a href="signup">SignUp</a></li>

					</ul>
					
				</c:if>
				<c:if test="${sessionScope.loggedIn }">
					<c:if test="${sessionScope.role=='Admin'}">
						<ul class="nav navbar-nav">
							<li><a href="home"><font color="white">Home</font></a></li>
							<li><a href="supplier"><font color="white">Supplier</font></a></li>
							<li><a href="category"><font color="white">Category</font></a></li>
							<li><a href="product"><font color="white">Product</font></a></li>
						</ul>
					</c:if>
				</c:if>
				<c:if test="${sessionScope.role=='user'}">
					<ul class="nav navbar-nav">
						<li><a href="home"><font color="white">Home</font></a></li></ul>
						<ul class="nav navbar-nav navbar-right">
						<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span> </a></li>
					</ul>
				</c:if>


				<div class="nav navbar-nav navbar-right">
					<c:if test="${sessionScope.loggedIn}">
							<font color="white" face="calibri" size="2">Hello! ${username}
						</font>
						</br>
						<a href="/ecomfront/logout"><font color="white" face="clabiri"
							size="2">Logout</font></a>
					</c:if>
				</div>
			</div>
		</nav>
	</div>
<%@include file="Footer.jsp" %>
</body>
</html>