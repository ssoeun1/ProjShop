<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USER INFO</title>
<script type="text/javascript" src="../js/member.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<link rel="stylesheet" type="text/css" href="../css/signup.css" />
</head>
<body>
<form action="" name="form1" method="post">
<div id="join">		
	<h2>회원정보</h2>
	  <table class="signup-main">
		<colgroup>
		  <col style="width:220px";>
		  <col style="width:auto";>
		</colgroup>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 아이디</th>
			<th class="col2">
			<div class="input-container">
				<input type="text" name="mem_id" id="idchk" 
				title="ID" class="chk" value="${mvo.mem_id}" readonly="readonly">
			</div>
			</th>
		</tr>
		<c:if test="${ssKey.m_role=='mem'}">
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 패스워드</th>
			<th class="col2">
			<input type="password" name="m_passwd" id="check1" 
				title="password" class="chk" value="${mvo.m_passwd}" readonly="readonly">
			</th>
		</tr>
		</c:if>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 이름</th>
			<th class="col2"><input type="text" name="m_name" 
				title="이름" class="chk" value="${mvo.m_name}" readonly="readonly">
			</th>
		</tr>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 이메일</th>
			<th class="col2"><input type="text" name="m_email" class="chk"
				value="${mvo.m_email}" readonly="readonly">
				
			</th>
		</tr>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 전화번호</th>
			<th class="col2"><input type="text" name="m_phone"  
				title="전화번호" class="chk" value="${mvo.m_phone}" readonly="readonly">
			</th>
		</tr>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 우편번호</th>
			<th class="col2"><input type="text" name="zipcode" id="sample6_postcode"
				readonly="readonly" title="우편번호" 
				class="chk" value="${mvo.zipcode}">
			</th>
		</tr>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 주소</th>
			<th class="col2">
				<input type="text" name="address" 
				class="chk" 
				readonly="readonly"
				title="우편번호 검색" value="${mvo.address}">
				<br>
				<input type="text" name="address2" value="${mvo.address2}" readonly="readonly">
				<input type="hidden" id="sample6_extraAddress" >
			</th>
		</tr>
		<tr>
			<th class="col1"><img src="/images/blue_dot.gif"> 직업</th>
			<th class="col2">
				<select name="m_job" class="chk selector">
					 <option value="">선택하시오.</option>
		             <option value="회사원">회사원</option>
					 <option value="기술사">기술사</option>
					 <option value="연구전문직">연구전문직</option>
					 <option value="학생">학생</option>
					 <option value="교수">교수</option>
					 <option value="일반자영업">일반자영업</option>
					 <option value="공무원">공무원</option>
					 <option value="의료인">의료인</option>
					 <option value="전문직">전문직(법률,회계)</option>
					 <option value="종교,언론,예술인">종교.언론/예술인</option>
					 <option value="농,축,수산,광업인">농/축/수산/광업인</option>
					 <option value="주부">주부</option>
					 <option value="무직">무직</option>
					 <option value="기타">기타</option>
				</select>
				<script type="text/javascript">
					$(function(){
						$('select[name="m_job"]').val('${mvo.m_job}')
					})		
				</script>
			</th>
			<th>&nbsp;</th>
		</tr>
		
		<c:if test="${ssKey.m_role=='mem'}">
		<tr>
			<td colspan="3" style="padding-top: 20px; text-align: center;">
				<button type="button" name="memUpdate" class="btnBack submit2">정보 수정</button>
				<button type="button" name="memDelete" class="btnJoin submit22">회원 탈퇴</button>
			</td>
		</tr>
		</c:if>
		<c:if test="${ssKey.m_role=='admin'}">
		<tr>
			<td colspan="3" style="padding-top: 20px; text-align: center;">
				<button type="button" class="btnJoin" onclick="location.href='/memberFIX'">멤버 목록</button>
			</td>
		</tr>
		</c:if>
	</table>
</div>
</form>
</body>
</html>