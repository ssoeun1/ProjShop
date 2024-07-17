<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<link rel="stylesheet" type="text/css" href="./css/product.css" />
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/product.js"></script>
</head>
<body>
<div id="product" class="productDetail">
	<form action="cartProc?flag=add" name="form1" method="post">
		<div class="prd-Product_Body">
			<div class="Product-img">
				<a>
					<img class="proimg" alt="이미지" src="/upload/${product.image}">
					<input type="hidden" name="image" class="chk" title="상품명" value="${product.image}" readonly="readonly"> 
				</a>
			</div>
			<div class="Product-content">
				<header class="prd-ProductContent_Header">
					<div class="prd-ProductContent_Title">
						<h1>${product.p_name}</h1>	
					</div>
					<input type="hidden" name="p_no" title="상품명" value="${product.p_no}" readonly="readonly"> 
					<input type="hidden" name="stock" class="chk num" title="재고수량" value="${product.stock}" readonly="readonly"> 
					<input type="hidden" name="quantity" class="chk inNum" title="구매수량" value="1"> 

					<input type="hidden" name="price" class="chk inNum" title="구매수량" value="${product.price}">

					<div data-price-wrapper class="price prd-ProductContent_price">
						<span data-product-price data-money-format="${product.price}" class>
						${product.price}원
						</span>
					</div>
				</header>
				<p class="prd-ProductContent_Description fz-14_21">
				${product.detail}
				</p>
					<div class="prd-ProductContent_Buy">
						<div class="prd-DetailForm_Buttons">
							<button type="submit" name="add" class="prd-DetailForm_Button btn-Button btn-Button-primary btn-Button-fullWidth fz-13_18" data-ajaxadd-button="">
                 	 			<span data-ajaxadd-button-text="" class="product__actions-button-text">
								장바구니 담기
								</span>
                </button>
						</div>
					</div>
			</div>
		
		</div>
		
   		<%-- <table class="tableinfo">
   			<tr>
   				<td class="cols">
   				<div>
   					<a>
	   					<img class="proimg" alt="이미지" src="/upload/${product.image}" height="700" width="580">
	   					<input type="hidden" name="image" class="chk" title="상품명" value="${product.image}" readonly="readonly"> 
   					</a>
   				</div>
   				</td>
   				<td class="cols">
   					<h2 class="prohead">${product.p_name}</h2>
   					<table>
						<tr>
							<th class="pcol1-1">
								<input type="text" name="p_name" class="form-control-plaintext" title="상품명" value="${product.p_name}" readonly="readonly"> 
								<input type="hidden" name="p_no" title="상품명" value="${product.p_no}" readonly="readonly"> 
							</th>
							
			  			</tr>
						<tr>
							<th class="pcol1-1">재고수량</th>
							<th class="pcol2-1">
								<input type="text" name="stock" class="chk num" title="재고수량" value="${product.stock}" readonly="readonly"> 
							</th>
			  			</tr>
						<tr>
							<th class="pcol2-1">
								<input type="text" name="price" class="form-control-plaintext num" title="상품가격" value="${product.price}원" readonly="readonly"> 
							</th>
			  			</tr>
					<!-- 	<tr>
							<th class="pcol1-1">구매수량</th>
							<th class="pcol2-1">
								<input type="text" name="quantity" class="chk inNum" title="구매수량" value="1"> 
							</th>
			  			</tr> -->
						<tr>
							<th class="pcol3-1">
								<input type="text" name="detail" class="form-control-plaintext" title="상품설명" value="${product.detail}" readonly="readonly"> 
							</th>
			  			</tr>
				   	</table>
				   	<div class="btnArea">
				   		<button type="button" class="btn-second cartAdd">장바구니 담기</button>
				   		<button type="button" class="btn-second" onclick="javascript:location.href='/productList'"
				   		        style="margin-left: 10px;">상품목록</button>
				   	</div>
   				</td>
   			</tr>
   		</table> --%>
	</form>
	<%-- <div>
		<div>상품설명</div>
		<div>
		  <span class="border border-secondary-subtle">
		  갤럭시Z폴드 6의 경우, S펜 저장 슬롯이 있는 케이스와 투명 케이스가 적용된 디자인,
		  킥스탠드와 핸드그립이 적용된 케이스가 제공될 것으로 보인다. 유출된 케이스 사진에서 
		  전작과 달라진 갤럭시Z폴드 6의 화면 비율이 눈에 띈다.
		  삼성전자는 스마트폰 신제품 사전 예약 대상자 대상으로 공식 케이스를 무료로 제공하는 경우도 있으나, 
		  그렇지 않을 경우에는 50~80달러로 판매될 것으로 보인다고 나인투파이브구글이 전했다.
		  삼성전자는 다음달 10일 오후 3시(한국시간 오후 10시에 프랑스 파리에서 언팩 행사를 
		  열고 갤럭시Z플립•폴드6와 함께 ▲스마트워치 '갤럭시워치7 시리즈' ▲반지형 웨어러블 제품 
		  '갤럭시링’ ▲무선이어폰 ‘갤럭시버즈3 시리즈' 등을 공개할 예정이다.</span>
			<input class="form-control-plaintext num" type="text"
			name="detail" class="chk" title="상품설명" value="${product.detail}" readonly="readonly"> 
		</div>
	</div> --%>
</div>
</body>
</html>