<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp" %>
<%@include file="/common/main_top.jsp" %>  

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/MyPage/MyPage.css">

	<div id="wrap">
		<div id="container">
			<div id="contents">
			
			
			
			<div class="titleArea">
			    <h2>MYPAGE</h2>
			</div>
<style>
.ec-base-box.typeMember.gMessage {width:780px; margin:0 auto; border:4px solid #f6f6f6; border-bottom:1px solid #eaeaea;}
.ec-base-box.typeMember .information .description {border-left:0;}
.ec-base-box.typeMember .information .description .txtEm {color:#000000;}
</style>

<div class="xans-element- xans-myshop xans-myshop-asyncbankbook"><ul>
<li class=" ">
            <strong class="title"><span>+</span> 적립금</strong>
            <strong class="data use"><span id="xans_myshop_bankbook_avail_mileage">${sessionScope.loginfo.mpoint}원</span></strong>
            <a href="/myshop/mileage/historyList.html" class="button"><img src="${pageContext.request.contextPath}/resources/MyPage/btn_result.gif" alt="조회"></a>
        </li>
        
        <li class="">
            <strong class="title"><span>+</span> 사용적립금</strong>
            <strong class="data"><span id="xans_myshop_bankbook_used_mileage">0원</span></strong>
        </li>
        <li class="displaynone">
           <strong class="title"><span>+</span> </strong>
           <strong class="data use"></strong>
           <a href="/myshop/deposits/historyList.html" class="button"><img src="${pageContext.request.contextPath}/resources/MyPage/btn_result.gif" alt="조회"></a>
        </li>
        <li>
            <strong class="title"><span>+</span> 총주문</strong>
            <strong class="data"><span id="xans_myshop_bankbook_order_price">0원</span>(<span id="xans_myshop_bankbook_order_count">0</span>회)</strong>
        </li>
        <li class="">
            <strong class="title"><span>+</span> 쿠폰</strong>
            <strong class="data"><span id="xans_myshop_bankbook_coupon_cnt">0</span><span>개</span></strong>
            <a href="/myshop/coupon/coupon.html" class="button"><img src="${pageContext.request.contextPath}/resources/MyPage/btn_result.gif" alt="조회"></a>
        </li>
    </ul>
</div>


<div class="xans-element- xans-myshop xans-myshop-asyncbenefit"><div class="ec-base-box typeMember gMessage ">
        <div class="information">
            <p class="thumbnail"><img src="//sandboxstore.net/web/upload/mg_img_profile.png" alt="" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" class="myshop_benefit_group_image_tag"></p>
            <div class="description">
                <span>저희 쇼핑몰을 이용해 주셔서 감사합니다. <strong class="txtEm"><span><span class="xans-member-var-name">김대훈</span></span></strong> 님은 <strong>[<span class="displaynone"><img src="" alt="" class="myshop_benefit_group_icon_tag"></span><span class="xans-member-var-group_name">ATTIRANCE Goods mall</span><span class="myshop_benefit_ship_free_message"></span>]</strong> 회원이십니다.</span>
                <p class="myshop_benefit_display_no_benefit"><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span> <span class="myshop_benefit_dc_min_price">1원 이상</span></strong> 구매시 <strong class="txtEm"><span class="myshop_benefit_dc_price">0</span><span class="myshop_benefit_dc_type">%</span></strong>을 <span class="myshop_benefit_use_dc">추가적립</span> 받으실 수 있습니다. <span class="myshop_benefit_dc_max_percent"></span></p>
                <p class="displaynone myshop_benefit_display_with_all"><strong class="txtEm"><span class="myshop_benefit_dc_pay"></span> <span class="myshop_benefit_dc_min_price_mileage">0원 이상</span></strong> 구매시 <strong class="txtEm"><span class="myshop_benefit_dc_price_mileage">0원</span><span class="myshop_benefit_dc_type_mileage"></span></strong>을 <span class="myshop_benefit_use_dc_mileage"></span> 받으실 수 있습니다. <span class="myshop_benefit_dc_max_mileage_percent"></span></p>
                <div class="displaynone gBlank5" id="">
                    <p class="displaynone  "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 까지 남은 구매금액은 <strong></strong> 입니다. (  구매금액 : )</p>
                    <p class="displaynone  "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 까지 남은 구매건수는 <strong></strong> 입니다. (  구매건수 : )</p>
                    <p class="displaynone  "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 까지 남은 구매금액은 <strong></strong>, 남은 구매건수는 <strong></strong> 입니다. (  구매금액 : ｜구매건수 : )</p>
                    <p class="displaynone  "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 까지 남은 구매금액은 <strong></strong>, 또는 남은 구매건수 <strong></strong> 입니다. (  구매금액 : ｜구매건수 : )</p>
                    <p id="" class="displaynone "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 등급을 유지하기 위해 남은 구매금액은 <strong></strong> 입니다. (  구매금액 : )</p>
                    <p id="" class="displaynone "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 등급을 유지하기 위해 남은 구매건수는 <strong></strong> 입니다. (  구매건수 : )</p>
                    <p id="" class="displaynone "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 등급을 유지하기 위해 남은 구매금액은 <strong></strong>, 남은 구매건수는 <strong></strong> 입니다. (  구매금액 : ｜구매건수 : )</p>
                    <p id="" class="displaynone "><strong>[<span class="displaynone "><img src="" alt="" class=""></span>]</strong> 등급을 유지하기 위해 남은 구매금액은 <strong></strong>, 또는 남은 구매건수 <strong></strong> 입니다. (  구매금액 : ｜구매건수 : )</p>
                    <p class="txtInfo txt11">승급 기준에 따른 예상 금액이므로 총주문 금액과 다를 수 있습니다.</p>
                </div>
            </div>
        </div>
     </div>
<div class="invite ec-base-box typeThinBg gMerge displaynone">
        <strong class="txtEm">주소를 복사하여 친구를 쇼핑몰에 초대해보세요.</strong>
        <p class="copy">
            <input type="text" id="" value="///?reco_id=" readonly="">
            &nbsp;<img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_copy_url.gif" alt="주소복사" onclick="">
        &nbsp;</p>
        <ul>
<li>- 친구에게는 가입즉시 의 이 지급됩니다.</li>
            <li>- </li>
        </ul>
</div>
</div>


<div class="xans-element- xans-myshop xans-myshop-orderstate "><div class="title">
        <h3>나의 주문처리 현황 <span class="desc">(최근 <em>3개월</em> 기준)</span>
</h3>
    </div>
<div class="state">
        <ul class="order">
<li>
                <strong>입금전</strong>
                <a href="/myshop/order/list.html?order_status=shipped_before" class="count"><span id="xans_myshop_orderstate_shppied_before_count">0</span></a>
            </li>
            <li>
                <strong>배송준비중</strong>
                <a href="/myshop/order/list.html?order_status=shipped_standby" class="count"><span id="xans_myshop_orderstate_shppied_standby_count">0</span></a>
            </li>
            <li>
                <strong>배송중</strong>
                <a href="/myshop/order/list.html?order_status=shipped_begin" class="count"><span id="xans_myshop_orderstate_shppied_begin_count">0</span></a>
            </li>
            <li>
                <strong>배송완료</strong>
                <a href="/myshop/order/list.html?order_status=shipped_complate" class="count"><span id="xans_myshop_orderstate_shppied_complate_count">0</span></a>
            </li>
        </ul>
<ul class="cs">
<li>
                <span class="icoDot"></span>
                <strong>취소 : </strong>
                <a href="/myshop/order/list.html?order_status=order_cancel" class="count"><span id="xans_myshop_orderstate_order_cancel_count">0</span></a>
            </li>
            <li>
                <span class="icoDot"></span>
                <strong>교환 : </strong>
                <a href="/myshop/order/list.html?order_status=order_exchange" class="count"><span id="xans_myshop_orderstate_order_exchange_count">0</span></a>
            </li>
            <li>
                <span class="icoDot"></span>
                <strong>반품 : </strong>
                <a href="/myshop/order/list.html?order_status=order_return" class="count"><span id="xans_myshop_orderstate_order_return_count">0</span></a>
            </li>
        </ul>
</div>
</div>

<div style="width:780px; margin:0 auto; color:#999999; font-size:11px; text-align:right; padding:5px 0 0 0;">* 최근 3개월 기준 주문정보입니다.</div>


<div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main ">
	<ul>
		<li><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick01.gif" alt="주문내역 조회"></a></li>
		<li><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick02.gif" alt="회원 정보 조회"></a></li>
		<li><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick03.gif" alt="관심 상품"></a></li>
		<li><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick04.gif" alt="적립금"></a></li>
		<li><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick05.gif" alt="게시물 관리"></a></li>
		<li><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick06.gif" alt="배송 주소록 관리"></a></li>
		<li class="coupon "><a href="coupon.jsp"><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick10.gif" alt="쿠폰"></a></li>
		<li class="consult "><a href=""><img src="${pageContext.request.contextPath}/resources/MyPage/mapage_quick08.gif" alt="1:1 맞춤상담"></a></li>
	</ul>
</div>



</div>
</div>
</div>
<%@include file="/common/main_bottom.jsp" %>