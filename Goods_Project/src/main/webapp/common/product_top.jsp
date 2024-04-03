<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/common.jsp" %>
<html lang="en" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Author Meta -->
        <meta name="author" content="Themefisher">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="utf-8">
        <!-- Site Title -->
        <title>Quick</title>
        
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- Favicon -->
          <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon2.png" />
        <link href='https://fonts.googleapis.com/css?family=Raleway:200,300,400,700,900,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto:200,300,400,900,700,500,300' rel='stylesheet' type='text/css'>

		
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/justifiedGallery.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/et-font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/main.css">
        
        <!-- CUSTOM CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/artist/css/${keyword}.css">
		
		
		
		<!-- list CSS -->
		<%-- <link href="${pageContext.request.contextPath}/resources/GoodsList/css/bootstrap.min.css" rel="stylesheet"> --%>
		<link href="${pageContext.request.contextPath}/resources/GoodsList/css/font-awesome.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/GoodsList/css/prettyPhoto.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/GoodsList/css/price-range.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/GoodsList/css/animate.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/GoodsList/css/main.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/GoodsList/css/responsive.css" rel="stylesheet">
<%-- 
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/GoodsList/images/ico/favicon.ico">
		<link rel="apple-touch-icon-precomposed" sizes="144x144"
			href="${pageContext.request.contextPath}/resources/GoodsList/images/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114"
			href="${pageContext.request.contextPath}/resources/GoodsList/images/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72"
			href="${pageContext.request.contextPath}/resources/GoodsList/images/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed"
			href="${pageContext.request.contextPath}/resources/GoodsList/images/ico/apple-touch-icon-57-precomposed.png">
		 --%>
</head>
	
    <body>
        <!-- #preloader -->
        <!-- end #preloader -->
        <!-- #preloader -->
        <div id="preloader">
            <div class="preloader loading">
                <span class="slice"></span>
                <span class="slice"></span>
                <span class="slice"></span>
                <span class="slice"></span>
                <span class="slice"></span>
                <span class="slice"></span>
            </div>
        </div>
        <!-- end #preloader -->
        <header class="site-header navbar-fixed-top navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">
                        <img src="${pageContext.request.contextPath}/resources/artist/img/logo.png" alt="">
                    </a>
                </div>
                
                <div class="nav-toggle hidden-xs">
                    <button class="toggle-btn">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <nav class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav main-manu">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="<% request.getContextPath(); %>/ex/login.login">로그인</a></li>
                        <li><a href="<% request.getContextPath(); %>/ex/registerForm.me">회원가입</a></li>
                        <li><a href="list.mall">장바구니</a></li>
                        <li><a href="<%=request.getContextPath()%>/coupon.jsp">이벤트</a></li>
	                    <li><a href="list.nt">고객센터</a>
							<div style="display: none;">
								<a href="list.nt">공지사항</a> 
								<a href="list.fa">FAQ</a> 
								<a href="list.qa">상품Q&amp;A</a>
							</div>
						</li>
                       <li class="top-mypage"><a href="#">마이페이지</a>
						<div style="display: none;">
							<a href="/myshop/order/list.html">주문조회</a>
							 <a href="/member/modify.html">내정보수정</a> 
							 <a href="/board/free/list.html?board_no=4">인증게시판</a> 
							 <a href="/myshop/wish_list.html">관심상품</a> 
							 <a href="/board/consult/list.html?board_no=9">1:1문의</a>
						</div></li>
                    </ul>
                </nav><!-- /.navbar-collapse -->
            </div>
        </header>

        <div class="home-banner fullscreen" >
            <div class="gradient"></div>
            <div class="banner-content dtable fullscreen">
                <div class="content-inner dtablecell">
                    <div class="container">
                   		<c:if test="${keyword=='bts'}">
                        	<h1>
                        	 	B.T.S
                        	</h1>
                        	<p>
                        		[신곡] 작은 것들을 위한 시 (Boy With Luv) feat. Halsey
                        	</p>
                       	</c:if>
                   		<c:if test="${keyword=='twice'}">
                        	<h1>
                        	 	TWICE
                        	</h1>
                        	<p>
                        		데뷔일‎: ‎2015년‎ ‎10월 20일‎ (D+1402일)	<br> 공식 색‎: ‎APRICOT NEON MAGENTA <br>데뷔 음반‎: ‎미니 1집 THE STORY BEGINS	공식 응원봉‎: ‎CANDY BONG
                        	</p>
                       	</c:if>
                   		<c:if test="${keyword=='iu'}">
                        	<h1>
                        	 	IU (LEE JI EUN)
                        	</h1>
                        	<p>
                        		아이유, 데뷔 11주년 기념 팬미팅 티켓 초고속 매진
                        	</p>
                       	</c:if>
                   		<c:if test="${keyword=='hanhyejin'}">
                        	<h1>
                        	 	HYE-JIN HAN
                        	</h1>
                        	<p>
                        		[ MODEL ]'명품 각선미' 한혜진, 톱모델의 위엄!
                        	</p>
                       	</c:if>
                   		<c:if test="${keyword=='redvelvet'}">
                        	<h1>
                        	 	RED VELVET
                        	</h1>
                        	<p>
                        		"미모에 퐁당"...레드벨벳, 블랙홀 비주얼
                        	</p>
                       	</c:if>
                   		<c:if test="${keyword=='kimsoohyun'}">
                        	<h1>
                        	 	SOO-HYYN KIM
                        	</h1>
                        	<p>
                        		[대표작] 별에서 온 그대
                        	</p>
                       	</c:if>
                    </div>
                    <div class="scrolldown">
	            <a id="scroll" href="#features" class="scroll"></a>
	     		   </div>
                </div>
                
            </div>
        </div>
        
        
	<section id="advertisement">
		<div class="h_container">
			<img alt=""
				src="${pageContext.request.contextPath}/resources/GoodsList/images/Goods/list_banner.jpg">
		</div>

	</section>
	
	
<!--list body -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<div class="shipping text-center"><!--button-->
							<img src="${pageContext.request.contextPath}/resources/GoodsList/images/Goods/${keyword}/button.jpg" alt="" />
						</div><!--/button-->
						
						<h2>singer</h2>
						<div class="panel-group singer-products" id="accordian"><!--singer-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											SINGER<!-- Sportswear -->
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="item_list.prd?whatColumn=singer&keyword=twice ">TWICE </a></li>
											<li><a href="item_list.prd?whatColumn=singer&keyword=iu">IU</a></li>
											<li><a href="item_list.prd?whatColumn=singer&keyword=bts">BTS</a></li>
											<li><a href="item_list.prd?whatColumn=singer&keyword=redvelvet">REDVELVET</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#mens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											ACTOR
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="item_list.prd?whatColumn=singer&keyword=kimsoohyun">SOO-HYUN-KIM</a></li>
											<li><a href="item_list.prd?whatColumn=singer&keyword=iu">IU</a></li>
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#womens">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											TELENTS<!-- Womens -->
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="item_list.prd?whatColumn=singer&keyword=hanhyejin">HYE-JIN-HAN</a></li>
					
										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<c:if test="${keyword=='bts'}">
                        				<h4 class="panel-title"><a href="item_list.prd?whatColumn=best&keyword=bts">BEST 20</a></h4>
                       				</c:if>
                   					<c:if test="${keyword=='twice'}">
                        				<h4 class="panel-title"><a href="item_list.prd?whatColumn=best&keyword=twice">BEST 20</a></h4>
                       				</c:if>
                   					<c:if test="${keyword=='iu'}">
                        				<h4 class="panel-title"><a href="item_list.prd?whatColumn=best&keyword=iu">BEST 20</a></h4>
                       				</c:if>
                   					<c:if test="${keyword=='hanhyejin'}">
                        				<h4 class="panel-title"><a href="item_list.prd?whatColumn=best&keyword=hanhyejin">BEST 20</a></h4>
                       				</c:if>
                   					<c:if test="${keyword=='redvelvet'}">
                        				<h4 class="panel-title"><a href="item_list.prd?whatColumn=best&keyword=redvelvet">BEST 20</a></h4>
                       				</c:if>
                   					<c:if test="${keyword=='kimsoohyun'}">
                        				<h4 class="panel-title"><a href="item_list.prd?whatColumn=best&keyword=kimsoohyun">BEST 20</a></h4>
                       				</c:if>
									
								</div>
							</div>
							
						</div><!--/singer-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href=""> <span class="pull-right">(50)</span>BOY IDOL</a></li>
									<li><a href=""> <span class="pull-right">(56)</span>GIRL IDOL</a></li>
									<li><a href=""> <span class="pull-right">(32)</span>SINGER</a></li>
									<li><a href=""> <span class="pull-right">(27)</span>ACTOR</a></li>
									<li><a href=""> <span class="pull-right">(5)</span>TALENTS</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b>\1,000</b> <b class="pull-right">\100,000</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="${pageContext.request.contextPath}/resources/GoodsList/images/Goods/${keyword }/banner.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				
	