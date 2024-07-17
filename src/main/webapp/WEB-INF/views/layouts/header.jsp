<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="../css/layouts.css" />

<body class="theme03" data-ez-theme="theme03" monica-locale="ko" monica-version="5.8.0" monica-id=
      "ofpnmcalabcbjgholdjcjblkibolbppb">
  <div class="large-container">  
    <div class="container">    
	<header id="header" class="layout03" data-ez-layout="layout03" data-ez="contents-14kbc7w-1">
	  <div class="inner">
	   <div class="toparea display_pc_only"> 
	     <div class="toparea_shoppinginfo">  
	       <div data-ez-group="shopping-info" data-ez-role="list">
	       </div>
	     </div>
	     <div class="toparea_state" data-ez-group="top-util-menu" data-ez-role="list">
	       <a href="/join">회원가입  &nbsp;|</a>
	       <a href="/login">로그인</a>
	       
         </div>
       </div>  
	   <div class="top_nav_box" id="top_nav_box"> 
	    <div class="top_adjust">
	     <div class="xans-element- xans-layout xans-layout-logotop top_logo ">
		   <a href="/">
		     <img class="logo" src="../images/logo-header-background.png">
		   </a>
		 </div>
		 <div data-ez-module="menu-main/1" data-ez-mode="manual">
		   <div class="xans-element- xans-layout xans-layout-category top_category">
		     <ul>
			   <li class="dropdown">
			     <a href="/productList" style="color: #00716a; font-weight: bold;
			        font-family: Poppins, Noto Sans KR, Arial, sans-serif !important;
			        text-decoration: none; font-size: 20px;">갤럭시</a>
			     <ul class="sub_cate01 dropdown-content">
			       <li class="noChild">
			         <a href="/productList">갤럭시 버전</a>
			       </li>
			       <li class="noChild">
			         <a href="/category/Hard/29/">갤럭시 버전</a>
			       </li>
			       <li class="noChild">
			         <a href="/category/Hard/29/">갤럭시 버전</a>
			       </li>
			       <li class="noChild">
			         <a href="/category/Hard/29/">갤럭시 버전</a>
			       </li>
			     </ul>
			   </li> 
			   <li class="dropdown">
			     <a href="/productList" style="color: #00716a; font-weight: bold;
			        font-family: Poppins, Noto Sans KR, Arial, sans-serif !important;
			        text-decoration: none; font-size: 20px;">아이폰</a>
			      <ul class="sub_cate01 dropdown-content">
			       <li class="noChild">
			         <a href="/category/Hard/28/">아이폰 버전</a>
			       </li>
			       <li class="noChild">
			         <a href="/category/Hard/28/">아이폰 버전</a>
			       </li>
			       <li class="noChild">
			         <a href="/category/Hard/28/">아이폰 버전</a>
			       </li>
			       <li class="noChild">
			         <a href="/category/Hard/28/">아이폰 버전</a>
			       </li>
			     </ul>
			   </li>
			 </ul>
		   </div>
		 </div>
		 </div>
		 <div class="top_mypage">
			  <!--  <a href="javascript:;" class="eSearch"> -->
			    <div class="header__search-container hide-phone" id="searchContainer">

					<form name="search" class="search" role="search" action="search?bucket=1" method="get">
						<div class="input-placeholder input-placeholder--search">
						<label class="search__label search__floating-label screenreader" for="searchInput">Search</label>
						<div class="search__suggested-text js-search-suggested-text screenreader"></div>
						<input class="input search__input" id="searchInput-headerSearchDesktop" type="search" role="combobox" 
						aria-controls="autocompleteItems" aria-owns="autocompleteItems" placeholder="Search" name="text">
						</div>
						<button class="search__input-button js-search btn-icon" 
							id="searchMenuBtn" type="button" title="Search">
							<img class="search__icon icon icon--search" src="../images/search2.svg">
							<span class="screenreader">Search</span>
						</button>
					</form>
				</div>

				
		
			   <!-- </a> -->
			   <div class="dropdown">
				   <a href="/info">
				      <svg xmins="http://www.w3.org/2000/svg" width="24;" height="24" fill="none"
				           viewBox="0 0 24 24" class="icon" role="img">
				         <circle cx="11.5" cy="6.5" r="3.75" stroke="#000" stroke-width="1.5"></circle>  
				         <path stroke="#000" d="M1.78 21.25c.382-4.758 4.364-8.5 9.22-8.5h1c4.856 0 8.838 3.742 9.22 8.5H1.78z">
				         </path>    
				      </svg>
				   </a>
				   <div class="dropdown-content">
				   	<c:choose>
		               <c:when test="${ssKey!=null and ssKey.m_role=='admin'}">
							<a href="/admin/info"><li class="--nav-item dropdown">ADMINPAGE</li></a>
							<a href="/memberFIX"><li class="--nav-item dropdown">MemberFIX</li></a>
							<a href="/orderFIX"><li class="--nav-item dropdown">OrderFIX</li></a>
							<a href="/productFIX"><li class="--nav-item dropdown">ProductFIX</li></a>
							<a href="/noticeFIX"><li class="--nav-item dropdown">NoticeFIX</li></a>
							<a href="/logoutProc"><li class="--nav-item dropdown">Logout</li></a>	
						</c:when>
				        <c:when test="${ssKey!=null and ssKey.m_role=='mem'}">
							<a href="/"><li class="--nav-item dropdown">Home</li></a>
							<a href="/cartlist"><li class="--nav-item dropdown">Cart</li></a>
							<a href="/orderList"><li class="--nav-item dropdown">Order</li></a>
							<a href="/info"><li class="--nav-item dropdown">MyPage</li></a>
							<a href="/notice"><li class="--nav-item dropdown">Notice</li></a>
							<a href="/logoutProc"><li class="--nav-item dropdown">Logout</li></a>
						</c:when>
					 	<%-- <c:otherwise>
					 		<a href="/join">Join</a>
	       					<a href="/login">Login</a>
					 	</c:otherwise> --%>
					 </c:choose>
					 
		            </div>
			    </div>
			    <div class="header__cart-btn-wrapper">   	 
				   <a class="header__cart-btn btn btn-icon" href="/cartlist" aria-label="0 item(s) in your bag">
				     <img class="cart-icon icon" src="../images/cart2.svg">
				     
				     <!-- <span class="count displaynone EC-Layout_Basket-count-display">
				       <span class="EC-Layout-Basket-count">0</span>
				     </span> -->
				   </a>
			    </div>
			</div>
			<div class="top_sidebar">
			  <a href="javascript:;" class="eNavFold">
			    <i aria-hidden="true" class="icon icoNav"></i>
			  </a>	
	        </div>
		 </div>
      </div>
    </header>
   
      
    </div>
  </div> 

</body>
