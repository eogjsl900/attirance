<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp" %>
<%@include file="/common/main_top.jsp" %>  

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/coupon/couponn.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/coupon/coupon4.css">           


        <!-- 멤플러스 -->  
        <div class="coupon-contents" align="center" style="margin:0 auto; width:100%;">
            
            <!-- 본문 -->
            <div id="smart_wrap">
                <div id="baner_wrap" class="sk_color01">
                    <div class="skb_topimg">
                        <img src="${pageContext.request.contextPath}/resources/coupon/at_top_main.png" usemap="#Map_coupon" border="0">
                        <!--map name="Map_coupon" id="Map_coupon">
                        <area shape="rect" coords="697,634,760,662" href="#coupon_infos" >
                        </map-->
                    </div>

                    <div class="form_title sk_color02">
                        <p class="txt_m">아래에서 아띠랑스 이벤트 쿠폰을 다운받으세요</p>
                        <p class="txt_s">( 이벤트 쿠폰은 1ID당 1회 가능합니다. )</p>	<br><br><br><br>
                    </div>

                </div>    
                <div class="skb_con_wrap">
                	<table id="tab01">
	                	<tbody>
	                		<tr>
	                            <td colspan="2"><a href="#tab01"><img src="${pageContext.request.contextPath}/resources/coupon/image/tab01.png"></a></td>
	                        </tr>
	                    </tbody>
                	</table>
                	
                
                	 <form action="add.cp" id="f1">
						<input type="hidden" name="name" value="매일 매일 선착순 쿠폰">
						<input type="hidden" name="price" value="10000">
						<input type="hidden" name="day" value="2019-10-20">
						<input type="hidden" name="uid" value="${loginfo.id }">
						<img src="${pageContext.request.contextPath}/resources/coupon/image/sub02.png" usemap="#Map_con" border="0">
						<a href="#" onclick="document.getElementById('f1').submit();">
							<img src="${pageContext.request.contextPath}/resources/coupon/image/cbutton.png" usemap="#Map_con" border="0">
						</a>
					</form>
                	
                		<form action="add.cp" id="f2">
							<input type="hidden" name="name" value="첫 구매 전용 쿠폰">
							<input type="hidden" name="price" value="3000">
							<input type="hidden" name="day" value="2019-10-10">
							<input type="hidden" name="uid" value="${loginfo.id }">
							<img src="${pageContext.request.contextPath}/resources/coupon/image/sub03.png" usemap="#Map_con" border="0">  
							<a href="#" onclick="document.getElementById('f2').submit();">
								<img src="${pageContext.request.contextPath}/resources/coupon/image/cbutton2.png" usemap="#Map_con" border="0">
							</a>
						</form>
                	
                	 	<form action="add.cp" id="f3">
							<input type="hidden" name="name" value="모바일/앱 전용 쿠폰">
							<input type="hidden" name="price" value="8000">
							<input type="hidden" name="day" value="2019-11-20">
							<input type="hidden" name="uid" value="${loginfo.id }">
							<img src="${pageContext.request.contextPath}/resources/coupon/image/sub04.png" usemap="#Map_con" border="0">  
							<a href="#" onclick="document.getElementById('f3').submit();">
								<img src="${pageContext.request.contextPath}/resources/coupon/image/cbutton2.png" usemap="#Map_con" border="0"> 
							</a>
						</form>  
                	
                </div>



                <!-- footer -->
<script type="text/javascript">
	function markload(open_url){
		window.open(open_url, '', 'width=500, height=730');
		return false;
	}
</script>




				<!--//footer-->
            </div>
            <!-- //본문 -->
        </div>
        <!-- //멤플러스 -->



<%@include file="/common/main_bottom.jsp" %>