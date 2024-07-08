<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet" href="/css/product.css"> 
<link type="text/css" rel="stylesheet" href="/css/productList.css"> 
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="./js/product.js"></script> 
<title>쇼핑몰</title>
</head>
<body>
  <div style="width:100%">

     <%-- <h3>상품목록</h3>
     <div style="text-align:right; margin-right:200px;">
       <button class="btn btn-secondary">상품수: ${pcnt}</button>
     </div> --%>
     <table>
     <div class="w3-row-padding w3-padding-16 w3-center" id="food">
     	<c:forEach var="product" items="${productList}">
		   <div class="w3-quarter text-center">
		     <img src="/upload/${product.image}" alt="Sandwich" style="width:100%; height: 18rem;">
		     <h3>
		     <input type="hidden" name="p_no" value="${product.p_no}" 
                     class="form-control-plaintext textBold alignCenter" readonly="readonly">
		     <input type="text" name="p_name" value=" ${product.p_name}" 
	          class="form-control-plaintext text-center textBold pDetail" readonly="readonly">
	         </h3>
		     <p>
		     	<input type="text" name="detail" class="form-control-plaintext text-center textBold pDetail" title="상품설명" value="${product.detail}" readonly="readonly"> 
		     </p>
		   </div>
	   </c:forEach>
	 </div>
     </table>
     
     <!-- 페이지  -->
     <div align="center">
     <c:if test="${pgVo.startPg>PBlock}">
	     <font color="4c5317">
	         <a href="/productList?curPg=${pgVo.startPg-PBlock}&curBl=${pgVo.curBl-1}">[이전]</a>
	     </font>
     </c:if>
     <c:forEach var="pgno" begin="${pgVo.startPg}" end="${pgVo.endPg}" step="1">
         <c:set scope="page" var="list" 
                  value="./productList?curPg=${pgno}&curBl=${pgVo.curBl}"/> 
         <a href="${list}" style=" text-decoration:none;">
          <c:choose>
              <c:when test="${pgVo.curPg==pgno}">
                <font color="4c5317" style="font-weight: bold;">[${pgno}]</font>
              </c:when>
              <c:otherwise>
               <font color="4c5317">[${pgno}]</font>
              </c:otherwise>
           </c:choose>
         </a>                  
    	</c:forEach>
      <c:if test="${pgVo.endPg<pgVo.pgCnt}">
             <font color="4c5317">
               <a href="./productList?curPg=${pgVo.startPg+PBlock}&curBl=${pgVo.curBl+1}">[다음]</a>
             </font>
       </c:if> 
     </div>
     <div style="margin-bottom: 15px;"></div>
     <!-- 페이지 끝 -->
     
     <%-- <table class="table table-hover text-center table-bordered">
       <thead>
         <tr>
            <th class = "pcol1 textBold alignCenter">상품번호</th>
		    <th class = "textBold alignCenter">상품명</th>
		    <th class = "pcol3 textBold alignCenter">상품가격</th>
		    <th class = "pcol4 textBold alignCenter">등록일</th>
		    <th class = "pcol5 textBold alignCenter">재고</th>
         </tr>
       </thead>
       <tbody>
        <c:choose>
          <c:when test="${fn:length(productList)==0}">
            <tr>
              <th colspan="5">등록된 상품이 없습니다.</th>
            </tr>
          </c:when>
          <c:when test="${fn:length(productList)>0}">
            <c:forEach var="product" items="${productList}">
             <tr>
                <th class = "pcol1">
                 <input type="text" name="p_no" value="${product.p_no}" 
                     class="form-control-plaintext textBold alignCenter" readonly="readonly">
                 </th>
			    <th class = "pcol2">
			     <input type="text" name="p_name" value=" ${product.p_name}" 
                     class="form-control-plaintext textBold pDetail" readonly="readonly">
                </th>
			    <th class = "pcol3" >
			     <input type="text" name="price" value="${product.price}" 
                     class="form-control-plaintext alignRight textBold num" readonly="readonly">
			   </th>
			    <th class = "pcol4">
			     <input type="text" name="pr_date" value=" ${product.pr_date}" 
                     class="form-control-plaintext textBold alignCenter" readonly="readonly">
			   </th>
			    <th class = "pcol5">
			     <input type="text" name="stock" value=" ${product.stock}" 
                     class="form-control-plaintext textBold alignRight num" readonly="readonly">
			    </th>
             </tr>
            </c:forEach>
          </c:when>
        </c:choose>
       </tbody>
     </table> --%>
  </div>
</body>
</html>
