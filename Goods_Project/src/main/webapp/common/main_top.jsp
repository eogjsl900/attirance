
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<title>Insert title here</title>


  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
  
  <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/css/bootstrap.min.css">
  <!-- Lightbox.min css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/lightbox2/dist/css/lightbox.min.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick-theme.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom_index.css">

  <!-- Colors -->
  <!-- <link rel="stylesheet" type="text/css" href="css/colors/green.css" title="green">
  <link rel="stylesheet" type="text/css" href="css/colors/red.css" title="light-red">
  <link rel="stylesheet" type="text/css" href="css/colors/light-blue.css" title="light-blue">
  <link rel="stylesheet" type="text/css" href="css/colors/yellow.css" title="yellow">
  <link rel="stylesheet" type="text/css" href="css/colors/light-green.css" title="light-green">
  <link rel="stylesheet" type="text/css" href="css/colors/blue.css" title="blue"> -->
  
</head>

<body id="body">

 <!--
  Start Preloader
  ==================================== -->
  <div id="preloader">
    <div class="preloader">
      <div class="sk-circle1 sk-child"></div>
      <div class="sk-circle2 sk-child"></div>
      <div class="sk-circle3 sk-child"></div>
      <div class="sk-circle4 sk-child"></div>
      <div class="sk-circle5 sk-child"></div>
      <div class="sk-circle6 sk-child"></div>
      <div class="sk-circle7 sk-child"></div>
      <div class="sk-circle8 sk-child"></div>
      <div class="sk-circle9 sk-child"></div>
      <div class="sk-circle10 sk-child"></div>
      <div class="sk-circle11 sk-child"></div>
      <div class="sk-circle12 sk-child"></div>
    </div>
  </div> 
  <!--
  End Preloader
  ==================================== -->


  

<!--
Fixed Navigation
==================================== -->
<section class="header  navigation">


<div class="top-link-wrap">
		<div class="inner">
			<div class="top-left">
				<span class="on">ARTIST</span> 
				<span>
				<a href="#" onclick="window.open('http://google.com')"  style="color:#1F2532;">굿즈 스토어</a></span>
			</div>

			<!-- cre.ma / 로그인 회원 정보 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->

			<!-- 상단 메뉴 s -->
			<div class="top-link">
				<ul>
					<li class="xans-element- xans-layout xans-layout-statelogoff ">
<c:choose>

<c:when test="${naverName != null}">
${naverName} 님</li>
<a onclick="location.href='/ex/logout.login'">로그아웃</a>
</c:when>

<c:when test="${kakaoName != null}">

${kakaoName} 님</li>
<a onclick="location.href='/ex/logout.login'">로그아웃</a></c:when>

<c:when test="${loginfo.name != null}">

${ loginfo.name } 님</li>
<a onclick="location.href='/ex/logout.login'">로그아웃</a>
</c:when>
<c:otherwise>
					<a href="<% request.getContextPath(); %>/ex/login.login" class="log">로그인</a></li>
					<li class="xans-element- xans-layout xans-layout-statelogoff ">
						<a href="<% request.getContextPath(); %>/ex/registerForm.me">회원가입</a>
					</li>
					
</c:otherwise>
</c:choose>
					
					
					
					
					<li class="top-cart"><a href="list.mall">장바구니
					<span class="xans-element- xans-layout xans-layout-orderbasketcount count">
					
						<span>
							<c:if test="${listSize == null}"></c:if>
							<c:if test="${listSize != null}">${listSize}</c:if>
							
							</span>
					</span>
					</a></li>
					<li><a href="<%=request.getContextPath()%>/coupon.jsp">이벤트</a></li>
					
					<li class="nav-item dropdown"><a href="list.nt">고객센터</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <a class="dropdown-item" href="list.nt">공지사항</a>
                     <a class="dropdown-item" href="list.fq">FAQ</a>
                     <a class="dropdown-item" href="list.qa">상품Q&A</a>
                  </div>
                  </li>
					<li class="nav-item dropdown">
						<c:choose>
							<c:when test="${naverName != null}">
								<a href="<%=request.getContextPath()%>/MyPage.jsp">
									마이페이지
								</a>
							</c:when>
							<c:when test="${loginfo.name != null}">
								<a href="<%=request.getContextPath()%>/MyPage.jsp">
									마이페이지
								</a>
							</c:when>
							<c:when test="${kakaoName != null}">
								<a href="<%=request.getContextPath()%>/MyPage.jsp">
									마이페이지
								</a>
							</c:when>
							<c:otherwise>
								<a href="<% request.getContextPath(); %>/ex/login.login?page=MyPage" class="log">마이페이지</a></li>
							</c:otherwise>
						</c:choose>
						<div  class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="">주문조회</a>
							 <a class="dropdown-item" href="">내정보수정</a> 
							 <a class="dropdown-item" href="">인증게시판</a> 
							 <a class="dropdown-item" href="">관심상품</a> 
							 <a class="dropdown-item" href="">1:1문의</a>
						</div></li>
				</ul>
			</div>
			<!-- //상단 메뉴 e -->
		</div>
	</div>



   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <nav class="navbar navbar-expand-md">
               <a class="navbar-brand" href="index.jsp">
                	<img src="${pageContext.request.contextPath}/resources/artist/img/logo.png" alt="">
               </a>  
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="tf-ion-android-menu"></span>
            </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">  
               <li class="nav-item active">
                  <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home <span class="sr-only">(current)</span></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp#container-fluid">Artist</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Toy">Toy</a>
               </li>  
               <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Living">Living</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Fashion">Fashion</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Cd">Cd</a>
               </li>
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:#f0326b;">
                     Concert
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <a class="dropdown-item" href="ConcertList.jsp">예매하기</a>
                  </div>
               </li>
            </ul>
         </div>
      </nav>
      
   </div>
</div>
</div>
</section>
