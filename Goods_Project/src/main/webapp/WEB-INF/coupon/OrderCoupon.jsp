<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@include file="/common/common.jsp" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/coupon/couponmini0.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/coupon/couponmini2.css">    
	<style type="text/css">
		.no-border { border:0px; background:#ffeeee;text-align: center; }
	</style>
	<body id="orderPop">
		<div id="container">
			<div class="orderWrapper">
				<div class="orderPop coupons">
					<div class="orderPopHead">
						<h2>
             				<span class="point">쿠폰</span> 선택
             			</h2>
             			<p class="subText">프로모션이나 이벤트로 발급된 상품권은 할인쿠폰과의 중복사용이 제한될 수 있습니다</p>
					</div>
					<!-- 본문 -->
					<div id="orderCouponPop">
						<div class="orderPopContent">
							<div class="couponsWrap">
								
							<form action="apply.cp">
								<div id="dirCouponList" class="couponList freeDelivery">
                					<div class="tableHead">
                 						<h3>기본 할인</h3>
                 						<span class="amount"> 적용 가능 쿠폰 <em>0</em>장 </span>
                					</div>
               					<table>
                  				<caption>할인 쿠폰 목록</caption>
                  					<thead>
					                    <tr>
					                      <th scope="col">쿠폰명</th>
					                      <th scope="col">사용가능금액</th>
					                      <th scope="col">유효기간</th>
					                      <th scope="col">사용</th>
					                    </tr>
					                  </thead>
                 					  <tbody>

					                    <c:forEach var="coupon" items="${coupons}" varStatus="status">
								    		<tr>
								    		<td><input type="text" name="name" value="${coupon.name }" class="no-border" readonly></td>
								    		<td><input type="text" name="price" value="${coupon.price }" class="no-border" readonly></td>
								    		<td><input type="text" name="day" value="${coupon.day }"  class="no-border" readonly></td>
								    		<td><input type="radio" name="num" value="${coupon.num}"  class="no-border" <c:if test="${status.index==0}">checked</c:if> > </td>
								    	</tr>
								    	</c:forEach>  
                 					 </tbody>
               					 </table>
             				 </div>
             				 
             				 
							</form>
								
							</div>
							
							
							<div class="couponTotal">
				              <table>
				                <caption>적용 쿠폰 종합</caption>
				                <colgroup>
				                  <col style="width: 196px">
				                  <col style="width: 196px">
				                  <col style="width: 196px">
				                  <col style="width: 197px"> </colgroup>
				                <tbody>
				                  <tr>
				                    <th scope="row" class="price">적립포인트</th>
				                    <td class="price"><span id="txtDiscountPtLayer" >0P 적립</span></td>
				                    <th scope="row" class="point">쿠폰 할인 금액</th>
				                    <td class="point"><span id="txtDiscountPrice">0원</span></td>
				                  </tr>
				                </tbody>
				              </table>
				            </div>
            
            
            				<div class="orderPopClose">
				              <button type="submit" class="success">적용하기</button>
				              <button type="button" onclick="window.close()" class="normal">닫기</button>
				            </div>
							
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
	


    
    
    
    
    
</body>