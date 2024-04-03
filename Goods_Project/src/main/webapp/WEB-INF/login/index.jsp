
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<%@include file="/common/main_top.jsp" %>

 <!-- main top -->
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
							<a data-scroll href="item_list.prd?whatColumn=singer&keyword=bts" class="btn btn-main">방탄 굿즈 보러가기!</a>	
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- // main top E -->


<section class="portfolio section" id="portfolio">
	<div class="container-fluid" id="container-fluid">
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
					<button type="button" data-filter=".man">MAN</button>
					<button type="button" data-filter=".women">WOMAN</button>
					<button type="button" data-filter=".singer">SINGER</button>
					<button type="button" data-filter=".actor">ACTOR</button>
					<button type="button" data-filter=".talents">TALENTS</button>
				</div>
			</div>
		</div> <!-- /end col-lg-12 -->
		<div class="row portfolio-items-wrapper">
			<div class="col-6 col-md-4 padding-0 mix women singer">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-01.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-01.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="item_list.prd?whatColumn=singer&keyword=twice">TWICE</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix man actor">
				<div class="portfolio-block ">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-02.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-02.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="item_list.prd?whatColumn=singer&keyword=kimsoohyun">SOO-HYUN KIM</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix women singer actor">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-03.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-03.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="item_list.prd?whatColumn=singer&keyword=iu">IU (JI-EUN LEE)</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix man singer">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-04.png" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-04.png" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="item_list.prd?whatColumn=singer&keyword=bts">BTS</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 mix women singer">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-05.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-05.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="item_list.prd?whatColumn=singer&keyword=redvelvet">RED VELVET</a></h4>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 padding-0 development mix women talents">
				<div class="portfolio-block">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-06.jpg" alt="" width="964" height="642">
					<div class="caption">
						<a class="search-icon" href="${pageContext.request.contextPath}/resources/images/main_artist_img/artist-06.jpg" data-lightbox="image-1">
							<i class="tf-ion-ios-search-strong"></i>
						</a>
						<h4><a href="item_list.prd?whatColumn=singer&keyword=hanhyejin">HYE-JIN HAN</a></h4>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- end row -->
</section>   <!-- End section -->
					
					

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
				
				
				
			
<%@include file="/common/main_bottom.jsp" %>