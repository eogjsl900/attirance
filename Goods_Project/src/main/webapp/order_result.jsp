
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ATTIRANCE</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/order/order_result6.css" >                      
</head>

<%@include file="/common/main_top.jsp" %>
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="titleArea">
				    <h2>주문완료</h2>
				</div>

				<form id="frm_order_result" name="frm_order_result">
					<div class="xans-element- xans-order xans-order-result xans-record-">
					
						<!-- 주문 완료 -->
						<div class="orderInfo">
						        <p>
						            <strong>고객님의 주문이 완료 되었습니다.</strong>
						          	주문내역 및 배송에 관한 안내는 <a href="#">주문조회</a> 를 통하여 확인 가능합니다.
						        </p>
						        <ul>
									<li>주문번호 : <strong>20190927-0000047</strong>
									</li>
						            <li>주문일자 : <span>2019-09-27 10:39:41</span>
									</li>
						        </ul>
						</div>
					
					
						<!-- 결제 정보 -->
						<div class="orderArea">
					        <div class="title2">
					            <h3>결제정보</h3>
					        </div>
					
					        <div class="ec-base-table">
					            <table border="1" summary="">
								<caption>결제정보</caption>
					            <colgroup>
									<col style="width:140px;">
										<col style="width:auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">최종결제금액</th>
					                    <td>
					                        <strong class="txtEm txt18">14,000</strong><strong class="txtEm">원</strong> <span class="txtEm displaynone"></span>
					                    </td>
					                </tr>
									<tr>
										<th scope="row">결제수단</th>
					                    <td>
					                        <strong><span>가상계좌(무통장 입금)</span></strong>
					                        <p>
					                            <span>계좌번호 : 신한은행 63790128739003<br><b>2019년 09월 28일(토)</b>까지 미입금시 주문이 자동취소됩니다.</span>
					                        </p>
					                        <p class="">
					                            	현금영수증 발행 :
					                            <strong class="displaynone">신청 <span class="txtNormal">() </span></strong>
					                            <strong class="">신청안함</strong>
					                        </p>
					                    </td>
					                </tr>
								</tbody>
								</table>
							</div>
					 	  </div>
						
						
						<!-- 주문상품정보 -->
						<div class="orderListArea">
					        <div class="title2">
					            <h3>주문 상품 정보</h3>
					        </div>
					
					        <!-- 기본배송 -->
					        <div class="ec-base-table typeList " nspace="normal">
					            <table border="1" summary="">
								<caption>기본배송</caption>
					                <colgroup>
										<col style="width:92px">
										<col style="width:auto">
										<col style="width:98px">
										<col style="width:75px">
										<col style="width:98px">
										<col style="width:98px">
										<col style="width:98px">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">이미지</th>
					                        <th scope="col">상품정보</th>
					                        <th scope="col">판매가</th>
					                        <th scope="col">수량</th>
					                        <th scope="col">적립금</th>
					                        <th scope="col">배송구분</th>
					                        <th scope="col">합계</th>
					                    </tr>
					                </thead>
									<tfoot class="right">
										<tr>
										<td colspan="7">
											<span class="gLeft">[기본배송]</span> 
											상품구매금액 
											<strong>
												11,500 
											</strong>
											+ 배송비 2,500 + 지역별배송비 0<span class="displaynone"> - 상품할인금액 0</span>
											 = 합계 : 
											 <strong class="txtEm gIndent10">
											 	<span class="txt18">14,000</span>원
											 </strong> 
										</td>
					                    </tr>
					                </tfoot>
					                <tbody class="xans-element- xans-order xans-order-normalresultlist center">
					                	<tr class="xans-record-">
											<td class="thumb">
												<a href="/product/detail.html?product_no=735&amp;cate_no=1">
													<img src="//sandboxstore.net/web/product/tiny/201908/74b51997b82c2ed096353b6da19b7b49.jpg" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="">
												</a>
											</td>
					                        <td class="left">
					                            <a href="/product/detail.html?product_no=735&amp;cate_no=1">
					                            	<strong>총몇명 텀블러</strong>
					                            </a>
					                            <div class="option ">
					                            
					                            </div>
					                        </td>
					                        <td class="right">
					                            <div class="">
					                                <strong>11,500원</strong>
					                            </div>
					                            <div class="displaynone">
					                                <strong>11,500원</strong>
					                            </div>
					                        </td>
					                        <td>1</td>
					                        <td><span class="txtInfo">-</span></td>
					                        <td>
					                        	<div class="txtInfo">
					                        		기본배송
												</div>
											</td>
					                        <td class="right">
												<strong>11,500원</strong><div class="displaynone"></div>
											</td>
					                    </tr>
									</tbody>
									</table>
								</div>
					    </div>
					
						
						
						<!-- 결제금액 -->
						<div class="totalArea">
						        <div class="ec-base-table typeList gBorder total">
						            <table border="1" summary="">
									<caption>결제금액</caption>
						            <colgroup>
										<col style="width:33.33%">
										<col style="width:33.33%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">
												<strong>총 주문 금액</strong>
												<a href="#" onclick="" class="more">
													<img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif" alt="내역보기">
												</a>
											</th>
						                    <th scope="col"><strong>총 결제금액</strong>
						                    </th>
						                </tr>
						              </thead>
									<tbody class="center">
										<tr>
											<td class="price2">
												<div class="box txt16">
													<strong>
														<span class="txt23">14,000</span>원
													</strong>
												</div>
											</td>
						                    <td>
						                    	<div class="box txtEm txt16">
													<strong>
														<span class="txt23">14,000</span>원
													</strong>
												</div>
											</td>
						                </tr>
						            </tbody>
									</table>
								</div>
						    </div>					
					
					
					<!-- 배송지정보 -->
					<div class="orderArea">
				        <div class="title2">
				            <h3>배송지정보</h3>
				        </div>
				        <div class="ec-base-table">
				            <table border="1" summary="">
							<caption>배송지 정보</caption>
				            <colgroup>
								<col style="width:140px;">
								<col style="width:auto;">
							</colgroup>
								<tbody>
									<tr>
										<th scope="row">받으시는분</th>
										<td>
											<span>송태풍</span>
										</td>
									</tr>
									<tr class="">
										<th scope="row">우편번호</th>
				                   		<td><span>05036</span></td>
				              		</tr>
									<tr class="">
									<th scope="row">주소</th>
									                    <td><span>서울특별시 광진구 광나루로46길 48 (구의동) 이대용빌라</span></td>
									                </tr>
									<tr class="displaynone">
									<th scope="row">도시</th>
									                    <td></td>
									                </tr>
									<tr>
									<th scope="row">일반전화</th>
									                    <td></td>
									                </tr>
									<tr>
									<th scope="row">휴대전화</th>
									                    <td><span>010-4349-0708</span></td>
									                </tr>
									<tr>
									<th scope="row">배송메시지</th>
									                    <td></td>
									                </tr>
								</tbody>
							</table>
						</div>
				    </div>
					
					
					
					<!-- 확인 버튼 -->
					<div class="ec-base-button">
				        <span class="gLeft">
				            <a href="#none" onclick="window.open('/myshop/order/issue/cash.html?order_id=20190927-0000047', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_order_cash1.gif" alt="현금영수증 신청"></a>
				        </span>
				        <span class="gRight">
				            <a href="#"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_ing.gif" alt="쇼핑계속하기"></a>
				            <a href="#"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_check.gif" alt="주문확인하기"></a>
				        </span>
				    </div>
					
					
					<!-- 이용안내 -->
					<div class="ec-base-help">
				        <h3>이용안내</h3>
				        <div class="inner">
				            <ol>
								<li class="item1">비회원 주문의 경우, 주문번호를 꼭 기억하세요. 주문번호로 주문조회가 가능합니다.</li>
				                <li class="item2">배송은 결제완료 후 지역에 따라 3일 ~ 7일 가량이 소요됩니다. </li>
				                <li class="item3">상품별 자세한 배송과정은 주문조회를 통하여 조회하실 수 있습니다.</li>
				                <li class="item4">주문의 취소 및 환불, 교환에 관한 사항은 이용안내의 내용을 참고하십시오.</li>
				            </ol>
						<h4>세금계산서 발행 안내</h4>
				            <ol>
								<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.</li>
				                <li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
				                <li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
				                <li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
				                <li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
				            </ol>
						<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
				            <ol>
								<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며</li>
				                <li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</li>
				                <li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
				            </ol>
						<h4>현금영수증 이용안내</h4>
				            <ol>
								<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</li>
				                <li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</li>
				                <li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</li>
				                <li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</li>
				                <li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
				            </ol>
						</div>
				    </div>
									
					
					
					
					</div>
				</form>
				
				
			</div>
		</div>
	</div>
			
			
<%@include file="/common/main_bottom.jsp" %>	


</body>
</html>