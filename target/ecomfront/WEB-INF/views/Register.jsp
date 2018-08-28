<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
input[type=text] {
    width: 90%;
    padding: 12px 20px;
    margin: 6px 0;
	box-sizing: border-box;
	border: none; 
    border-bottom: 2px solid skyblue;
    resize: vertical;
}
div.col-md-4 {
    background-color: white;
    width: 500px;
    border: 2px solid black;
    padding: 25px 40px;
    margin: 25px;
}
div.col-md-6 {
	padding: 50px;
}
div.col-md-6.h3 {
	font-size: 60px;
}
hr {
    border: 1px solid black;
    margin-bottom: 25px;
}
button {
    background-color: skyblue;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    color:blue;
    background-color: white;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: right;
  width: 30%;
}

</style>
<body>
<!-- Navigation -->
<%@include file ="Header.jsp" %>

<div class="container-fluid">
<div class="row">
   
	<div class="col-md-6 left-side" align="center">
        <header>
        <img src="/resources/images/ezkart.png"
     alt="Frog"/>
          <span>Register for the </span>
          <h3>Create Account<br>Make Deals</h3>
        </header>
      </div>  
	
	<div class="col-md-4">
	<h2 align="right">Sign Up</h2>
	<hr>
	<form:form modelAttribute="user" action="InsertUser" method="post">
	  
	  <label for="username">UserName</label>	  
	  <form:input path="userName" type="text" placeholder="Enter your username"/>
	  
	  <label for="psw">Password</label>	  
	  <form:input path="password" type="text" placeholder="Enter your password"/>
	  
	  <label for="cname">Customer Name</label>	  
	  <form:input path="customerName" type="text" placeholder="Enter your full name"/>
	  
	  <label for="role">Role(user/admin)</label>	  
	  <form:input path="role" type="text" placeholder="Enter your Role"/>
	  
	  <label for="email">Email ID</label>	  
	  <form:input path="emailId" type="text" placeholder="Enter your Email id"/>
	  
	  <label for="address">Address</label>	  
	  <form:input path="address" type="text" placeholder="Enter your Address"/>
	  
	  <hr>
	  <div class="footer">
        <button type="button" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
	</form:form>	
  	</div>
  	</div>
</div>
<!-- 	Footer -->
<%@include file = "Footer.jsp" %>
</body>
</html>