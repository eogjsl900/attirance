<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



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
            <li><a href="${pageContext.request.contextPath}/index.jsp#container-fluid">ARTIST</a></li>
            <li><a href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Toy">TOY</a></li>
            <li><a href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Living">LIVING</a></li>
            <li><a href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Fashion">FASHION</a></li>
            <li><a href="${pageContext.request.contextPath}/item_list2.prd?whatColumn=category&keyword=Cd">CD</a></li>
          </ul>
        </div>
        <!-- End of .col-sm-3 -->

        <div class="col-sm-3 col-md-3 col-lg-3">
          <h3>CONSERT</h3>
          <ul>
            <li><a href="ConcertList.jsp">CONSERT</a></li>
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