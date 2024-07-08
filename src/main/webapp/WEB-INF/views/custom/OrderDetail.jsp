<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="../js/product.js"></script>
<script type="text/javascript" src="../js/cart.js"></script> 
</head>
<body>
<h1>주문 상세</h1>
<div>
	<input name="주문일시">
	<input name="주문번호">
</div>
<div>
	<c:forEach var="cart" items="${cart}">	
	<input type="text" name="price" value="${cart.price}" class="num" readonly="readonly">
	<input type="text" name="quantity" class="num" value="${cart.quantity}">
	<input type="text" name="totPrice" value="${cart.price * cart.quantity}" class="num" readonly="readonly">
	<br>
	</c:forEach>
</div>
<div>
	<input name="total" value="">
</div>
</body>
</html>