<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link rel="stylesheet" type="text/css" href="css/signup.css" />
</head>
<body>
<div class="BigConatiner">
		<c:import url="../header.jsp" />
        <div class="container">
        	<div class="AsideSign">
		        <aside>
					<c:import url="../Aside.jsp"/>
				</aside>
        	</div>
			<div class="MainCont">
	            <div id="contents">
					<c:import url="Register.jsp" />
				</div>
			</div>
        </div>
    </div>


<c:import url="../footer.jsp"/>
</body>
</html>