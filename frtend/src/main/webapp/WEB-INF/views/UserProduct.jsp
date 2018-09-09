<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>
<body>
<jsp:include page="ClientHeader.jsp"></jsp:include>


<table cellspacing="2" align="center" >
<tr>
	<td>Product ID</td>&nbsp
	<td>Product Name</td>&nbsp
	<td>Product Description</td>&nbsp
	<td>Product Stock</td>&nbsp
	<td>Product Price</td>&nbsp
	<td>CatName</td>&nbsp
	<td>SupId</td> &nbsp
	<td>Add to Cart</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.supplierId}</td>
<!-- 		<td><span class="glyphicon glyphicon-plus"></span></td>
 -->		<td>
		<a href="<c:url value="cart/"/>"><span class="glyphicon glyphicon-shopping-cart"></span></a>
		</td>
	</tr>
	
</c:forEach>

</table>

</body>
</html>