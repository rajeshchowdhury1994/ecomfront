<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

#login-box {
	width: 400px;
	padding: 20px;
	margin: 100px auto;
	background:  #b3cccc;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div id="login-box">
		<h3>Login Credential</h3>

		<center>
			<form name='loginForm' action="<c:url value='loginpage' />"
				method="post">

				<table>
					<tr>

						<td>UserName:</td>
						<td><input type='text' name='username'></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type='password' name='password' /></td>
					</tr>
					<tr>
						<td colspan='2'>
						<center>
								<input name="submit" type="submit" value="SUBMIT" />
								
						</center>
						</td>
					</tr>
				</table>
				<tr><td><a href="signup"><h6>New User? Create New Account!!!</h6></a></td></tr>
			</form>
		</center>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>