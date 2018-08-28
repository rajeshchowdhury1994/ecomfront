<%@ page language="java" contentType="text/html"%>
<%@ include file="Header.jsp" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<br/><br/><br/>
<form:form action= "InsertProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<table align="center">
     <tr bgcolor="cyan">
     <td colspan="2"><center>Product Form</center></td>
     </tr>
    <tr >
       <td> Product Name</td>
       <td><form:input path="productName" /></td>
    </tr>
        <tr bgcolor="pink">
       <td> Price</td>
       <td><form:input path="price" /></td>
    </tr>
        <tr >
       <td > Stock</td>
       <td><form:input path="stock" /></td>
    </tr>
    
    <tr bgcolor="pink">
       <td> Category</td>
       <td>
       <form:select path="categoryId" >
            <form:option value="0" label="---Select List--"/>
            <form:options  items="${categoryList}"/>
          </form:select> 
      </td>
    </tr>
    <tr >
       <td> Supplier</td>
       <td>
        <form:select path="supplierId" >
         <form:option value="0" label="---Select List--"/>
         <form:options  items="${supplierList}"/>
        </form:select> 
       </td>
    </tr>
    <tr>
       <td bgcolor="pink"> Product Description</td>
       <td><form:input path="productDesc" /></td>
    </tr>
    <tr>
	<td>Product Image</td>
	<td><form:input type="file" path="pimage"/></td>
</tr>
    <tr>
       <td colspan="2"><center><input type="submit" value ="Insert"/></center></td>
    </tr>
</table>
</form:form>

<font color="red"><h3>${errorInfo}</h3>
</font>

<table align="center">
    <tr bgcolor="sky blue">
         <td>Product ID</td>
         <td>Product Name</td>
         <td>Category ID</td>
         <td>Supplier ID</td>
         <td>Price</td>
         <td>Stock</td>
         <td>Product Desc</td>
         <td>Images</td>
         <td>Operation</td>
    </tr>
 <c:forEach items="${listProducts }" var="product" >
      <tr> 
        <td> ${product.productId}</td>
        <td> ${product.productName}</td>
        <td> ${product.categoryId}</td>
        <td> ${product.supplierId}</td>
        <td> ${product.price}</td>
        <td> ${product.stock}</td>
        <td> ${product.productDesc}</td>
        <td><img
						src="<c:url value="/resources/images/${product.productId}.jpg"/>"
						width="50" height="50" /></td>
        <td>
        <a href="<c:url value= '/editProduct/${product.productId}'/>">Edit</a>/
         <a href="<c:url value= '/deleteProduct/${product.productId}'/>">Delete</a>/
       </tr>
</c:forEach>
 </table>
