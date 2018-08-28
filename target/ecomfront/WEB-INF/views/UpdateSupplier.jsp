<%@ page language="java" contentType="text/html"%>
<%@ include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h3 align="center">Supplier Page</h3>

<form action= "<c:url value="/updateSupplier" />" method="post">
  <table align="center">
  <tr bgcolor="sky blue"><td colspan="2"><center>Edit Supplier</td></tr>
  <tr>
      <td>Supplier Id</td>
      <td><input type="text" readonly name="supid" id="supid" value="${supplierInfo.supplierId}"/></td>
  </tr>
   <tr bgcolor="skyblue">
      <td>Supplier Name</td>
      <td><textarea rows="catdesc" name="supname" id="supname" value="${supplierInfo.supplierId}" ></textarea>
      </td>
   </tr>
   <tr bgcolor="skyblue">
      <td>Supplier Addr</td>
      <td><textarea rows="supaddr" name="supaddr" id="supaddr" "${supplierInfo.supplierId}" ></textarea>
      </td>
   </tr>
    <tr>
      <td colspan="2">
      <center><input type="submit"  value="Update"/></center>
     
      </tr>
     </table>
</form>
<table align="center">
    <tr bgcolor="sky blue">
         <td>Supplier ID</td>
         <td>Supplier Name</td>
         <td>Supplier Addr</td>
         <td>Operation</td>
    </tr>
 <c:forEach items="${supplierList}" var="supplier" >
      <tr> 
        <td> ${supplier.supplierId}</td>
        <td>${supplier.supplierName}</td>
        <td>${supplier.supplierAddr}</td>
        <td>
        <a href="<c:url value= '/editSupplier/${supplier.supplierId}'/>">Edit</a>/
         <a href="<c:url value= '/deleteSupplier/${supplier.supplierId}'/>">Delete</a>/
       </tr>
</c:forEach>
 </table>
</body>
</html>