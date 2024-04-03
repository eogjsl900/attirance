<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/products/itemDetailView.css">
    
	<%@include file="/common/main_top.jsp" %> 
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script type="text/javascript">
	
		$(function(){
			
		
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			var aaa=$('#total_price').text().replace(regexp, ',');
			var bbb=$('#span_product_price_text').text().replace(regexp, ',');
			var ccc=$('#price').text().replace(regexp, ',');
			
			$('#QuantityUp').click(function(){
				var price ='${product.price}';
				var cur_qty =$('#quantity').val();
				var qty =$('#quantity').val(parseInt(cur_qty)+parseInt(1));
	
				
				$('#total_price').text(parseInt(qty.val())*parseInt(price)+"원"); 
				$('#total_qty').text("("+qty.val()+"개)");
				aaa=$('#total_price').text().replace(regexp, ',');
				$('#total_price').text(aaa);
			})
			$('#QuantityDown').click(function(){
				var price ='${product.price}';
				var cur_qty =$('#quantity').val();
				
				if($('#quantity').val() != 1){
					var qty =$('#quantity').val(parseInt(cur_qty)+parseInt(-1));
					
					$('#total_price').text(parseInt(qty.val())*parseInt(price)+"원"); 
					$('#total_qty').text("("+qty.val()+"개)"); 
					aaa=$('#total_price').text().replace(regexp, ',');
					$('#total_price').text(aaa);
					
				}
			})
			$('#total_price').text(aaa);
			$('#span_product_price_text').text(bbb);
			$('#price').text(ccc);
		
		})
		
	</script>
	
	
	<div id="wrap">
		<div id="container">
			<div id="contents">
	
				<div class="detail-top">
					<div class="inner">
						<!-- 상단 제품 정보  -->
						<div class="xans-element- xans-product xans-product-detail">



							<div class="detailArea ">
								<!-- 이미지 영역 -->
								<div
									class="xans-element- xans-product xans-product-image imgArea">
									<div class="keyImg ">
										<div class="thumbnail">
											<a
												href="<%=request.getContextPath() %>/zoom.jsp?image=${product.image}"
												alt="P0000BCG"
												onclick="window.open(this.href, 'image_zoom2', 'toolbar=no,scrollbars=auto,resizable=yes,width=650,height=600,left=0,top=0', this);return false;">
												<img
												src="${pageContext.request.contextPath}/resources/prd_image/${product.image}"
												alt="총몇명 중목 양말 세트" class="BigImage ">
											</a>
											<div id="zoom_wrap"></div>
										</div>
									</div>
									<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
									<!--<div class="listImg" module="product_addimage">
							<div>
								<div></div>
								<div></div>
							</div>
						</div>-->
									<!-- //참고 -->
									<div class="control ">
										<span class="prev">
										<a href="item_detail.prd?pmkey=${product.num-1}" onclick="ImagePreview.viewProductBtnClick('prev');" style="display:;">
										<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_product_prev.gif" alt="이전상품" onclick="location.href='item_detail.prd?pmkey=${product.num-1}"></a></span> <span class="next"><a href="#none"
											onclick="location.href='item_detail.prd?pmkey=${product.num+1}'"
											style="display:;"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_product_next.gif"
												alt="다음 제품 보기"></a></span> <a
											href="/product/image_zoom2.html?product_no=734&amp;cate_no=1&amp;display_group=53"
											onclick="window.open(this.href, 'image_zoom2', 'toolbar=no,scrollbars=auto,resizable=yes,width=560,height=710,left=0,top=0', this);return false;"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_product_zoom.gif"
											alt="확대보기"></a>
									</div>
									<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
									<div class="color displaynone"></div>
									<!-- //참고 -->
									<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
									<div
										class="xans-element- xans-product xans-product-action ec-base-button ">
										<a href="#none" onclick="recommend_mail_pop('734', '1', '53')"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_recommend_email.gif"
											alt="추천메일 보내기"></a> <a href="#none" onclick=""
											class="displaynone"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_product_request.gif"
											alt="상품조르기"></a> <a href="/board/inquiry/write.html"
											class="displaynone"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_large_purchase.gif"
											alt="대량구매문의"></a>
									</div>
									<!-- //참고 -->
									<div class="likeButton displaynone">
										<button type="button">
											<span class="title">좋아요</span><span class="count"><span
												class="likePrdCount likePrdCount_734">0</span></span>
										</button>
									</div>
								</div>
								<!-- //이미지 영역 -->
	
								<!-- 상세정보 내역 -->
								<div class="infoArea">
									<div class="headingArea">
										<span class="icon"> </span>
										<h2>
											${product.name }
										</h2>
										<span class="delivery displaynone">(해외배송 가능상품)</span>
										<!-- 공급사 바로가기버튼 영역 -->
										<div class="supply displaynone">
											<span></span> <a href="#none" onclick=""><img src=""
												alt="공급사 바로가기"></a>
										</div>
										<!-- //공급사 바로가기버튼 영역 -->
									</div>
	
									<div
										class="xans-element- xans-product xans-product-detaildesign">
										<!--
								출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
								count = 10
							-->
										<table border="1" summary="" class="prdTable">
											<caption>기본 정보</caption>
											<tbody>
												<tr class=" xans-record-">
													<th scope="row"><span
														style="font-size: 11px; color: #555555;">상품명</span></th>
													<td><span style="font-size: 11px; color: #555555;">총몇명
															중목 양말 세트</span></td>
												</tr>
												<tr class="price  xans-record-">
													<th scope="row"><span
														style="font-size: 20px; color: #2d2b2c; font-weight: bold;">판매가</span></th>
													<td><span
														style="font-size: 20px; color: #2d2b2c; font-weight: bold;"><strong
															id="span_product_price_text">${product.price }원</strong><input
															id="product_price" name="product_price" value=""
															type="hidden"></span></td>
												</tr>
												<tr class=" xans-record-">
													<th scope="row"><span
														style="font-size: 16px; color: #7b7b7b;">적립금</span></th>
													<td><span style="font-size: 16px; color: #7b7b7b;"><span
															id="span_mileage_text">${product.price/100}원 (1%)</span></span></td>
												</tr>
												<tr class=" xans-record-">
													<th scope="row"><span
														style="font-size: 16px; color: #7b7b7b;">배송비</span></th>
													<td><span style="font-size: 16px; color: #7b7b7b;"><span
															class="delv_price_B"><input
																id="delivery_cost_prepaid" name="delivery_cost_prepaid"
																value="P" type="hidden"><strong>2,500원</strong>
																(30,000원 이상 구매 시 무료)</span></span></td>
												</tr>
	
											</tbody>
										</table>
									</div>
	
									<table border="1" summary="" style="display: none;">
										<caption>SNS 상품홍보</caption>
										<tbody>
											<tr class="">
												<th scope="row">SNS 상품홍보</th>
												<td class="social"><img
													src="//img.cafe24.com/images/ec_admin/icon/icon_facebook.gif"
													onclick="SnsLinkAction('facebook',734);" alt=""> <img
													src="//img.cafe24.com/images/ec_admin/icon/icon_twitter.gif"
													onclick="SnsLinkAction('twitter',734);" alt="">
													<ul
														class="xans-element- xans-product xans-product-customsns xans-record-">
														<li></li>
													</ul></td>
											</tr>
										</tbody>
									</table>
									<p class="displaynone">
										<img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif"
											alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다.">
									</p>
									<!-- //상세정보 내역 -->
	
									<!-- 상품옵션 -->
									<div class="guideArea">
										<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
										<p class="info ">
											(최소주문수량 1개 이상<span class="displaynone"> / 최대주문수량 0개 이하</span>)
										</p>
										<!-- //참고 -->
										<span class="sizeGuide displaynone"><a href="#none"
											class="size_guide_info" product_no="734">사이즈 가이드</a></span>
									</div>
									<table border="1" summary=""
										class="xans-element- xans-product xans-product-option optionTable xans-record-">
										<caption>상품 옵션</caption>
										<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
										<tbody></tbody>
										<tbody>
											<tr class="displaynone" id="">
												<td colspan="2" class="selectButton"><a href="#none"
													onclick=""><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_manual_select.gif"
														alt="옵션 선택"></a></td>
											</tr>
										</tbody>
										<!-- //참고 -->
									</table>
									<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
									<!-- //참고 -->
	
									<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
									<!-- //참고 -->
	
									<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
									<div id="totalProducts" class="optionTotal ">
										<table border="1" summary="">
											<caption>상품 목록</caption>
											<colgroup>
												<col style="width: 284px;">
												<col style="width: 80px;">
												<col style="width: 110px;">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">상품명</th>
													<th scope="col">상품수</th>
													<th scope="col">가격</th>
												</tr>
											</thead>
											<tbody class="">
												<tr>
													<td class="nametit">${product.name }</td>
													<td>
														<form action="add.mall?" id="addform">
															<span class="quantity">
														
																<input name="num" type="hidden"  value="${product.num }">
																<input id="quantity" name="orderqty" style="" value="1" type="text">
														
																<a href="#">
																	<img
																	src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
																	alt="수량증가" class="QuantityUp up" id="QuantityUp">
																</a> 
																<a href="#none">
																	<img
																	src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
																	alt="수량감소" class="QuantityDown down" id="QuantityDown">
															</a>
														</span>
													</form>
													</td>
													<td class="right">
													<span class="quantity_price">
														<span class="ec-front-product-item-price" code="P0000BCG000A" product-no="734" id="price">${product.price }원</span>
														<input type="hidden"
															name="option_box_price" class="option_box_price"
															value="14000" item_code="P0000BCG000A"></span> <span
														class="mileage ">(<img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif">
															&nbsp;<span class="mileage_price">${product.price/100 }원</span>)
													</span></td>
												</tr>
											</tbody>
											<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.-->
											<tbody>
												<!-- tr>
										<td>
											<p class="product">
												$상품명<br />
												<span>$옵션</span>
											</p>
										</td>
										<td>
											<span class="quantity">
												<input type="text" class="quantity_opt" />
												&nbsp;<a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
												<a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
											</span>
											<a href="#none"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" class="option_box_del" /></a>
										</td>
										<td class="right">
											<span>$가격</span>
											<span class="mileage">(<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/product/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span>)</span>
										</td>
									</tr -->
											</tbody>
											<!-- //참고 -->
										</table>
									</div>
									<!-- //참고 -->
									<div id="totalPrice" class="totalPrice">
										<p class="ec-base-help txtWarn txt11 ">수량을 선택해주세요.</p>
										<p class="ec-base-help txtWarn txt11 displaynone">위 옵션선택
											박스를 선택하시면 아래에 상품이 추가됩니다.</p>
										<strong>총 상품금액</strong>(수량) : <span class="total"><strong><em id="total_price">${product.price }원</em></strong>
											<span id="total_qty">(1개)</span></span>
									</div>
									<p class="ec-base-help txt11 displaynone EC-price-warning">할인가가
										적용된 최종 결제예정금액은 주문 시 확인할 수 있습니다.</p>
									<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
									<div class="xans-element- xans-product xans-product-action ">
										<div class="ec-base-button">
											<a href="direct.mall?num=${product.num }&orderqty=1" class="first "
												><img
												src="${pageContext.request.contextPath}/resources/products/img/btn_direct_buy.gif" alt="바로구매하기"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_reserve.gif"
												alt="예약주문" class="displaynone" id="btnReserve"
												style="display: none;">
											</a>
											<span class="displaynone">
												<img
												src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_sold_out.gif"
												alt="SOLD OUT">
											</span>
											<a href="#" class=""
												onclick="document.getElementById('addform').submit();"><img
												src="${pageContext.request.contextPath}/resources/products/img/btn_cart.gif"" alt="장바구니 담기">
											</a>
											<a
												href="#"
												onclick="add_wishlist_nologin('/member/login.html');"
												class=""><img src="${pageContext.request.contextPath}/resources/products/img/btn_wish_m_un.gif"
												alt="관심상품등록">
											</a>
										</div>
										<!-- 네이버 체크아웃 구매 버튼 -->
										<div id="NaverChk_Button">
											<div id="NC_ID_1568015964757576"
												class="npay_storebtn_bx npay_type_A_2">
												<div id="NPAY_BUTTON_BOX_ID" class="npay_button_box ">
													<div class="npay_button">
														<div class="npay_text">
															<span class="npay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span>
														</div>
														<table class="npay_btn_list" cellspacing="0"
															cellpadding="0">
															<tbody>
																<tr>
																	<td class="npay_btn_item"><a
																		id="NPAY_BUY_LINK_IDNC_ID_1568015964757576" href="#"
																		class="npay_btn_link npay_btn_pay btn_green"
																		style="box-sizing: content-box;" title="새창"><span
																			class="npay_blind">네이버페이 구매하기</span></a></td>
																	<td class="npay_btn_item btn_width"><a
																		id="NPAY_WISH_LINK_IDNC_ID_1568015964757576" href="#"
																		class="npay_btn_link npay_btn_zzim "
																		style="box-sizing: content-box;" title="새창"><span
																			class="npay_blind">찜하기</span></a></td>
																</tr>
															</tbody>
														</table>
													</div>
			<!-- 										<div id="NPAY_EVENT_ID" class="npay_event">
														<a id="NPAY_PROMOTION_PREV_IDNC_ID_1568015964757576"
															href="#" class="npay_more npay_more_prev"><span
															class="npay_blind">이전</span></a>
														<p id="NPAY_PROMOTION_IDNC_ID_1568015964757576"
															class="npay_event_text">
															<strong class="event_title">수수료무료</strong><a
																class="event_link"
																href="https://m.post.naver.com/viewer/postView.nhn?volumeNo=18698558&amp;memberNo=30633733"
																target="_blank" title="새창">휴대폰번호로 간편송금하세요!</a>
														</p>
														<a id="NPAY_PROMOTION_NEXT_IDNC_ID_1568015964757576"
															href="#" class="npay_more npay_more_next"><span
															class="npay_blind">다음</span></a>
													</div> -->
												</div>
											</div>
										</div>
										<!-- //네이버 체크아웃 구매 버튼 -->
										<!-- 상담버튼 -->
	<!-- 									<div class="counselBtn">
											카카오톡 플러스친구
											<a href="#none" class="p_plusID btn_40_ffdf2c detail_plus"
												data-popup="link,window,500,780"
												onmousedown="_AceTM.SNS('카카오톡플러스친구');"><img
												src="/SkinImg/plus_id.gif"></a>
										</div> -->
	
	
	
									</div>
									<!-- //참고 -->
								</div>
							</div>
							<!-- 공급사:판매사정보 -->
							<div class="supplyInfo displaynone"></div>
							<!-- //공급사:판매사정보 -->
							<div class="eventArea displaynone ">
								<h3>
									<span>이벤트</span>
								</h3>
								<div class="event"></div>
							</div>
						</div>
						<!-- //상단 제품 정보 -->
							<div class="xans-element- xans-product xans-product-additional "><!-- 상품상세정보 -->
<div id="prdDetail" class="ec-base-tab grid5">
			<div class="menu">
				<div class="selected"><a href="#prdDetail">상품상세정보</a></div>
                <div><a href="#prdreview">인증글보기</a></div>
				<div><a href="#prdInfo">상품구매안내</a></div>
				<div><a href="#prdRelated">관련상품</a></div>
			</div>
			<div class="cont">              
				<h3>상품상세정보</h3>
				<p style="text-align: center;"></p><div style="text-align: center;"><p></p><div style="text-align: center;"><p></p><div style="text-align: center;"><span style="font-size: 9pt;">&nbsp;</span></div><div style="text-align: center;"><img style="font-size: 9pt;" alt="" ec-data-src="/web/upload/NNEditor/20170228/IMG_7833_shop1_141645.jpg"></div><p style="text-align: center;">&nbsp;</p><div style="text-align: center;"><img style="font-size: 9pt;" alt="" ec-data-src="/web/upload/NNEditor/20170228/IMG_7837_shop1_141645.jpg"></div><p style="text-align: center;">&nbsp;</p><div style="text-align: center;"><img style="font-size: 9pt;" alt="" ec-data-src="/web/upload/NNEditor/20170228/IMG_7839_shop1_141645.jpg"></div><p style="text-align: center;">&nbsp;</p><div style="text-align: center;"><img style="font-size: 9pt;" alt="" ec-data-src="/web/upload/NNEditor/20170228/IMG_7840_shop1_141645.jpg"></div><p style="text-align: center;">&nbsp;</p><div style="text-align: center;"><img style="font-size: 9pt;" alt="" ec-data-src="/web/upload/NNEditor/20170228/IMG_7845_shop1_141646.jpg"></div><p>&nbsp;</p><br><p></p></div><p></p></div><p></p>                
                <div id="prdreview">
                    <div class="menu">
                        <div><a href="#prdDetail">상품상세정보</a></div>
                        <div class="selected"><a href="#prdreview">인증글보기</a></div>
                        <div><a href="#prdInfo">상품구매안내</a></div>
                        <div><a href="#prdRelated">관련상품</a></div>
                    </div>
                </div>
                <!-- cre.ma / 상품 리뷰 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
                <style>#prdReview .nodata { display: none; }</style>
<div class="crema-product-reviews" data-product-code="16"></div>
                
			</div>
		</div>
<!-- //상품상세정보 -->
<!-- 상품구매안내 -->
<div id="prdInfo" class="ec-base-tab grid5">
			<div class="menu">
				<div><a href="#prdDetail">상품상세정보</a></div>
                <div><a href="#prdreview">인증글보기</a></div>
				<div class="selected"><a href="#prdInfo">상품구매안내</a></div>
				<div><a href="#prdRelated">관련상품</a></div>
			</div>
			<div class="cont">
				<h3>상품정보고시</h3>
				상품명 : 샌드박스 프렌즈 봉제인형 (잠뜰-기본) <br>크기 : 28x17(cm)<br>재질 : 폴리에스터, 아크릴 외<br>사용연령 : 3세 ~ 전연령 사용가능<br>제조사 : QINGDAO HST TRADING CO., LTD. <br>수입자 : (주)비비랜드 <br>A/S책임자 / 전화번호 : (주)비비랜드 02.472.0183 <br>			</div>
			<div class="cont">
				<h3>배송정보</h3>
				<ul class="delivery">
<li>배송 방법 : 택배</li>
					<li>배송 지역 : 전국지역</li>
					<li>배송 비용 : 2,500원</li>
					<li>배송 기간 : 3일 ~ 7일</li>
					<li>배송 안내 : 산간벽지나 도서지방은 별도의 추가 금액을 지불하셔야 하는 경우가 있습니다.<br>고객님께서 주문하신 상품은 입금 확인 후 배송해 드립니다. 다만, 상품 종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.<br></li>
				</ul>
</div>
			<div class="cont">
				<h3>교환 및 반품정보</h3>
				<b>교환 및 반품이 가능한 경우</b><br>- 포장을 개봉하거나 훼손하지 않았을 경우, 공급받으신 날로부터 7일 이내 교환/반품이 가능합니다.&nbsp;<br>- 공급받으신 상품 및 용역의 내용이 표기/광고 내용과&nbsp;다르거나 다르게 이행된 경우에는 공급받은 날로부터 30일 이내 교환/반품이 가능합니다.&nbsp;<br><br><b>교환 및 반품이 불가능한 경우</b><br>- 고객님의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 <br>- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우 (예 : 가전제품, 의류, 문구 등) <br>- 복제가 가능한 상품군(예: 도서, 음반 등)의 포장을 훼손한 경우<br><br>※ 고객님의 단순 변심으로 인한 교환/반품의 경우 상품 반송 비용은 고객님께서 부담하셔야 합니다. &nbsp; (색상 교환, 사이즈 교환 등 포함) <br> ※ 보다 자세한 내용은 고객센터의 1:1 문의를 이용해 주시기 바랍니다.&nbsp;<br>			</div>
			<div class="cont">
				<h3>서비스문의</h3>
				상품Q&A/취소/교환/반품 문의 카카오톡 플러스 친구 : @샌드박스스토어<br>소비자피해보상, 분쟁처리 등 자세한 내용은 홈페이지 하단의 쇼핑몰 이용안내 및 1:1문의를 이용해주시기 바랍니다			</div>
		</div>
<!-- //상품구매안내 -->
<!-- 상품사용후기 -->
<div id="prdReview" class="ec-base-tab grid5" style="display:none;">
			<div class="menu">
				<div><a href="#prdDetail">상품상세정보</a></div>
				<div><a href="#prdInfo">상품구매안내</a></div>
				<div class="selected"><a href="#prdReview">상품사용후기</a></div>
				<div><a href="#prdQnA">상품Q&amp;A</a></div>
				<div><a href="#prdRelated">관련상품</a></div>
			</div>
			<div class="board">
				<h3>상품사용후기</h3>
				<p class="desc">상품의 사용후기를 적어주세요.</p>

				<p class="nodata">게시물이 없습니다</p>
				<p class="ec-base-button typeBorder">
					<span class="gRight">
						<a href="/board/product/write.html?board_no=4&product_no=16&cate_no=360&display_group=1"><img src="/SkinImg/btn_writeReview.gif" alt="상품문의하기"/></a>
						<a href="/board/product/list.html?board_no=4&link_product_no=16"><img src="/SkinImg/btn_viewAll.gif" alt="모두 보기"/></a>
					</span>
				</p>

								
			</div>
		</div>
<!-- //상품사용후기 -->
<!-- 상품 Q&A -->
<div id="prdQnA" class="ec-base-tab grid5" style="display:none;">
			<div class="menu">
				<div><a href="#prdDetail">상품상세정보</a></div>
				<div><a href="#prdInfo">상품구매안내</a></div>
				<div><a href="#prdReview">상품사용후기</a></div>
				<div class="selected"><a href="#prdQnA">상품Q&amp;A</a></div>
				<div><a href="#prdRelated">관련상품</a></div>
			</div>

			<div class="board">
				<h3>상품 Q&amp;A</h3>
				<p class="desc">상품에 대해 궁금한 점을 해결해 드립니다.</p>

				<p class="nodata">게시물이 없습니다</p>
				<p class="ec-base-button typeBorder">
					<span class="gRight">
						<a href="/board/product/write.html?board_no=6&product_no=16&cate_no=360&display_group=1"><img src="/SkinImg/btn_writeQna.gif" alt="상품문의하기"/></a>
						<a href="/board/product/list.html?board_no=6"><img src="/SkinImg/btn_viewAll.gif" alt="모두 보기"/></a>
					</span>
				</p>

							</div>
		</div>
<!-- //상품Q&A -->
<div id="prdRelated" class="xans-element- xans-product xans-product-relation ec-base-tab grid5 xans-record-"><div class="menu">
				<div><a href="#prdDetail">상품상세정보</a></div>
                <div><a href="#prdreview">인증글보기</a></div>
				<div><a href="#prdInfo">상품구매안내</a></div>
				<div class="selected"><a href="#prdRelated">관련상품</a></div>
			</div>
<div class="relation">
				<h3>관련상품</h3>
				<div class="xans-element- xans-product xans-product-relationlist"><ul class="prdList">
<li class="item xans-record-">
							<div class="box">
								<a href="/product/칠각별-인형-25cm/121/category/268/display/1/"><img src="//sandboxstore.net/web/product/small/201703/121_shop1_390877.png" alt="칠각별 인형 25cm" class="thumb"/></a>
								<p><a href="/product/칠각별-인형-25cm/121/category/268/display/1/">칠각별 인형 25cm</a></p>
								<ul>
<li><strong class="">19,000원</strong></li>
									<li class="salePrice displaynone">19,000원</li>
								</ul>
</div>
						</li>
						<li class="item xans-record-">
							<div class="box">
								<a href="/product/수현-인형-25cm/122/category/268/display/1/"><img src="//sandboxstore.net/web/product/small/201703/122_shop1_888588.png" alt="수현 인형 25cm" class="thumb"/></a>
								<p><a href="/product/수현-인형-25cm/122/category/268/display/1/">수현 인형 25cm</a></p>
								<ul>
<li><strong class="">19,000원</strong></li>
									<li class="salePrice displaynone">19,000원</li>
								</ul>
</div>
						</li>
<li class="item xans-record-">
							<div class="box">
								<a href="/product/코아-인형-25cm/124/category/268/display/1/"><img src="//sandboxstore.net/web/product/small/201703/124_shop1_963827.png" alt="코아 인형 25cm" class="thumb"/></a>
								<p><a href="/product/코아-인형-25cm/124/category/268/display/1/">코아 인형 25cm</a></p>
								<ul>
<li><strong class="">19,000원</strong></li>
									<li class="salePrice displaynone">19,000원</li>
								</ul>
</div>
						</li>
					</ul>
</div>
			</div>
</div>
</div>

</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	
<script type="text/javascript" src="https://checkout.naver.com/customer/js/checkoutButton.js" charset="utf-8"></script>
<script type="text/javascript" src="//sandboxstore.net/ind-script/i18n.php?lang=ko_KR&domain=front&v=1909041079" charset="utf-8"></script>

<script type="text/javascript" src="/resources/ind-script/optimizer5.php"></script>
<script type="text/javascript" src="/resources/ind-script/optimizer4.php"></script>
<script type="text/javascript" src="https://sandboxstore.net/ind-script/optimizer.php?filename=rdXNTsMwDADgBxhXniOCN9g6QJMQm1bgblKvc5vEIT-M8fSEquJHjANNDlHrVv7ixFUj9qxRXFw6YR23DrQAa0W9Zyu26Dk6iaLz4tqxCeIOD-KWehQVa83mrPPnIiO_goAtu-MkZ4svhIcAqh9vK44mnKYUPYkHsiD7H1gVnUMjj8KnaWbWkcSMfDlGsx07DdmVlGJiIHUacd8yd8O-So6WzXiZ1JXuOeLQ0In5aayV6Sflrm2gVP3Va3AwQEM8hDWrhmMozW7-_mSmoysNbXF0Sd4qOFJAXZBeJa4m0yqsUaH8eFS-cJfgBfges9r3qWb8un5TxheBFmSaItASAhSBHkFRA5MbmsbGcRNlWJkd_5uo6Q1vIjWYOXlGr7-QuSywDfecTqp509SgcheV3geWvdc-9_wdwcS8Aw&type=js&k=a7ebd676923916ae23efab2a409323f9ba082f6d&t=1566452668"></script>
<script type="text/javascript" src="https://sandboxstore.net/ind-script/optimizer.php?filename=tVTBbtswDP2BXPcdQooddm6AntoOWNEPYGTaZiyJGkU1zb6-TNYNTTsnNbzABwMC36PE9_hczxHd8kpcKxBxyzI4wcJVPLpNcbT8lhab8sWdqquUwQ9u87Oi7F5_y8VX-46QWbgz8BF_yUJJ2_OFDfsaMekNS1xxUuEQUM7jWrFi9wzJ3pIUJQvqRJxizAEU_w2CnN0drymg-_EG7zlGTq4qhUm4yE21o7KlPK1hW5NXspZW11Svi8gyk-HEJQKt3eNv2d9SBPi1CwzNJFCsCvu-39cF5WlMnBFw5rBrKYTPKtpgCzXofgQlgug1pPS-5VmL47N5KEEorweLdUcH0FwezzzQbJaGbFOKTbTMZUIolLq5LBEVGlAYd-NDz_lI1puDWKvDEj2e3KExqC1sx7K7paKTwQVBfD_Jhwptay-lqWmZQ-3IQuYJAtmMWP4M7e_BbMK9HqkpH4mNIZtJ8HIdegwZL_iCHlITLtnA4ohM14vxW3Tpf7h_YA-W5gOfj8ERX31iK-5x625pQHctvLWoXoHv9955AQ&type=js&k=82b7644b5eb21683ebe86fec9187c8317685a256&t=1566930377"></script>	
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/ind-script/optimizer1.php"></script>	
<script type="text/javascript" src="/resources/ind-script/optimizer.php"></script>	
<%@include file="/common/main_bottom.jsp" %>