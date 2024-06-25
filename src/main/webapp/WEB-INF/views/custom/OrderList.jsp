<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<link rel="icon" href="data;,">
<!-- <link rel="stylesheet" type="text/css" href="./css/ProductList.css" /> -->
<link rel="stylesheet" type="text/css" href="./css/CartList.css" />
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script src="./js/product.js" defer="defer"></script>
<script src="./js/cart.js" defer="defer"></script>
</head>
<body>
	
<div id="productMgt">
	<h2 class="head-title">주문리스트</h2>
	<div class="totalitem" align="right">주문 건 : ${orderTot}</div>
	<table>
		<tr>
			<th class="pcol3">상품명</th>
			<th class="pcol3">주문수량</th>
			<th class="pcol3">단가</th>
			<th class="pcol5">결제금액</th>
			<th class="pcol5">결제일</th>
			<th class="pcol6">주문상태</th>

		</tr>
		<c:choose>
			<c:when test="${fn:length(orders)==0}">
				<tr>
					<th colspan="6" align="center">주문내역이 없습니다.</th>
				</tr>
			</c:when>
			<c:when test="${fn:length(orders)>0}">
				<c:forEach items="${orders}" var="order">
				<tr>
					<th class="pcol3">
						<input type="text" name="p_name" value="${order.p_name}"
	    					class="" readonly="readonly" 
	    					onclick="javascript:orderDetail(this)">
						<input type="hidden" name="p_no" value="${order.p_no}" readonly="readonly">
						<input type="hidden" name="o_no" value="${order.o_no}" readonly="readonly">
						<input type="hidden" name="mem_id" value="${order.mem_id}" readonly="readonly">
	    			</th>
	    			<th class="pcol3">
	    				<input type="text" name="quantity" value="${order.quantity}"
	    					class="num" readonly="readonly">
	    			</th>
	    			<th class="pcol3">
	    				<input type="text" name="price" value="${order.price}"
	    					class="" readonly="readonly">
	    			</th>
	    			<th class="pcol5">
	    				<input type="text" name="amount" value="${order.amount}"
	    					class="" readonly="readonly">
	    			</th>
	    			<th class="pcol5">
	    				<input type="text" name="o_regdate" value="${order.o_regdate}"
	    					class="" readonly="readonly">
	    			</th>
	    			<th class="pcol6">
	    				<c:choose>
	    					<c:when test="${order.state==1}">결재중</c:when>
	    					<c:when test="${order.state==2}">배송준비</c:when>
	    					<c:when test="${order.state==3}">배송중</c:when>
	    					<c:when test="${order.state==4}">배송완료</c:when>
	    					<c:when test="${order.state==5}">구매확정</c:when>
	    				</c:choose>
	    			</th>
				</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<form action="custOrderDetail" name="form1" method="post">
		<input type="hidden" name="p_no" value="">
		<input type="hidden" name=o_no value="">
		<input type="hidden" name="mem_id" value="">
	</form>
</div>
			
</body>
</html>