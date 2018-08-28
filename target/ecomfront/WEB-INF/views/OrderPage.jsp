<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EzKart/Order Page</title>
<style type="text/css">
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
/*     border: 1px solid #ddd; */
}

th, td {
    text-align: center;
    padding: 8px;
}
#grad1 {
    height: 50px;
    background: red; /* For browsers that do not support gradients */
    background: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,1)); /* Standard syntax (must be last) */
}
</style>
</head>
<body>
<%@include file="Header.jsp" %>
<div class="container">
<h1 id="grad1">Your Order</h1>
<div class="row my-4">
<div class="col-lg-4">

</div>
<div class="col-lg-8">
<form action="proceed" method="post">
<div style="overflow-x:auto;">
  <table class="table table-hover">
    <tr>
      <th>Product Name</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Total Price</th>
    </tr>
    
    <c:forEach items="${cartItems}" var="cartItem">
    <tr>
    <form class="form-horizontal" action="/updateCartItem/${cartItems.cartItemId}" method="get">
      <td>${cartItem.productName}</td>
      <td>${cartItem.price}/-</td>
      <td>${cartItem.quantity}</td>
      <td>${cartItem.price*cartItems.quantity}/-</td>
	</form>  
    </tr>
    </c:forEach>
    <tr>
    	<td>Total Payment</td>
    	<td colspan="3">${totalPayment}/-</td>
    </tr>
    <br>
    <tr>
    	<td>Select Your Mode Of Payment</td>
    	<td><input type="radio" name="pmode" value="COD"/>Cash On Delivery</td>
    	<td><input type="radio" name="pmode" value="NB"/>Net Banking</td>
    	<td><input type="radio" name="pmode" value="CC"/>Credit Card</td>
    	<td><input type="radio" name="pmode" value="DC"/>Debit Card</td>
    </tr>
    <tr>
    	<td colspan="2"><a href="<c:url value='cart'/>" class="btn btn-default btn-block">EditCart</a></td>
    	<td colspan="2"><input type="submit" value="PAY NOW" class="btn btn-info btn-block"/></a></td>
    </tr>
  </table>
  <br>
</div>
</form>
</div>
</div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>