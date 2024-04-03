<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>
<%@include file="/common/common.jsp" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/cart/cartlist.css">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp84622080'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
       
         
    });
    
    function buy(){
    	 IMP.request_pay({
             pg : 'kakaopay', // version 1.1.0부터 지원.
             pay_method : 'card',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : '${shopinfo[0].pname} 외' ,
             amount : '${sessionScope.totalAmount}',
             buyer_email : 'eogjs123@naver.com', 
             buyer_name : '구매자이름',
             buyer_tel : '010-1234-5678',
             buyer_addr : '서울특별시 강남구 삼성동',
             buyer_postcode : '123-456',
             m_redirect_url : '<%=request.getContextPath()%>/index.jsp'
         }, function(rsp) {
             if ( rsp.success ) {
                 var msg = '결제가 완료되었습니다.';
                 msg += '고유ID : ' + rsp.imp_uid;
                 msg += '상점 거래ID : ' + rsp.merchant_uid;
                 msg += '결제 금액 : ' + rsp.paid_amount;
                 msg += '카드 승인번호 : ' + rsp.apply_num;
                 location.href="<%=request.getContextPath()%>/calculate.mall";
             } else {
                 var msg = '결제에 실패하였습니다.';
                 msg += '에러내용 : ' + rsp.error_msg;
             }
             alert(msg);
             
         });
    	 
    	 
    	 
    }
    
    function buy1(){
    	 IMP.request_pay({
             pg : 'danal', // version 1.1.0부터 지원.
             pay_method : 'phone',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : '${shopinfo[0].pname} 외' ,
             amount : '${sessionScope.totalAmount}',
             buyer_email : 'eogjs123@naver.com', 
             buyer_name : '구매자이름',
             buyer_tel : '010-1234-5678',
             buyer_addr : '서울특별시 강남구 삼성동',
             buyer_postcode : '123-456',
             m_redirect_url : '<%=request.getContextPath()%>/index.jsp'
         }, function(rsp) {
             if ( rsp.success ) {
                 var msg = '결제가 완료되었습니다.';
                 msg += '고유ID : ' + rsp.imp_uid;
                 msg += '상점 거래ID : ' + rsp.merchant_uid;
                 msg += '결제 금액 : ' + rsp.paid_amount;
                 msg += '카드 승인번호 : ' + rsp.apply_num;
                 location.href="<%=request.getContextPath()%>/calculate.mall";
             } else {
                 var msg = '결제에 실패하였습니다.';
                 msg += '에러내용 : ' + rsp.error_msg;
             }
             alert(msg);
             
         });
    }
    
    function buy2(){
    	 IMP.request_pay({
             pg : 'html5_inicis', // version 1.1.0부터 지원.
             pay_method : 'card',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : '${shopinfo[0].pname} 외' ,
             amount : '${sessionScope.totalAmount}',
             buyer_email : 'eogjs123@naver.com', 
             buyer_name : '구매자이름',
             buyer_tel : '010-1234-5678',
             buyer_addr : '서울특별시 강남구 삼성동',
             buyer_postcode : '123-456',
             m_redirect_url : '<%=request.getContextPath()%>/index.jsp'
         }, function(rsp) {
             if ( rsp.success ) {
                 var msg = '결제가 완료되었습니다.';
                 msg += '고유ID : ' + rsp.imp_uid;
                 msg += '상점 거래ID : ' + rsp.merchant_uid;
                 msg += '결제 금액 : ' + rsp.paid_amount;
                 msg += '카드 승인번호 : ' + rsp.apply_num;
                 location.href="<%=request.getContextPath()%>/calculate.mall";
             } else {
                 var msg = '결제에 실패하였습니다.';
                 msg += '에러내용 : ' + rsp.error_msg;
             }
             alert(msg);
             
         });
    }
    </script>

<body>
${sessionScope.loginfo.id} <br>
mall\OrderList.jsp <br>

	<div id="wrap">
		<div id="container">
			<div id="contents">
			
			<div class="titleArea">
			    <h2>장바구니</h2>
			</div>

<div class="xans-element- xans-order xans-order-basketpackage ">

	<div class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember  "><div class="information">
	            <h3 class="title">혜택정보</h3>
	            <div class="description">
	                <div class="member ">
	                    <p style="color:#404040;font-size: 12px;"><strong>${loginfo.name }</strong> 님은, [ATTIRANCE Goods mall] 회원이십니다.</p>
	                    <ul class="">
	<li class="displaynone">
	<span class="displaynone">0</span> 이상 <span class="displaynone"></span> 구매시 <span></span>을 추가할인 받으실 수 있습니다. <span class="displaynone">(최대 0)</span>
	</li>
	                        <li class="">
	<span class="">1원</span> 이상 <span class="displaynone"></span> 구매시 <span>0%</span>을 추가적립 받으실 수 있습니다. <span class="displaynone">(최대 )</span>
	</li>
	                    </ul>
	</div>
	                <ul class="mileage">
	<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong>3,000원</strong></a></li>
	                    <li class="displaynone"><a href="/myshop/deposits/historyList.html">예치금 : <strong></strong></a></li>
	                    <li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>0개</strong></a></li>
	                </ul>
	</div>
	        </div>
	</div>
	
	
	
	<!-- 탭 -->
	<div class="xans-element- xans-order xans-order-tabinfo ec-base-tab typeLight ">
	<ul class="menu">
		<li class="selected "><a href="/order/basket.html">국내배송상품(${fn:length(sessionScope.shopLists) })</a></li>
	</ul>
	<p class="right displaynone">장바구니에 담긴 상품은 7일 동안 보관됩니다.</p>
	</div>
	
	
	
	<!-- 일반상품 -->
	<div class="orderListArea ec-base-table typeList gBorder">
		
		<div class="xans-element- xans-order xans-order-normtitle title ">
		</div>

	<form name="f" action="" method="post">
	<table border="1" summary class="xans-element- xans-order xans-order-normnormal xans-record-">
		<caption>기본배송</caption>
		<colgroup>
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:98px">
			<col style="width:75px">
			<col style="width:98px">
			<col style="width:98px">
			<col style="width:85px">
			<col style="width:98px">
		</colgroup>
		<thead>
			<tr align="center">
				<th scope="col">이미지</th>
				<th scope="col">상품정보</th>
				<th scope="col">판매가</th>
				<th scope="col">주문 수량</th>
				<th scope="col" class="mileage">적립금</th>
				<th scope="col">배송비</th>
				<th scope="col">합계</th>
			</tr>
		</thead>
		
		
		<tbody class="xans-element- xans-order xans-order-list center">
		
		<c:forEach items="${sessionScope.shopLists}" var="shopinfo" varStatus="status"> 
			<tr class="xans-record-">
				<%-- <td align="center">
					${shopinfo.pnum}
				</td> --%>				
				<td class="thumb gClearLine">
					<a href="item_detail.prd?pmkey=${shopinfo.pnum }">
					<img alt="사진" src="<%=request.getContextPath()%>/resources/prd_image/${shopinfo.pimage}" width="80" height="80">
					</a>
				</td>				
				<td class="center gClearLine">
					<a href="item_detail.prd?pmkey=${shopinfo.pnum }"><strong>${shopinfo.pname}</strong></a>
				</td>
				<td class="right">
					<div class>
					<strong>${shopinfo.price}	</strong>
					</div>
				</td>
				<td align="right">
						<span class="ec-base-qty">
							${shopinfo.qty}
							<input id="quantity" name="quantity_name_0" size="1" type="hidden" value="${shopinfo.qty}">
						</span>
				</td>
				<td >
					<span class="txtInfo">
					<img src="${pageContext.request.contextPath}/resources/cart/ico_product_point.gif">
						${shopinfo.price / 100}
					</span>
				</td>
				<td >
					<c:if test="${sessionScope.totalAmount >= 30000 }">
						무료
					</c:if>
					<c:if test="${sessionScope.totalAmount < 30000 }">
						유료
					</c:if>
				</td>
				<td class="right">
					<strong>${shopinfo.amount}</strong>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>	
	</form>
	
	
<%-- 	<div class="xans-element- xans-order xans-order-selectorder ec-base-button ">
	
		<span class="gLeft">
            <strong class="text">선택상품을</strong>
            <a href="#none" onclick="return multiDelete()"><img src="${pageContext.request.contextPath}/resources/cart/btn_delete2.gif" alt="삭제하기"></a>
        </span>
	
		<span class="gRight">
            <a href="#none" onclick=""><img src="${pageContext.request.contextPath}/resources/cart/btn_clear.gif" alt="장바구니비우기"></a>
        </span>
	
	</div> --%>
	
	
	<div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  ">
		<table border="1" summary>
		<caption>총 주문금액</caption>
		<colgroup>
			<col style="width:22%;">
			<col style="width:22%;" class="displaynone">
			<col style="width:22%;">
			<col style="width:22%;" class="displaynone">
			<col style="width:auto;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col"><strong>총 상품금액</strong></th>
				<th scope="col"><strong>총 배송비</strong></th>
				<th scope="col"><strong>결제예정금액</strong></th>
			</tr>
        </thead>
        <tbody class="center">
        <tr>
        	<td>
        		<div class="box txt16">
					<strong><span class="txt23" > ${sessionScope.totalAmount}</span>원</strong> 
				</div>
        	</td>
        	<td>
        		<div class="box shipping txt16">
        			<strong class="txt23">+ </strong>
        			<strong><span class="txt23">
        			<c:if test="${sessionScope.totalAmount >= 30000 }">
						무료
					</c:if>
					<c:if test="${sessionScope.totalAmount < 30000 }">
						2,500원
					</c:if>
        			</span></strong>
        		</div>
        	</td>
        	<td>
        		<div class="box txtEm txt16">
        			<strong class="txt23">= </strong>
        			<strong>
        			<span class="txt23">
        			<c:if test="${sessionScope.totalAmount >= 30000 }">
						${sessionScope.totalAmount}
					</c:if>
					<c:if test="${sessionScope.totalAmount < 30000 }">
						${sessionScope.totalAmount+2500}
					</c:if>
        				
        			</span>원</strong>
        		</div>
        	</td>
        </tr>
        </tbody>
		</table> 
	</div>
	
	
	<!-- 주문버튼 -->
	<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
		
		
		<input type="image" onclick="buy()" src="${pageContext.request.contextPath}/resources/cart/btn_payment.gif">
		<input type="image" onclick="buy1()" src="${pageContext.request.contextPath}/resources/cart/btn_payment.gif">
		<input type="image" onclick="buy2()" src="${pageContext.request.contextPath}/resources/cart/btn_payment.gif">
		<%-- <a href="preorder.mall" onclick="" class=" ">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_payment.gif" alt="결제하기">
		</a> --%>
	
		<span class="gRight">
			<a href="">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_ing.gif" alt="쇼핑계속하기">
			</a>
		</span>
	</div>
	</div>
</div>
</form>

<div class="xans-element- xans-order xans-order-basketguide ec-base-help ">
	<h3>이용안내</h3>
	<div class="inner">
        <h4>장바구니 이용안내</h4>
        <ol>
            <li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
            <li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
            <li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
            <li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
        </ol>
		<h4>무이자할부 이용안내</h4>
        <ol>
			<li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
            <li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
            <li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
        </ol>
	</div>
</div>


</div>	
</div>
</div>
	
	<div class="">
        <h3>회원인증</h3>
        <div class="ec-base-table typeWrite">
            <table border="1" summary="">
<caption>회원인증</caption>
            <colgroup>
<col style="width:150px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr class="displaynone">
<th scope="row">회원구분</th>
                    <td>개인</td>
                </tr>
<tr>
<th scope="row">인증여부</th>
                    <td>
                        <strong class="txtEm">미인증</strong>
                        <ul class="certifInfo">
                            <li>정보통신망법에 따라 고객의 주민등록번호를 수집하지 않습니다.</li><li>안전한 전자상거래를 위하여 아래 수단으로 본인인증을 완료하여 주시기 바랍니다.</li>                        </ul>
</td>
                </tr>
<tr class="">
<th scope="row">회원인증</th>
                    <td>
                        <input id="personal_type0" name="personal_type" fw-filter="isFill" fw-label="회원인증" fw-msg="" value="m" type="radio" checked="checked"  /><label for="personal_type0" >휴대폰인증</label>                        <div class="certifForm" id="ipinWrap">
                            <a href="#none" onclick="ipinPopup('sandboxstore'); return false;"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_check6.gif" alt="아이핀 인증"/></a>
                            <p class="certifInfo">아이핀이란, 회원님의 개인정보 보호를 위해 웹사이트에 주민등록번호를 제공하지 않고 본인임을 확인하는 인터넷상의 개인식별번호 서비스입니다.<br/>아이핀을 통한 가입을 원하시면 아이핀 인증 버튼을 눌러 진행해 주십시오.</p>
                        </div>
                        <div class="certifForm" id="mobileWrap">
                            <a href="#none" onclick="mobilePopup('sandboxstore' , 'dream' ); return false;"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_check5.gif" alt="휴대폰 인증"/></a>
                            <p class="certifInfo">본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
                        </div>
                        <div class="certifForm" id="emailWrap">
                            <p class="certifInfo">기본정보 &gt; 이메일 항목에 입력하신 정보로 본인인증을 진행합니다.<br/>정보수정 후에 입력하신 이메일 주소로 인증 메일이 발송되오니, 확인해 주시기 바랍니다.</p>
                        </div>
                    </td>
                </tr>
</tbody>
</table>
</div>
    </div>
<h3 class=" ">기본정보</h3>
<p class="required "><img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/> 필수입력사항</p>
<div class="ec-base-table typeWrite">
        <table border="1" summary="">
<caption>회원 기본정보</caption>
        <colgroup>
<col style="width:150px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr>
<th scope="row">아이디 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td>
                    <input id="member_id" name="member_id" fw-filter="isFill&isFill&isMin[4]&isMax[16]&isIdentity" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"  />                     (영문소문자/숫자, 4~16자)
                </td>
            </tr>
<tr>
<th scope="row">비밀번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수"/></th>
                <td><input id="passwd" name="passwd" fw-filter="isMin[4]&isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" disabled="1" value="" type="password"  /> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
            </tr>
<tr class="">
<th scope="row">비밀번호 확인 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td><input id="user_passwd_confirm" name="user_passwd_confirm" fw-filter="isMatch[passwd]" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" disabled="1" value="" type="password"  /> <span id="pwConfirmMsg"></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">새 비밀번호</th>
                <td><input id="new_passwd" name="new_passwd" fw-filter="isMin[4]&isMax[16]" fw-label="새 비밀번호" fw-msg="" maxlength="16" disabled="1" value="" type="password"  /> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</td>
            </tr>
<tr class="displaynone">
<th scope="row">새 비밀번호 확인</th>
                <td><input id="new_passwd_confirm" name="new_passwd_confirm" fw-filter="isMin[4]&isMax[16]" fw-label="비밀번호" fw-msg="" maxlength="16" disabled="1" value="" type="password"  /> <span id="new_pwConfirmMsg"></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">비밀번호 확인 질문 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td><select id="hint" name="hint" fw-filter="" fw-label="hint" fw-msg="" >
<option value="hint_01">기억에 남는 추억의 장소는?</option>
<option value="hint_02">자신의 인생 좌우명은?</option>
<option value="hint_03">자신의 보물 제1호는?</option>
<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
<option value="hint_15">내가 좋아하는 캐릭터는?</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">비밀번호 확인 답변 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td><input id="hint_answer" name="hint_answer" fw-filter="" fw-label="비밀번호 확인시 답변" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /></td>
            </tr>
<tr style="display:">
<th scope="row" id="nameTitle">이름 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">이름(영문) <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="name_en" name="name_en" fw-filter="isMax[30]" fw-label="이름(영문)" fw-msg="" class="ec-member-name" placeholder="" maxlength="30" value="" type="text"  /> (이름 - 성 형식으로 입력해 주세요.)</td>
            </tr>
<tr class="displaynone">
<th scope="row"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">법인명 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">법인번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">상호명 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">사업자번호 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">국적 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="">
<th scope="row">주소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수"/></th>
                <td>
                    <input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text"  />                    <a href="#none" onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'ko_KR');" id="postBtn"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif" alt="우편번호"/></a><br/>
                    <input id="addr1" name="addr1" fw-filter="isFill" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"  /> 기본주소<br/>
                    <input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /> 나머지주소 (선택입력가능)                </td>
            </tr>
<tr class="">
<th scope="row">일반전화 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="phone1" name="phone[]" fw-filter="isNumber&isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" >
<option value="02">02</option>
<option value="031">031</option>
<option value="032">032</option>
<option value="033">033</option>
<option value="041">041</option>
<option value="042">042</option>
<option value="043">043</option>
<option value="044">044</option>
<option value="051">051</option>
<option value="052">052</option>
<option value="053">053</option>
<option value="054">054</option>
<option value="055">055</option>
<option value="061">061</option>
<option value="062">062</option>
<option value="063">063</option>
<option value="064">064</option>
<option value="0502">0502</option>
<option value="0503">0503</option>
<option value="0504">0504</option>
<option value="0505">0505</option>
<option value="0506">0506</option>
<option value="0507">0507</option>
<option value="070">070</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="phone2" name="phone[]" maxlength="4" fw-filter="isNumber&isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"  />-<input id="phone3" name="phone[]" maxlength="4" fw-filter="isNumber&isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"  /></td>
            </tr>
<tr class="">
<th scope="row">휴대전화 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수"/></th>
                <td><select id="mobile1" name="mobile[]" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" >
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"  />-<input id="mobile3" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"  /></td>
            </tr>
<tr class="">
<th scope="row">SMS 수신여부 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td><input id="is_sms0" name="is_sms" fw-filter="isFill" fw-label="is_sms" fw-msg="" value="T" type="radio"  /><label for="is_sms0" >수신함</label>
<input id="is_sms1" name="is_sms" fw-filter="isFill" fw-label="is_sms" fw-msg="" value="F" type="radio" checked="checked"  /><label for="is_sms1" >수신안함</label><p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
</td>
            </tr>
<tr>
<th scope="row">이메일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td>
                    <input id="email1" name="email1" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" class="mailId" value="" type="text"  />@<input id="email2" name="email2" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" class="mailAddress" readonly="readonly" value="" type="text"  /><select id="email3" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" >
<option value="" selected="selected">- 이메일 선택 -</option>
<option value="naver.com">naver.com</option>
<option value="daum.net">daum.net</option>
<option value="nate.com">nate.com</option>
<option value="hotmail.com">hotmail.com</option>
<option value="yahoo.com">yahoo.com</option>
<option value="empas.com">empas.com</option>
<option value="korea.com">korea.com</option>
<option value="dreamwiz.com">dreamwiz.com</option>
<option value="gmail.com">gmail.com</option>
<option value="etc">직접입력</option>
</select> <span id="emailMsg"></span>
                    <p class="displaynone">이메일 주소 변경 시 로그아웃 후 재인증을 하셔야만 로그인이 가능합니다.<br/>인증 메일은 24시간 동안 유효하며, 유효 시간이 만료된 후에는 가입 정보로 로그인 하셔서 재발송 요청을 해주시기 바랍니다.</p>
                </td>
            </tr>
<tr class="">
<th scope="row">이메일 수신여부 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"/></th>
                <td><input id="is_news_mail0" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="T" type="radio"  /><label for="is_news_mail0" >수신함</label>
<input id="is_news_mail1" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="F" type="radio" checked="checked"  /><label for="is_news_mail1" >수신안함</label><p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">평생회원</th>
                <td>
                    <input id="is_lifetime0" name="is_lifetime" fw-filter="" fw-label="is_lifetime" fw-msg="" value="T" type="radio"  /><label for="is_lifetime0" >동의함</label>
<input id="is_lifetime1" name="is_lifetime" fw-filter="" fw-label="is_lifetime" fw-msg="" value="F" type="radio" checked="checked"  /><label for="is_lifetime1" >동의안함</label>                    <ul class="txtDesc">
<li>평생회원은 <strong>샌드박스 스토어</strong> 회원 탈퇴시까지 휴면회원으로 전환되지 않습니다.</li>
                        <li class="displaynone">지금 평생회원으로 전환하시면 쿠폰혜택을 드립니다.(전환시 최초 1회)</li>
                        <li class="displaynone">평생회원 쿠폰혜택을 받으신 경우, 3개월간 평생회원을 유지하셔야 합니다.</li>
                    </ul>
</td>
            </tr>
</tbody>
</table>
</div>
<h3 class=" ">추가정보</h3>
<div class="ec-base-table typeWrite ">
        <table border="1" summary="">
<caption>회원 추가정보</caption>
        <colgroup>
<col style="width:150px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr class="displaynone">
<th scope="row">별명 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="nick_name" name="nick_name" fw-filter="" fw-label="별명" fw-msg="" class="inputTypeText" placeholder="" maxlength="20" value="-" type="text"  /> (한글2~10자/영문 대소문자4~20자/숫자 혼용가능)</td>
            </tr>
<tr class="displaynone">
<th scope="row">성별 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="is_sex0" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" 0="disabled" value="M" type="radio"  /><label for="is_sex0" >남자</label>
<input id="is_sex1" name="is_sex" fw-filter="" fw-label="성별" fw-msg="" 0="disabled" value="F" type="radio"  /><label for="is_sex1" >여자</label></td>
            </tr>
<tr class="">
<th scope="row">생년월일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="" alt="필수"/></th>
                <td><input id="birth_year" name="birth_year" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" readonly="readonly" value="" type="text"  /> 년 <input id="birth_month" name="birth_month" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" readonly="readonly" value="" type="text"  /> 월 <input id="birth_day" name="birth_day" fw-filter="isFill" fw-label="생년월일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" readonly="readonly" value="" type="text"  /> 일 <span class="gIndent20 displaynone"><input id="is_solar_calendar0" name="is_solar_calendar" fw-filter="isFill" fw-label="생년월일" fw-msg="" disabled="1" value="T" type="radio" checked="checked"  /><label for="is_solar_calendar0" >양력</label>
<input id="is_solar_calendar1" name="is_solar_calendar" fw-filter="isFill" fw-label="생년월일" fw-msg="" disabled="1" value="F" type="radio"  /><label for="is_solar_calendar1" >음력</label></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">결혼기념일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="marry_year" name="marry_year" fw-filter="" fw-label="결혼 기념일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"  /> 년 <input id="marry_month" name="marry_month" fw-filter="" fw-label="결혼 기념일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 월 <input id="marry_day" name="marry_day" fw-filter="" fw-label="결혼 기념일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 일</td>
            </tr>
<tr class="displaynone">
<th scope="row">배우자생일 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="partner_year" name="partner_year" fw-filter="" fw-label="배우자 생일" fw-msg="" class="inputTypeText" placeholder="" maxlength="4" value="" type="text"  /> 년 <input id="partner_month" name="partner_month" fw-filter="" fw-label="배우자 생일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 월 <input id="partner_day" name="partner_day" fw-filter="" fw-label="배우자 생일" fw-msg="" class="inputTypeText" placeholder="" maxlength="2" value="" type="text"  /> 일</td>
            </tr>
<tr class="displaynone">
<th scope="row">자녀 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="child" name="child" fw-filter="isFill" fw-label="child" fw-msg="" >
<option value="child_00">선택</option>
<option value="child_01">없음</option>
<option value="child_02">1</option>
<option value="child_03">2</option>
<option value="child_04">3</option>
<option value="child_05">4</option>
<option value="child_06">5</option>
<option value="child_07">6</option>
<option value="child_08">7</option>
<option value="child_09">8</option>
<option value="child_10">9</option>
<option value="child_11">10 이상</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">최종학력 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="school" name="school" fw-filter="isFill" fw-label="school" fw-msg="" >
<option value="school_00">선택</option>
<option value="school_01">초등학교재학</option>
<option value="school_02">초등학교졸업</option>
<option value="school_03">중학교재학</option>
<option value="school_04">중학교졸업</option>
<option value="school_05">고등학교재학</option>
<option value="school_06">고등학교졸업</option>
<option value="school_07">대학교재학</option>
<option value="school_08">대학교졸업</option>
<option value="school_09">대학원재학</option>
<option value="school_10">대학원졸업이상</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">직종 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="job_class" name="job_class" fw-filter="isFill" fw-label="직종" fw-msg="" >
<option value="job_class_04">선택</option>
<option value="job_class_05">서비스</option>
<option value="job_class_06">교육</option>
<option value="job_class_07">부동산/운송</option>
<option value="job_class_08">농/임/수/광업</option>
<option value="job_class_09">금융</option>
<option value="job_class_10">유통</option>
<option value="job_class_11">예술</option>
<option value="job_class_12">의료</option>
<option value="job_class_13">법률</option>
<option value="job_class_14">제조/무역</option>
<option value="job_class_15">건설업</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">직업 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="job" name="job" fw-filter="isFill" fw-label="직업" fw-msg="" >
<option value="job_00">선택</option>
<option value="job_01">학생</option>
<option value="job_02">회사원</option>
<option value="job_03">자영업</option>
<option value="job_04">무직</option>
<option value="job_05">기타</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">연소득 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="earning" name="earning" fw-filter="isFill" fw-label="earning" fw-msg="" >
<option value="earning_00">선택</option>
<option value="earning_01">없음</option>
<option value="earning_02">1000만원 이하</option>
<option value="earning_03">1200만원 이하</option>
<option value="earning_04">1500만원 이하</option>
<option value="earning_05">1800만원 이하</option>
<option value="earning_06">2000만원 이하</option>
<option value="earning_07">2500만원 이하</option>
<option value="earning_08">3000만원 이하</option>
<option value="earning_09">4000만원 이하</option>
<option value="earning_10">5000만원 이하</option>
<option value="earning_11">5000만원 이상</option>
<option value="earning_12">기타</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">자동차 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="car" name="car" fw-filter="isFill" fw-label="car" fw-msg="" >
<option value="car_00">선택</option>
<option value="car_01">없음</option>
<option value="car_02">1000cc 이하</option>
<option value="car_03">1000cc ~ 1500cc</option>
<option value="car_04">1500cc ~ 2000cc</option>
<option value="car_05">2000cc ~ 3000cc</option>
<option value="car_06">3000cc ~ 4000cc</option>
<option value="car_07">4000cc 이상</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">지역 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="region" name="region" fw-filter="isFill" fw-label="region" fw-msg="" >
<option value="region_00">선택</option>
<option value="region_01">경기</option>
<option value="region_02">서울</option>
<option value="region_03">인천</option>
<option value="region_04">강원</option>
<option value="region_05">충남</option>
<option value="region_06">충북</option>
<option value="region_07">대전</option>
<option value="region_08">경북</option>
<option value="region_09">경남</option>
<option value="region_10">대구</option>
<option value="region_11">부산</option>
<option value="region_12">울산</option>
<option value="region_13">전북</option>
<option value="region_14">전남</option>
<option value="region_15">광주</option>
<option value="region_16">제주</option>
<option value="region_17">해외</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">인터넷 이용장소 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><select id="internet" name="internet" fw-filter="isFill" fw-label="internet" fw-msg="" >
<option value="internet_00">선택</option>
<option value="internet_01">집</option>
<option value="internet_02">회사</option>
<option value="internet_03">PC방</option>
<option value="internet_04">기타</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">관심분야 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><div class="interest"><input id="inter_check0" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="0" type="checkbox"  /><label for="inter_check0" >애니메이션</label>
<input id="inter_check1" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="1" type="checkbox"  /><label for="inter_check1" >영화/연극</label>
<input id="inter_check2" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="2" type="checkbox"  /><label for="inter_check2" >놀이공원</label>
<input id="inter_check3" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="3" type="checkbox"  /><label for="inter_check3" >경품정보</label>
<input id="inter_check4" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="4" type="checkbox"  /><label for="inter_check4" >미술전시회</label>
<input id="inter_check5" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="5" type="checkbox"  /><label for="inter_check5" >클래식 콘서트</label>
<input id="inter_check6" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="6" type="checkbox"  /><label for="inter_check6" >패션/미용</label>
<input id="inter_check7" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="7" type="checkbox"  /><label for="inter_check7" >정치</label>
<input id="inter_check8" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="8" type="checkbox"  /><label for="inter_check8" >IT/정보통신</label>
<input id="inter_check9" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="9" type="checkbox"  /><label for="inter_check9" >스포츠</label>
<input id="inter_check10" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="10" type="checkbox"  /><label for="inter_check10" >요리/음식</label>
<input id="inter_check11" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="11" type="checkbox"  /><label for="inter_check11" >연예인</label>
<input id="inter_check12" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="12" type="checkbox"  /><label for="inter_check12" >여성/주부</label>
<input id="inter_check13" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="13" type="checkbox"  /><label for="inter_check13" >육아</label>
<input id="inter_check14" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="14" type="checkbox"  /><label for="inter_check14" >비즈니스/금융/부동산</label>
<input id="inter_check15" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="15" type="checkbox"  /><label for="inter_check15" >주식/증권</label>
<input id="inter_check16" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="16" type="checkbox"  /><label for="inter_check16" >스포츠/레져/취미</label>
<input id="inter_check17" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="17" type="checkbox"  /><label for="inter_check17" >경매/공동구매</label>
<input id="inter_check18" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="18" type="checkbox"  /><label for="inter_check18" >뉴스/정보</label>
<input id="inter_check19" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="19" type="checkbox"  /><label for="inter_check19" >컴퓨터/게임</label>
<input id="inter_check20" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="20" type="checkbox"  /><label for="inter_check20" >대학교/대학원정보</label>
<input id="inter_check21" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="21" type="checkbox"  /><label for="inter_check21" >건강/의료</label>
<input id="inter_check22" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="22" type="checkbox"  /><label for="inter_check22" >자동차/여행</label>
<input id="inter_check23" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="23" type="checkbox"  /><label for="inter_check23" >쇼핑/전자상거래</label>
<input id="inter_check24" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="24" type="checkbox"  /><label for="inter_check24" >구인/구직</label>
<input id="inter_check25" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="25" type="checkbox"  /><label for="inter_check25" >어학강좌</label>
<input id="inter_check26" name="inter_check[]" fw-filter="" fw-label="inter_check" fw-msg="" value="26" type="checkbox"  /><label for="inter_check26" >기타등등</label></div></td>
            </tr>
<tr class="">
<th scope="row">좋아하는 크리에이터는? <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><label for=add10><input id="add10" name="add1[]" fw-filter="" fw-label="추가항목1" fw-msg="" value="샌드박스프렌즈" type="checkbox"  />샌드박스프렌즈</label>
<label for=add11><input id="add11" name="add1[]" fw-filter="" fw-label="추가항목1" fw-msg="" value="김재원" type="checkbox"  />김재원</label>
<label for=add12><input id="add12" name="add1[]" fw-filter="" fw-label="추가항목1" fw-msg="" value="라온" type="checkbox"  />라온</label>
<label for=add13><input id="add13" name="add1[]" fw-filter="" fw-label="추가항목1" fw-msg="" value="말이야와친구들" type="checkbox"  />말이야와친구들</label>
<label for=add14><input id="add14" name="add1[]" fw-filter="" fw-label="추가항목1" fw-msg="" value="장삐쭈" type="checkbox"  />장삐쭈</label>
<label for=add15><input id="add15" name="add1[]" fw-filter="" fw-label="추가항목1" fw-msg="" value="풍월량" type="checkbox"  />풍월량</label></td>
            </tr>
<tr class="">
<th scope="row">다른 좋아하는 크리에이터는? <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add2" name="add2" fw-filter="" fw-label="추가항목2" fw-msg="" class="inputTypeText" placeholder="" maxlength="30" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add3" name="add3" fw-filter="" fw-label="추가항목3" fw-msg="" class="inputTypeText" placeholder="" maxlength="30" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="add4" name="add4" fw-filter="" fw-label="추가항목4" fw-msg="" class="inputTypeText" placeholder="" maxlength="30" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row"> <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">추천인 아이디 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td><input id="reco_id" name="reco_id" fw-filter="" fw-label="추천인 ID" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /></td>
            </tr>
<tr class="displaynone">
<th scope="row">환불계좌 <img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" class="displaynone" alt="필수"/></th>
                <td>
                    <span id=""></span> <a href="#none" ><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account_change.gif" alt="환불계좌변경" id="id_has_bank_img" class="displaynone"/><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account.gif" alt="환불계좌등록" id="id_reg_bank_img" class="displaynone"/></a>
                </td>
            </tr>
</tbody>
</table>
</div>
<div class="displaynone">
        <h3>개인정보 제3자 제공 동의(선택)</h3>
        <div class="ec-base-box typeThinBg agreeArea">
            <div class="content">
                아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br />
<br />
- 제공 받는 자 :<br />
<br />
- 제공 항목 :<br />
<br />
- 제공 목적 :<br />
<br />
- 보유 및 이용기간 :<br />
            </div>
            <p class="check"><span>개인정보 제3자 제공에 동의하십니까?</span> <input id="agree_information_check0" name="agree_information_check[]" fw-filter="" fw-label="개인정보 제3자 제공 동의" fw-msg="" value="1" type="checkbox"  /><label for="agree_information_check0" >동의함</label></p>
        </div>
    </div>
<div class="displaynone">
        <h3>개인정보 처리 위탁 동의(선택)</h3>
        <div class="ec-base-box typeThinBg agreeArea">
            <div class="content">
                아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br />
<br />
- 위탁받는 자(수탁업체) :<br />
<br />
- 위탁업무의 내용:<br />
            </div>
            <p class="check"><span>개인정보 처리 위탁에 동의하십니까?</span> <input id="agree_consignment_check0" name="agree_consignment_check[]" fw-filter="" fw-label="개인정보 처리 위탁 동의" fw-msg="" value="1" type="checkbox"  /><label for="agree_consignment_check0" >동의함</label></p>
        </div>
    </div>
<div class="ec-base-button justify">
        <a href="#none" onclick="memberEditAction()"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_member.gif" alt="회원정보수정"/></a>
        <a href="/index.html"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_cancel.gif" alt="취소"/></a>
        <span class="gRight">
            <a href="#none" onclick="memberDelAction(3000, -1, -1)"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_modify_out.gif" alt="회원탈퇴"/></a>
        </span>
    </div>
<div class="layerLeave ec-base-layer" id="eLeaveLayer">
       
        <div class="header">
            <h3>회원탈퇴</h3>
        </div>
        <div class="content">
            <div class="ec-base-box typeMember">
                <div class="information">
                    <strong class="title">혜택 내역</strong>
                    <div class="description">
                        <ul>
<li id="eLeaveLayerMileageText">탈퇴시 보유하고 있는 적립금은 모두 삭제됩니다.</li>
                            <li>현재 적립금 : <strong id="eLeaveLayerMileage" class="txtEm">0</strong>
</li>
                            <li id="eLeaveLayerDepositTextarea">현재 예치금 : <strong id="eLeaveLayerDeposit" class="txtEm">0</strong>
</li>
                        </ul>
</div>
                </div>
            </div>
            <h4>회원탈퇴 사유</h4>
            <div class="ec-base-table typeWrite">
                <table border="1" summary="">
<caption>회원탈퇴 사유</caption>
                    <colgroup>
<col style="width:140px;"/>
<col style="width:auto;"/>
</colgroup>
<tbody>
<tr>
<th scope="row">선택</th>
                            <td><select id="leave_reason" name="leave_reason" fw-filter="isFill" fw-label="회원탈퇴 사유" fw-msg="" >
<option value="" selected="selected">-선택하세요-</option>
<option value="상품종류가 부족하다">상품종류가 부족하다</option>
<option value="상품가격이 비싸다">상품가격이 비싸다</option>
<option value="상품가격에 비해 품질이 떨어진다">상품가격에 비해 품질이 떨어진다</option>
<option value="배송이 느리다">배송이 느리다</option>
<option value="반품/교환이 불만이다">반품/교환이 불만이다</option>
<option value="상담원 고객응대 서비스가 불만이다">상담원 고객응대 서비스가 불만이다</option>
<option value="쇼핑몰 혜택이 부족하다 (쿠폰, 적립금,할인 등)">쇼핑몰 혜택이 부족하다 (쿠폰, 적립금,할인 등)</option>
<option value="이용빈도가 낮다">이용빈도가 낮다</option>
<option value="개인정보 유출이 염려된다">개인정보 유출이 염려된다</option>
<option value="기타">기타</option>
</select></td>
                        </tr>
<tr id="eLeaveLayerEtcTextarea">
<th scope="row">기타</th>
                            <td><textarea id="subjective_leave_reason" name="subjective_leave_reason" fw-filter="" fw-label="subjective_leave_reason" fw-msg="" rows="3" cols="60" ></textarea></td>
                        </tr>
</tbody>
</table>
</div>
        </div>
	
	<br><br><br>
	<%@include file="/common/main_bottom.jsp" %>
</body>
</html>




