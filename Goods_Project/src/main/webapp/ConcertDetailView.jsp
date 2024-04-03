
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/common.jsp" %>
<html style="height: 100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>콘서트 예매</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/concert/concertDetail2.css">                
<style>
			#outbox{position: relative; width: 0px; height: 0px; top: -800px; font-size: 0;}
			.out_box_class .op_gr{bottom: 410px;}
			.out_box_class .btn_gr{bottom: 350px !important;}
			.op_fixed .icon_btn_x{right:20px;}
			.op_gr, .btn_gr{transition : all 0.3s ease !important;}

.cke_voice_label,
.cke_combo_label,
.cke_button_label { display: none !important; }
.cke_combo_open { display: inline-block !important; }

/* ie11 label bug fix */
label{ display: inline-block; }
label img { pointer-events: none; }

/* input X버튼 숨김 */
input[type=text]::-ms-clear{display: none; }



.b2c_aaa_list {
    background: #fff;
    width: 100%;
    position: relative;
    overflow: hidden;
    border-top: 1px solid #eee;
    cursor: pointer;
}
.b2c_bbb_gr {
    box-shadow: 0 0 15px #ddd;
    padding: 15px;
    padding: 15px 42px 8px 15px;
    word-break: keep-all;
    background: #fff;
}
.b2c_box_bbb {
    width: 260px;
    float: right;
    background: #fff;
    padding: 10px;
    box-sizing: border-box;
}


</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#aaa_top').click(function(){
		
		$('#aaa_list').toggle();
	})
	$('#aaa_list').click(function(){
		$('#op').css('display','none');
		$('#dr').css('display','block');
		$('#total_qty').text(   parseInt($('#total_qty').text())+parseInt(1)   );
		$('#total_amount').text(   parseInt($('#total_amount').text())+parseInt(3800)   );
		
	})
	
	$('#aaa_top2').click(function(){
		
		$('#aaa_list2').toggle();
	})
	$('#aaa_list2').click(function(){
		$('#op2').css('display','none');
		$('#dr2').css('display','block');
		$('#total_qty').text(   parseInt($('#total_qty').text())+parseInt(1)   );
		$('#total_amount').text(   parseInt($('#total_amount').text())+parseInt(3800)   );
		
	})
	
})

function cal1(num){
	
	var qty = parseInt($('#opt_qty1').text())+parseInt(num);
	var price = 3800*parseInt(num);
	var amount = parseInt(price)+parseInt($('#opt_amount1').text());

	var total_qty=parseInt(num)+parseInt($('#total_qty').text());
	var total_amount=parseInt(price)+parseInt($('#total_amount').text());
	
	if(qty>=1){
		$('#opt_qty1').text(qty);
		$('#opt_amount1').text(amount);
		$('#total_qty').text(total_qty);
		$('#total_amount').text(total_amount);
	
	}
}
    
function cal2(num){
	
	var qty = parseInt($('#opt_qty2').text())+parseInt(num);
	var price = 3800*parseInt(num);
	var amount = parseInt(price)+parseInt($('#opt_amount2').text());
	
	var total_qty=parseInt(num)+parseInt($('#total_qty').text());
	var total_amount=parseInt(price)+parseInt($('#total_amount').text());
	
	if(qty>=1){
		$('#opt_qty2').text(qty);
		$('#opt_amount2').text(amount);
		$('#total_qty').text(total_qty);
		$('#total_amount').text(total_amount);
	}
}

    

function sel(day){
	
	$.ajax({
		url : "select.cc",
		dataType: 'text', 
		type: 'post', 
		data: {
			'day': day // 전송할 파라미터
		},
		success : function(result) { 
				
				if($(result).find('span.day').text()=='2019-09-27'){
					
					var qty = $(result).find('span.qty').text();
					var price = $(result).find('span.price').text();
					var day = $(result).find('span.day').text(); 
					var name = $(result).find('span.name').text();
					
					$('#aaa_qty1').text(qty);
					$('#h_d').text(day);
					$('#op').css('display','block');
					
					
				}
				if($(result).find('span.day').text()=='2019-09-28'){
					
					var qty2 = $(result).find('span.qty').text();
					var price2 = $(result).find('span.price').text();
					var day2 = $(result).find('span.day').text(); 
					var name2 = $(result).find('span.name').text();
					
					$('#aaa_qty2').text(qty2);
					$('#h_d2').text(day2);
					$('#op2').css('display','block');
					
					
				}
				
				
				
			}
	});

}
function del(){
	$('#dr').css('display','none');
}
</script>
<link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css">
		
</head>

<body id="body">
<%@include file="/common/main_top.jsp" %>



<div id="container" class="b2c_bg wd_100p">
	<main id="contents">
 	<form name="frmRsv" id="frmRsv" method="post" target="popup_rsv">
		&nbsp;&nbsp;&nbsp;&nbsp;		
		<input type="hidden" name="q" id="q" value="">
	</form>
	<div class="b2c_box_aaa">
		<div class="b2c_box_aaa_01">
			<!-- 메인 이미지 -->
			<div class="b2c_pd_img mt_10">
				<div class="swiper-container swiper-container-horizontal">
					<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
						<div class="swiper-slide swiper-slide-active" style="width: 720px;">
							<img src="${pageContext.request.contextPath}/resources/concert/img/banner.jpg">
						</div>
						<div class="swiper-slide swiper-slide-next" style="width: 720px;">
							<img src="${pageContext.request.contextPath}/resources/concert/img/banner.jpg">
						</div>
					</div>
				</div>
			</div>
			<h3>군산 콘서트 페스티벌 - KPOP 콘서트</h3>
			<h4>#KPOP 콘서트 #위너 #아스트로 #위키미키</h4>
		</div>


		<!-- 요약정보 -->
		<div class="b2c_box_aaa_02">
			<h3>요약정보</h3>
			<ul>
				<li class="b2c_pd_info_01">거래방식<span> 배송 거래 </span></li>
				<li class="b2c_pd_info_02">전달일자<span>9/20 부터</span></li>
				<li class="b2c_pd_info_03">취소가능여부<span> 상세참고 </span>
				</li>
				<li class="b2c_pd_info_07">구매제한<span>아이디당 1개</span></li>
			</ul>
		</div>
		<!-- //요약정보 -->
				
		<!-- 본문이미지 -->
		<div class="pd_box_02 b2c_box_aaa_03">
			<!-- boxStyle prodViewDetail -->
			<div class="boxStyle prodViewDetail">
				<!-- tabStyle -->
				<ul class="tabStyle  corpStyle">
					<li class="current"><a href="#dtailTab01">상품 상세 정보</a></li>

<!-- 					<li class=""><a href="#dtailTab02">상품정보제공고시</a></li>
					<li class=""><a href="#dtailTab03">판매자 정보/분쟁조정</a></li>
					<li class=""><a href="#dtailTab04">상품 결제/수령 안내</a></li>
					<li class=""><a href="#dtailTab05">취소/환불 안내</a></li> -->
					
				</ul>
				<!-- //tabStyle -->
				<!-- feTabCont -->
				<div id="dtailTab01" class="feTabCont prodViewTab current"
					style="display: block;">
					<img
						src="http://www.ticketbay.co.kr/attach/corpImage/군산 상품상세.jpg">


					<!-- SNS 공유 // -->
					<!-- <<<<<< 티켓 외 카테고리에서만 출력 -->

					<ul class="snsShare" data-prod-dispno="23151200371793"
						data-prod-name="군산 콘서트 페스티벌 - KPOP 콘서트">
						<li class="icon_sns_fb"><a href="#" id="btnFacebookShare"
							class="btnShare">페이스북으로 공유하기</a></li>
						<li class="icon_sns_tw"><a href="#" id="btnTwitterShare"
							class="btnShare">트위터로 공유하기</a></li>
						<li class="icon_sns_bd"><a href="#" id="btnBandShare"
							class="btnShare">밴드로 공유하기</a></li>
					</ul>

					<!-- // SNS 공유 -->


				</div>
				<!-- //feTabCont -->

				<!-- feTabCont -->


				<!-- 0320 추가 feTabCont -->
				<div id="dtailTab02" class="feTabCont prodViewTab"
					style="display: none;">
					<h3>상품정보제공고시</h3>
					<!-- 0323 추가 tableStyle -->
					<table class="tableStyle dataTable info th-left">
						<caption>상품정보제공고시</caption>
						<colgroup>
							<col style="width: 150px;">
							<col style="width: 140px;">
							<col style="width: 230px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>


							<tr>
								<th scope="row">주최 또는 기획(공연에 한함)</th>
								<td>군산시, 차림문화원</td>

								<th scope="row" class="dot">주최 또는 기획(공연에 한함)</th>
								<td>군산시, 차림문화원</td>


							</tr>





							<tr>
								<th scope="row">주연(공연에 한함)</th>
								<td>상세페이지 참고</td>

								<th scope="row" class="dot">주연(공연에 한함)</th>
								<td>상세페이지 참고</td>


							</tr>





							<tr>
								<th scope="row">관람등급</th>
								<td>전체관람가</td>

								<th scope="row" class="dot">관람등급</th>
								<td>전체관람가</td>


							</tr>





							<tr>
								<th scope="row">상영·공연시간</th>
								<td>상세참고</td>

								<th scope="row" class="dot">상영·공연시간</th>
								<td>상세참고</td>


							</tr>





							<tr>
								<th scope="row">상영·공연장소</th>
								<td>월명종합경기장</td>

								<th scope="row" class="dot">상영·공연장소</th>
								<td>월명종합경기장</td>


							</tr>





							<tr>
								<th scope="row">취소·환불방법</th>
								<td>상세페이지 내 환불규정</td>

								<th scope="row" class="dot">취소·환불방법</th>
								<td>상세페이지 내 환불규정</td>


							</tr>





							<tr>
								<th scope="row">소비자상담 관련 전화번호</th>
								<td>티켓베이 고객센터 1644-0633</td>

								<th scope="row" class="dot">소비자상담 관련 전화번호</th>
								<td>티켓베이 고객센터 1644-0633</td>


							</tr>






							<tr>
								<th scope="row">예매 취소 조건</th>
								<td colspan="3">
									<ul class="board-list-pd">
										<li>
											<p class="tt">
												ㄱ. <strong>‘단순변심’, ‘착오구매’에 따른 예매 취소</strong>
											</p> 위의 경우 아래 표에 따라 환불하며, 만약 발권된 표를 반품하는 경우 반품 비용(2,500원)은 소비자가
											부담합니다.

											<table class="table-n-table"
												summary="취소기준 및 환불수수료 : 취소기준과 환불수수료에 대한 내용을 나타낸다.">
												<colgroup>
													<col style="width: 50%;">
													<col style="width: 50%;">
												</colgroup>

												<thead>
													<tr>
														<th scope="col">취소기준</th>
														<th scope="col">환불수수료</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td>예매 완료 ~ 취소 마감시간 전</td>
														<td>환불수수료 없음</td>
													</tr>
												</tbody>
											</table>
										</li>

										<li>
											<p class="tt">
												ㄴ. <strong>‘제품하자’, ‘오배송’에 따른 예매 취소 시</strong>
											</p> 위의 경우 아래 표에 따라 환불하며, 만약 발권된 표를 반품하는 경우 반품 비용(2,500원)은 공연사가
											부담합니다.

											<table class="table-n-table"
												summary="취소기준 및 환불수수료 : 취소기준과 환불수수료에 대한 내용을 나타낸다.">
												<colgroup>
													<col style="width: 50%;">
													<col style="width: 50%;">
												</colgroup>

												<thead>
													<tr>
														<th scope="col">취소기준</th>
														<th scope="col">환불수수료</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td>예매 완료 ~ 취소 마감시간 전</td>
														<td>환불수수료 없음</td>
													</tr>
												</tbody>
											</table>
										</li>
									</ul>
								</td>
							</tr>


						</tbody>
					</table>

					<!-- //tableStyle -->
				</div>
				<!-- //feTabCont -->


				<!-- feTabCont -->


				<div id="dtailTab03" class="feTabCont prodViewTab"
					style="display: none;">
					<!-- 0316 추가 -->
					<h3>판매자 정보</h3>
					<!-- tableStyle -->
					<table class="tableStyle dataTable info">
						<caption>상품 결제 안내</caption>
						<colgroup>
							<col style="width: 130px;">
							<col style="width: 130px;">
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr class="comAdrs">
								<th scope="row">상호</th>
								<td colspan="3">주식회사 팀플러스</td>
							</tr>
							<tr>
								<th scope="row">대표자</th>
								<td>한혜진</td>
								<th scope="row" class="dot">사업장소재지</th>
								<td>서울 강남구 논현동 213-23 4층 (논현동, 티플러스빌딩)</td>
							</tr>
							<tr>
								<th scope="row">사업자등록번호</th>
								<td>6658600946</td>
								<th scope="row" class="dot">통신판매업신고번호</th>
								<td></td>
							</tr>
						</tbody>
					</table>
					<!-- //tableStyle -->
					<!-- //0316 추가 -->

					<!-- 2016-10-05 추가시작 -->
					<h3>소비자 피해 분쟁 조정</h3>
					<p class="txt_terms">ㄱ. 소비자피해 분쟁조정 기구 안내 및 피해 구제 절차</p>
					<p class="txt_terms txt_terms2">- 위 상품과 관련한 피해 구제 관련 소비자피해
						분쟁조정 기구 및 피해 구제 절차</p>
					<!--tableStyle-->
					<table class="tableStyle dataTable info table_terms">
						<caption>소비자 피해 분쟁 조정</caption>
						<colgroup>
							<col style="width: 200px;">
							<col style="width: 210px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr class="comAdrs">
								<th scope="col">소비자피해 분쟁조정 기구</th>
								<th scope="col">주요 업무</th>
								<th scope="col">구제 절차</th>
							</tr>
							<tr>
								<td>한국소비자원,<br>소비자분쟁 조정 위원회
								</td>
								<td>전자상거래, 제조물책임 등 <br>종합적인 분쟁 조정
								</td>
								<td class="term_info">① 전화,인터넷을 통한 소비자 상담 진행 <br>
									<p class="request_info">
										<span class="txt_line">-</span>1372 번호 혹은
										소비자상담센터(www.ccn.go.kr) 내 상담신청 코너를 통하여 사건 관련 상세정보 안내 후 접수
									</p> ② 상담으로 미해결 시 한국소비자원 (http://www.kca.go.kr) 피해 구제 접수 <br>
									③ 한국소비자원 및 관련기관에서 사업자 통보 및 사실 조사 진행 <br> ④ 합의 권고 및 거부 시
									소비자 분쟁조정위원회 조정 진행
								</td>
							</tr>
							<tr>
								<td>전자거래분쟁조정위원회</td>
								<td>전자거래<br>(재화나 용역 거래 시 전자문서로처리되는 거래) 중 발생한 분쟁 조정
								</td>
								<td class="term_info">① 인터넷을 통한 분쟁조정 신청 <br>
									<p class="request_info">
										<span class="txt_line">-</span>전자거래분쟁조정위원회(https://ecmc.or.kr)
										내 분쟁 조정신청 코너를 통하여 사건 관련 상세정보 기재 후 신청
									</p> ② 전자거래분쟁조정위원회에서 사실관계 조사 및 합의 권고 <br> ③ 미합의 시 조정 진행을 통한
									조정안 권고
								</td>
							</tr>
							<tr>
								<td>콘텐츠분쟁조정위원회</td>
								<td>콘텐츠(영화, 공연 등)<br>관련한 분쟁 조정
								</td>
								<td class="term_info">① 인터넷을 통한 분쟁조정 신청 <br>
									<p class="request_info">
										<span class="txt_line">-</span>콘텐츠분쟁조정위원회(http://kcdrc.kr) 내
										분쟁 조정신청 코너를 통하여 사건 관련 상세정보 기재 후 신청
									</p> ② 콘텐츠분쟁조정위원회에서 사실관계 조사, 의견서 작성 및 합의 권고 <br> ③ 미합의 시 조정
									진행을 통한 조정안 권고
								</td>
							</tr>
						</tbody>
					</table>
					<p class="txt_terms">ㄴ. 소비자 피해구제 상담신청 대행</p>
					<p class="txt_terms txt_terms2">- 위 상품 관련 소비자 피해구제에 대하여 상담신청
						대행을 요청하시는 경우 티켓베이 고객센터(1644-0633)로 연락 부탁 드립니다.</p>
					<!--//tableStyle-->
					<!-- 2016-10-05 추가끝 -->
				</div>

				<!-- //feTabCont -->
				<!-- feTabCont -->
				<div id="dtailTab04" class="feTabCont prodViewTab"
					style="display: none;">
					<h3>상품 결제 안내</h3>
					<!-- tableStyle -->
					<table class="tableStyle dataTable">
						<caption>상품 결제 안내</caption>
						<colgroup>
							<col style="width: 140px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">결제방식</th>
								<td>무통장입금, 실시간 계좌이체, 신용카드, 휴대폰</td>
							</tr>
							<tr>
								<th scope="row">결제제한</th>
								<td>고객의 결제 안전을 위하여 신용카드 부정 사용 등 비정상적인 주문으로 판단될 경우, 상품주문 및
									결제를 제한할 수 있습니다.</td>
							</tr>
							<tr>
								<th scope="row">유의사항</th>
								<td>결제 관련 문제 발생 시, 티켓베이 고객센터 1644-0633으로 문의하여 주시기 바랍니다.</td>
							</tr>
						</tbody>
					</table>
					<!-- //tableStyle -->
					<h3>상품 수령 안내</h3>
					<!-- tableStyle -->
					<table class="tableStyle dataTable">
						<caption>상품 수령 안내</caption>
						<colgroup>
							<col style="width: 140px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">PIN거래</th>
								<td>
									<ul class="noBulList">

										<li>결제 완료를 하셔야 판매자가 PIN번호를 발송하며, 판매자가 보낸 PIN번호는 <b>MY티켓베이&gt;메시지&gt;PIN번호함</b>을
											통해 확인 가능합니다.
										</li>
										<li>잘못 전달된 PIN번호는 판매자가 구매자에게 재전달 할 수 있습니다.</li>
										<li class="strStyle04">PIN거래(즉시거래) 상품은 SMS에서도 확인 가능하며,
											PIN번호가 발급되지 않았을 시 고객센터1644-0633 으로 문의해 주세요.</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row">현장거래</th>
								<td>
									<ul class="noBulList">
										<li>현장거래 시 사전에 장소와 시간을 꼭 확인하시기 바랍니다.</li>
										<li>현장거래 시 티켓수령증을 꼭 출력하셔서 구매자의 인계확인 서명을 받으시기 바랍니다.</li>
										<li>상품수령증은 <b>MY티켓베이&gt;내가 구매한 상품&gt;거래진행상품</b>의 해당 주문
											상세 내역에서 출력 가능합니다.
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row">배송거래</th>
								<td>
									<ul class="noBulList">
										<li>결제가 완료되면 판매자가 택배 또는 등기 등으로 상품을 발송합니다.</li>
										<li>배송조회는 <b>MY티켓베이&gt;내가 구매한 상품&gt;거래진행상품</b>에서 확인하실 수
											있습니다.
										</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- //tableStyle -->
				</div>
				<!-- //feTabCont -->
				<!-- feTabCont -->
				<div id="dtailTab05" class="feTabCont prodViewTab"
					style="display: none;">




					<!-- //tableStyle -->

					<h3>환불 안내</h3>
					<!-- tableStyle -->
					<table class="tableStyle dataTable">
						<caption>환불 안내</caption>
						<colgroup>
							<col style="width: 140px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">무통장입금</th>
								<td>
									<ul class="noBulList">
										<li>무통장입금(가상계좌)으로 <span class="strStyle04">결제 후
												취소 시 티켓베이 '예치금'으로 적립됩니다.</span></li>
										<li>예치금은 [MY티켓베이&gt;혜택관리&gt;예치금관리]에서 <span
											class="strStyle04">본의명의 계좌로 출금신청</span> 가능하며, 신청일 기준 <span
											class="strStyle04">다음날 오후 2시 입금됩니다. (주말 및 공휴일 제외)</span></li>
										<li>출금계좌는 [MY티켓베이&gt;회원정보수정]에서 등록 및 수정이 가능합니다.</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row">카드결제</th>
								<td>
									<ul class="noBulList">
										<li>신용카드 및 체크카드 <span class="strStyle04">결제 후 당일
												취소 시 즉시 승인취소</span> 처리됩니다.
										</li>
										<li>결제 당일 취소가 아닌 경우 <span class="strStyle04">신용카드는
												영업일 기준 4~7일</span>, <span class="strStyle04">체크카드는 영업일 기준
												6~7일</span> 후 승인취소 처리됩니다.
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row">휴대폰</th>
								<td>
									<ul class="noBulList">
										<li>휴대폰 결제는 <span class="strStyle04">결제 후 당월 취소
												시 즉시 승인취소</span> 처리됩니다.
										</li>
										<li><span class="strStyle04">결제월과 취소월이 다른 경우 휴대폰
												결제 취소는 불가</span>하며, 취소금액은 예치금으로 적립 됩니다. (단, 휴대폰 요금은 청구 됨)</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row">실시간 계좌이체</th>
								<td>
									<ul class="noBulList">
										<li>취소 시 결제대행사 정책에 따라 <span class="strStyle04">이체된
												계좌로 환불</span> 처리 됩니다.
										</li>
									</ul>
								</td>
							</tr>

						</tbody>
					</table>
					<!-- //tableStyle -->


				</div>
				<!-- //feTabCont -->
			</div>
			<!-- //boxStyle prodViewDetail -->

		</div>
		<!-- //본문이미지 끝 -->

	</div>
	
	<!-- 우측 영역 시작 -->
	<div class="b2c_box_bbb">
	
		<div class="op_gr">
			<!-- 달력선택 -->
			<div id="option_type_1">
			
				<div class="b2c_day_gr">
				<input type="hidden" name="DATE_OPT" value="">		
					<div id="datepicker" class="hasDatepicker">
						<div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;">
					<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
					<a class="ui-datepicker-prev ui-corner-all" data-handler="prev" data-event="click" title="이전 날">
						<span class="ui-icon ui-icon-circle-triangle-w">이전 날</span>
					</a>
					<a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="다음 달">
						<span class="ui-icon ui-icon-circle-triangle-e">다음 달</span>
					</a>
					<div class="ui-datepicker-title">
						<select class="ui-datepicker-month" data-handler="selectMonth" data-event="change">
						<option value="0">1</option>
						<option value="1">2</option
						><option value="2">3</option>
						<option value="3">4</option>
						<option value="4">5</option>
						<option value="5">6</option>
						<option value="6">7</option>
						<option value="7">8</option>
						<option value="8" selected="selected">9</option>
						<option value="9">10</option>
						<option value="10">11</option>
						<option value="11">12</option>
						</select>
						<select class="ui-datepicker-year" data-handler="selectYear" data-event="change">
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019" selected="selected">2019</option>
							<option value="2020">2020</option>
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
							<option value="2025">2025</option>
							<option value="2026">2026</option>
							<option value="2027">2027</option>
							<option value="2028">2028</option>
							<option value="2029">2029</option>
						</select>
						</div>
						</div>
						<table class="ui-datepicker-calendar">
							<thead>
								<tr>
									<th scope="col" class="ui-datepicker-week-end">
										<span title="일요일">일</span>
									</th>
									<th scope="col">
										<span title="월요일">월</span>
									</th>
									<th scope="col">
										<span title="화요일">화</span>
									</th>
									<th scope="col">
										<span title="수요일">수</span>
									</th>
									<th scope="col">
										<span title="목요일">목</span>
									</th>
									<th scope="col">
										<span title="금요일">금</span>
									</th>
									<th scope="col" class="ui-datepicker-week-end">
										<span title="토요일">토</span>
									</th>
								</tr>
							</thead>
							
							<tbody>
								<tr>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">1</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">2</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">3</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">4</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">5</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">6</span>
									</td>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">7</span>
									</td>
								</tr>
								
								<tr>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">8</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">9</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">10</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">11</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">12</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">13</span>
									</td>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">14</span>
									</td>
								</tr>
								
								<tr>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">15</span>
									</td>
									<td class=" ui-datepicker-days-cell-over ui-datepicker-unselectable ui-state-disabled  ui-datepicker-current-day ui-datepicker-today">
										<span class="ui-state-default">16</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">17</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">18</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">19</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">20</span>
									</td>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">21</span>
									</td>
								</tr>
								
								<tr>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">22</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">23</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">24</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">25</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">26</span>
									</td>
									<td class=" " data-handler="selectDay" data-event="click" data-month="8" data-year="2019">
										<a class="ui-state-default" href="#" onclick="sel('2019-09-27')">27</a>
									</td>
									<td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="8" data-year="2019">
										<a class="ui-state-default" href="#" onclick="sel('2019-09-28')">28</a>
									</td>
								</tr>
								
								<tr>
									<td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">29</span>
									</td>
									<td class=" ui-datepicker-unselectable ui-state-disabled ">
										<span class="ui-state-default">30</span>
									</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
									<td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				</div>
			</div>
			
			<!-- // 달력선택 -->
			<!-- 옵션선택 -->
<div class="b2c_aaa_gr optType_296" data-type-seq="296" >
			    
				
	<div class="" id="op" style="display: none;">
    	<div class="b2c_aaa_top" id="aaa_top">옵션 선택</div>
		<div class="b2c_aaa_list" id="aaa_list" data-opt-remain="1432" data-opt-level="2" data-opt-name="입장권 무료 + 예매수수료 + 배송수수료" data-opt-seq="82622" data-opt-price="3800">
			<div class="b2c_aaa_list_txt">
				<div class="b2c_aaa_list_txt_cell">입장권 무료 + 예매수수료 + 배송수수료</div>
			</div>            
			<div class="b2c_aaa_list_ea">       
				<div class="b2c_aaa_list_ea_cell">        
					<span id="aaa_qty1"></span>        
					<div>3800원</div>       
				</div>
			</div>
		</div>
   	</div>
    <div class="b2c_bbb_gr mb_10" id="dr" data-opt-seq="82622" data-opt-type="1" data-unit-price="3800" data-opt-name="2019-09-27,입장권" 무료="" +="" 예매수수료="" 배송수수료="" data-type-seq="296" style="display: none;">
					<div class="icon_btn_x" onclick="del()">삭제</div>
				    <h3 id="h_d"></h3>
				    <h4>입장권 무료 + 예매수수료 + 배송수수료</h4>
				    <span class="dp_b wd_70p"></span>
				    <!-- 수량선택 -->      
				    <div class="in_box_02 mt_10">
						<div class="product_ea_edit">        
				        	<ul>                             
				            	<li>          
									<span class="ui-spinner ui-widget ui-widget-content ui-corner-all" style="height: 28px;">
										<input class="btn_ea_edit_txt countOp optQty82622 optTypeCtn_296 ui-spinner-input" onfocus="this.blur();" name="QTY" value="1" id="countOpAdd" title="구매 수량" data-saletype="1" data-unit-yn="Y" data-unit-value="1" data-limit-yn="Y" data-limit-qty="1429" data-max-qty="1429" readonly="readonly" aria-valuemin="1" aria-valuemax="1429" aria-valuenow="1" autocomplete="off" role="spinbutton">
										<a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button" onclick="cal1('1')">
											<span class="ui-button-text">
												<span class="ui-icon btn_ea_edit_01">▲</span>
											</span>
										</a>
										<a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button" onclick="cal1('-1')">
											<span class="ui-button-text">
												<span>▼</span>
											</span>
										</a>
									</span>         
								</li>        
							</ul>     <!-- // 수량선택 -->    
							<div class="w_txt">
								<span class="opt_qty" id="opt_qty1">1</span>개
								<span class="opt_amount" id="opt_amount1">3800</span>원
								
						
							</div>
							<div class="clear"></div>   
						</div>
					</div>		    
		</div>
		
	<div class="" id="op2" style="display: none;">
    	<div class="b2c_aaa_top" id="aaa_top2">옵션 선택</div>
		<div class="b2c_aaa_list" id="aaa_list2" data-opt-remain="1432" data-opt-level="2" data-opt-name="입장권 무료 + 예매수수료 + 배송수수료" data-opt-seq="82622" data-opt-price="3800">
			<div class="b2c_aaa_list_txt">
				<div class="b2c_aaa_list_txt_cell">입장권 무료 + 예매수수료 + 배송수수료</div>
			</div>            
			<div class="b2c_aaa_list_ea">       
				<div class="b2c_aaa_list_ea_cell">        
					<span id="aaa_qty2"></span>        
					<div>3800원</div>       
				</div>
			</div>
		</div>
   	</div>
    <div class="b2c_bbb_gr mb_10" id="dr2" data-opt-seq="82622" data-opt-type="1" data-unit-price="3800" data-opt-name="2019-09-27,입장권" 무료="" +="" 예매수수료="" 배송수수료="" data-type-seq="296" style="display: none;">
					<div class="icon_btn_x" onclick="del()">삭제</div>
				    <h3 id="h_d2"></h3>
				    <h4>입장권 무료 + 예매수수료 + 배송수수료</h4>
				    <span class="dp_b wd_70p"></span>
				    <!-- 수량선택 -->      
				    <div class="in_box_02 mt_10">
						<div class="product_ea_edit">        
				        	<ul>                             
				            	<li>          
									<span class="ui-spinner ui-widget ui-widget-content ui-corner-all" style="height: 28px;">
										<input class="btn_ea_edit_txt countOp optQty82622 optTypeCtn_296 ui-spinner-input" onfocus="this.blur();" name="QTY" value="1" id="countOpAdd" title="구매 수량" data-saletype="1" data-unit-yn="Y" data-unit-value="1" data-limit-yn="Y" data-limit-qty="1429" data-max-qty="1429" readonly="readonly" aria-valuemin="1" aria-valuemax="1429" aria-valuenow="1" autocomplete="off" role="spinbutton">
										<a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button" onclick="cal2('1')">
											<span class="ui-button-text">
												<span class="ui-icon btn_ea_edit_01">▲</span>
											</span>
										</a>
										<a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button" onclick="cal2('-1')">
											<span class="ui-button-text">
												<span>▼</span>
											</span>
										</a>
									</span>         
								</li>        
							</ul>     <!-- // 수량선택 -->    
							<div class="w_txt">
								<span class="opt_qty" id="opt_qty2">1</span>개
								<span class="opt_amount" id="opt_amount2">3800</span>원
							</div>
							<div class="clear"></div>   
						</div>
					</div>		    
		</div>
		
	</div>
		
			
			
			
			<div id="option_type_2">
			
					
				
			</div>
			<div id="SELECT_OP1">
			</div>
			<div id="SELECT_OP2">
			</div>
			
			
			<!-- 배송비 -->
			
			<!-- // 배송비 -->
			
			
				
			<!-- 총 수량/금액 -->
			 <div class="b2c_ddd_gr mt_10"> 
				<div class="b2c_ddd_txt_01">
					<div class="b2c_ddd_txt_01_a">총 수량</div>
					<div class="b2c_ddd_txt_01_b"><span id="total_qty">0</span>개</div>
				</div>
				<div class="b2c_ddd_txt_02">
					<div class="b2c_ddd_txt_02_a">총 금액</div>
					<div class="b2c_ddd_txt_02_b"><span id="total_amount">0</span>원</div>
				</div>
			</div>
			<!-- // 총 수량/금액 -->
			
			
			<!-- 부가정보 -->
			
			<!-- // 부가정보 -->
		</div>	
			
		
		<div class="btn_gr">
			<!-- 버튼영역 -->
			<div class="b2c_btn_gr mt_10">
				<button type="submit" data-btn-type="1" class="btn_st_01 float_l wd_50p submit_btn">장바구니</button>
				<button type="submit" data-btn-type="2" class="btn_st_02 float_r wd_50p submit_btn">구매하기</button>
				<!-- button type="submit" class="btn_st_01 wd_100p">구매 불가</button -->
				<div class="clear"></div>
			</div>
			<!-- // 버튼영역 -->
		</div>
		
		<!-- 스크롤이 설정한 높이 이상 내려갔을때 스타일추가하기 -->
		<script>
			if (jQuery(window).width() > 0) {
		    jQuery(window).on("scroll",function(ev){
		        if(jQuery(window).scrollTop() > 1000 ) { /**높이 픽셀 조정**/
		            jQuery('.b2c_box_bbb').addClass('op_fixed');  /**위의 높이에서 .op_fixed 클래스를 추가합니다. 스타일에서 자유롭게 수치 조절 가능합니다.**/
		        }
		        else{
					jQuery('.b2c_box_bbb').removeClass('op_fixed');
		        }
		        return false;
		    });
			}
		</script>
		
	</div>
	<!-- // 우측 영역 끝 -->
	
	
	</main>

</div>

<%@include file="/common/main_bottom.jsp" %>	


<style data-styled="" data-styled-version="4.3.2"></style>
</body>
</html>