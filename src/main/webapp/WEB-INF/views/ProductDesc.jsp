<%@ include file="Header.jsp"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container">

	<table class="table">
		<tr>
			<td rowspan="9"><img
				src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="600" height="500" />
			</td>
		<tr>
			<td>Product Id</td>
			<td>${product.productId}</td>
		</tr>
		<tr>
			<td>Product Name</td>
			<td>${product.productName}</td>
		</tr>
		<tr>
			<td>Category Id</td>
			<td>${product.categoryId}</td>
		</tr>
		<tr>
			<td>Supplier Id</td>
			<td>${product.supplierId}</td>
		</tr>
		<tr>
			<td>Product Price</td>
			<td>${product.price}</td>
		</tr>
		<tr>
			<td>Stock</td>
			<td>${product.stock}</td>
		</tr>

		<form action="<c:url value="/addToCart/${product.productId}"/>"method="get">
			<tr>
				<td>Quantity</td>
				<td><select name="quantity" class="form-control btn-block">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>


				</select></td>
			<tr>
				<td colspan="2"><input type="submit" value="AddToCart"
					class="btn btn-danger btn-block" /></td>
		</form>
	</table>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>

