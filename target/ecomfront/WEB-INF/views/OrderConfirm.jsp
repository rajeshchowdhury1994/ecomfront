<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@include file="Header.jsp" %>

<div class="container">
<form action="<c:url value="/payment"/>" method="post">	
	<table align="center" class="table">
		<tr>
			<td colspan="2"><center>Your Order</center></td>
		</tr>
		
		<tr bgcolor="sky blue">
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Quantity</td>
			<td>Price</td>
			<td>Total Price</td>
		</tr>
		<c:forEach items="${cartItems}" var="cartItem">
			<tr>
				<td>${cartItem.productId}</td>
				<td>${cartItem.productName}</td>
				<td>${cartItem.quantity}</td>
				<td>${cartItem.price}</td>
				<td>${cartItem.price*cartItem.quantity}</td>
				</form>
			</tr>

		</c:forEach>
		<tr bgcolor="sky blue">
			<td colspan="4">Total Amount</td>
			<td colspan="2">${totalPayment}/-</td>
		</tr>
		<tr><td colspan="5">
		<table width="100%">
		<tr bgcolor="cyan">
		<td>
    	<input type="radio" name="pmode" value="COD"/>Cash On Delivery
        <input type="radio" name="pmode" value="NB"/>Net Banking
        <input type="radio" name="pmode" value="CC"/>Credit Card
      </td>
            </table></td>
        </tr>
		<tr bgcolor="sky blue">
			<td colspan="3"><a href="<c:url value="/cart/" />"
				class="btn btn-danger btn-block">Edit Order</a></td>
			<td colspan="2"><input type="submit" value="Pay Now"
				class="btn btn-danger btn-block"></td>
		</tr>
	</table>