<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<title>Insert title here</title>

<!-- Mobile Specific Meta
  ================================================== -->
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
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <nav class="navbar navbar-expand-md">
               <a class="navbar-brand" href="index.html">
                  <svg width="136px" height="23px" viewBox="0 0 136 23" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                      <!-- Generator: Sketch 47.1 (45422) - http://www.bohemiancoding.com/sketch -->
                      <desc>Created with Sketch.</desc>
                      <defs></defs>
                      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                          <polygon id="Path-2" stroke="#F0326B" stroke-width="3" points="14.5381217 2.93479719 2.83282387 20.6274929 25.1150643 20.6274929"></polygon>
                          <text id="NAVIGATOR" font-family="SocialGothic-Bold, Social Gothic" font-size="22" font-weight="bold" fill="#F6F6F6">
                              <tspan x="37" y="22">(가제)</tspan>
                          </text>
                          <polygon id="Path-2-Copy" stroke="#F0326B" stroke-width="3" points="22.6050731 6 10.8997752 20.6274929 33.1820157 20.6274929"></polygon>
                      </g>
                  </svg>
               </a>  
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="tf-ion-android-menu"></span>
            </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item active">
                  <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="about.html">Artist</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="service.html">Toy</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="portfolio.html">Living</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="contact.html">Fashion</a>
               </li>
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Concert
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <a class="dropdown-item" href="404.html">예매하기</a>
                  </div>
               </li>
            </ul>
         </div>
      </nav>
      
   </div>
</div>
</div>
</section>

 <!--
Welcome Slider
==================================== -->

<section class="hero-area">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="video-player">
					<img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/images/indexhome/video-player.jpg" alt="">
					<a class="play-icon" href="javascript:void(0)">
						<i class="tf-ion-play"  data-video="https://www.youtube.com/embed/XsX3ATc3FbA?autoplay=1"></i>
					</a>
				</div>
			</div>
			<div class="col-md-6">
				<div class="block">
					<h2>BTS,<br>Boy With Luv</h2>
					<p>방탄소년단, '작은 것들을 위한 시'도 5억뷰<br> 그룹 방탄소년단의 '작은 것들을 위한 시'(Boy With Luv) 뮤직비디오가 유튜브 5억뷰를 돌파했다. 
					소속사 빅히트엔터테인먼트에 따르면 지난 4월 발매한 앨범 '맵 오브 더 솔 : 페르소나'(MAP OF THE SOUL : PERSONA) 타이틀곡 '작은 것들을 위한 시'(Boy With Luv)는 공개 4개월 만인 이날 오전 7시 43분께 유튜브 조회수 5억 건을 넘겼다.
					5억뷰 돌파 뮤직비디오를 7편 보유하며 이 부문 한국 가수 최다 기록을 자체 경신했다.</p>
					<ul class="list-inline wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".7s">
						<li class="list-inline-item">
							<a data-scroll href="#services" class="btn btn-main">방탄 굿즈 보러가기!</a>		
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>	

<!--
Start About Section
==================================== -->
<!-- 
<section class="about-2 section bg-gray" id="about">
 	
</section> 

 -->





<!-- 
<section class="services section-xs"  id="services">
</section>
-->
			
			
			
<!-- 
<section class="about section-sm" id="about">
</section> 
 -->
 
<!--
Start About Section
==================================== -->
<!-- <section class="service-2 section bg-gray">
  
</section>  -->

<!-- Start Portfolio Section
=========================================== -->

<section class="portfolio section" id="portfolio">
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<div class="title text-center">
					<h4>ACTOR  & ARTIST</h4>
					<h2>ENTERTAINER</h2>
					<span class="border"></span>
					<p>중앙엔터(가제)의 아티스트들을 소개합니다. 클릭 시 해당 아티스트의 굿즈MALL로 이동합니다.</p>
				</div>
			</div>
		</div>
		<div class="row" >
			<div class="col-lg-12">
				<!-- /section title -->
				<div class="portfolio-filter">
					<button type="button" data-filter="all">All Artist</button>
					<button type="button" data-filter=".photography">ACTOR</button>
					<button type="button" data-filter=".ios">IDOL</button>
					<button type="button" data-filter=".development">SINGER</button>
					<button type="button" data-filter=".design">TALENTS</button>
				</div>
			</div>
		</div> <!-- /end col-lg-12 -->
		<div class="row portfolio-items-wrapper">
			<div class="col-6 col-md-4 padding-0 mix design">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/artist/artist-01.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="">TWICE</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix design ios">
				<div class="portfolio-block ">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/artist/artist-02.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="">SOO-HYUN KIM</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix photography development">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/artist/artist-03.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="">IU (JI-EUN LEE)</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix photography ios">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/artist/artist-04.png" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="">BTS</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix design">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/artist/artist-05.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="">RED VELVET</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 development mix design">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/artist/artist-06.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="">HYE-JIN HAN</a></h4>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- end row -->
</section>   <!-- End section -->
					
				
				
				
			

<!-- Start Our Team
		=========================================== -->
<!-- 	
	<section class="team section bg-gray" id="team">
	</section>   End section
	 -->

<!-- Start Pricing section
		=========================================== -->
<!-- 
	<section class="pricing-table  section" id="pricing">
	</section>   End section
-->

<!-- Start Testimonial
=========================================== -->
<!-- 		
	<section class="testimonial section" id="testimonial">
	</section>
 -->
 <!--
Start Blog Section
=========================================== -->


<!--
 <section class="blog section" id="blog">
</section> 
 -->
				

<!-- Srart Contact Us
		=========================================== -->		
	<section class="contact-us section bg-gray" id="contact">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="title text-center">
						<h4>Drop us a note</h4>
						<h2>방문예약</h2>
						<span class="border"></span>
						<p>고퀄리티 굿즈템, 오셔서 직접 보고 느끼실 수 있습니다. 출시템을 가장 빠르고 정확하게 볼 수 있는 곳, 한정판 에디션은 오프라인매장에서만 이벤트 진행됩니다!</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- Contact Details -->
				<div class="col-12 col-md-6">
					<div class="map">
						<div id="map"></div>
					</div>

				</div>
				<!-- / End Contact Details -->
					
				<!-- Contact Form -->
				<div class="contact-form col-12 col-md-6 " >
					<form id="contact-form" method="post" action="sendmail.php" role="form">
					
						<div class="form-group">
							<input type="text" placeholder="Your Name" class="form-control" name="name" id="name">
						</div>
						
						<div class="form-group">
							<input type="email" placeholder="Your Email" class="form-control" name="email" id="email">
						</div>
						
						<div class="form-group">
							<input type="text" placeholder="Phone" class="form-control" name="Phone" id="Phone">
						</div>
						
						<div class="form-group">
							<textarea rows="6" placeholder="방문날짜 및 시간" class="form-control" name="message" id="message"></textarea>	
						</div>
						
						<div id="mail-success" class="success">
							Thank you. The Mailman is on His Way :)
						</div>
						
						<div id="mail-fail" class="error">
							Sorry, don't know what happened. Try later :(
						</div>
						
						<div id="cf-submit">
							<input type="submit" id="contact-submit" class="btn btn-transparent" value="예약하기">
						</div>						
						
					</form>
				</div>
				<!-- ./End Contact Form -->
			</div> <!-- end row -->
			<div class="row">
				<div class="col-12 col-md-4">
					<div class="address-block contact-meta-block">
						<i class="tf-ion-android-pin"></i>
						<h4>Our Location</h4>
						<p>
						서울특별시 마포구 신촌로 176 <br>
						중앙엔터테인먼트 3~6층 <br>
						
						</p>
						
					</div>
				</div>
				<div class="col-12 col-md-4">
					<div class="phone-block contact-meta-block">
						<i class="tf-ion-ios-telephone"></i>
						<h4>Call Us</h4>
						<p>
							Office: (02) 313 1711 <br>
							Fax: +02 393 9218
						</p>
					</div>
				</div>
				<div class="col-12 col-md-4">
					<div class="social-icons-block contact-meta-block">
						<i class="tf-ion-ios-contact"></i>
						<h4>We are social</h4>
						<ul class="list-inline social-icon">
							<li class="list-inline-item"><a href=""><i class="tf-ion-social-facebook"></i></a></li>
							<li class="list-inline-item"><a href=""><i class="tf-ion-social-twitter"></i></a></li>
							<li class="list-inline-item"><a href=""><i class="tf-ion-social-linkedin"></i></a></li>
							<li class="list-inline-item"><a href=""><i class="tf-ion-social-dribbble"></i></a></li>
							<li class="list-inline-item"><a href=""><i class="tf-ion-social-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			
		</div> <!-- end container -->
	</section> <!-- end section -->

<footer id="footer" class="bg-one">
  <div class="top-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>About</h3>
          <p>나의 최애 아티스트의 완벽한 정품 굿즈를 지금 이곳에서 만나보실 수 있습니다. 소중한 내 굿즈의 소중한 판매를 위한 예약제 판매부터 한정판 에디션은 방문하셔서 직접 구매하실 수 있습니다.</p>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>GOODS</h3>
          <ul>
            <li><a href="#">TOY</a></li>
            <li><a href="#">LIVING</a></li>
            <li><a href="#">FASHION</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>CONSERT</h3>
          <ul>
            <li><a href="#">CONSERT</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>메일문의</h3>
          <form class="subscribe-form">
            <div class="form-group">
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
            </div>
            <button type="submit" class="btn btn-main-sm">문의하기</button>
          </form>
        </div>
        <!-- End of .col-sm-3 -->

      </div>
    </div> <!-- end container -->
  </div>
  <div class="footer-bottom">
    <h5>Copyright 2019. All rights reserved.</h5>
    <h6>Design and CHOONGANG by <a href="">CHOONGANG</a></h6>
  </div>
</footer> <!-- end footer -->


    <!-- end Footer Area
    ========================================== -->


    
    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.7 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Parallax -->
    <script src="${pageContext.request.contextPath}/resources/plugins/parallax/jquery.parallax-1.1.3.js"></script>
    <!-- lightbox -->
    <script src="${pageContext.request.contextPath}/resources/plugins/lightbox2/dist/js/lightbox.min.js"></script>
    <!-- Owl Carousel -->
    <script src="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Portfolio Filtering -->
    <script src="${pageContext.request.contextPath}/resources/plugins/mixitup/dist/mixitup.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    
    <!-- Custom js -->
    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>


</body>
</html>