<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>
<%@include file="/common/common.jsp" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/order/orderForm.css">
<title>주문서 작성</title>
</head>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script> --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">

	
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp84622080'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
       /*  $('#findAddr').click(function(){
        	alert(1)
        	var fKey = $('#addr1').val() ;
    		
    		var pop = window.open("${pageContext.request.contextPath}"+"/jusoPopup.me?addr1="+fKey,"pop","width=570,height=420, scrollbars=yes, resizable=yes");
            
        })
         */
		
         
    });
    
    function sub(){
    	
    	var pay = f.payment.value
    	//alert(pay)
    	
    	//alert('시작')
    	var totalprice = f.totalprice.value
    	//alert(totalprice)
    	
    	if(pay == 'inicis'){
    	
	    	IMP.request_pay({
	            pg : 'html5_inicis', // version 1.1.0부터 지원.
	            pay_method : 'card',
	            merchant_uid : 'merchant_' + new Date().getTime(),
	            name : '${shopLists[0].pname} 외' ,
	            amount :  totalprice ,
	            buyer_email : '${loginfo.email1}@${loginfo.email2}', 
	            buyer_name : '${loginfo.name }',
	            buyer_tel : '${loginfo.phone1}-${loginfo.phone2}-${loginfo.phone3}',
	            buyer_addr : '${loginfo.addr1} ${loginfo.addr2}',
	            buyer_postcode : '${loginfo.zipcode}',
	            m_redirect_url : '<%=request.getContextPath()%>/index.jsp'
	        }, function(rsp) {
	            if ( rsp.success ) {
	                var msg = '결제가 완료되었습니다.';
	                msg += '고유ID : ' + rsp.imp_uid;
	                msg += '상점 거래ID : ' + rsp.merchant_uid;
	                msg += '결제 금액 : ' + rsp.paid_amount;
	                msg += '카드 승인번호 : ' + rsp.apply_num;
	                document.f.submit();
	                <%-- location.href="<%=request.getContextPath()%>/calculate.mall"; --%>
	            } else {
	                var msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	            }
	            alert(msg);
	            
	        });
		    	//alert('결제 전')
    	}
    	
    	if(pay == 'danal'){
    	
	    	IMP.request_pay({
	            pg : 'danal', // version 1.1.0부터 지원.
	            pay_method : 'phone',
	            merchant_uid : 'merchant_' + new Date().getTime(),
	            name : '${shopLists[0].pname} 외' ,
	            amount :  totalprice ,
	            buyer_email : '${loginfo.email1}@${loginfo.email2}', 
	            buyer_name : '${loginfo.name }',
	            buyer_tel : '${loginfo.phone1}-${loginfo.phone2}-${loginfo.phone3}',
	            buyer_addr : '${loginfo.addr1} ${loginfo.addr2}',
	            buyer_postcode : '${loginfo.zipcode}',
	            m_redirect_url : '<%=request.getContextPath()%>/index.jsp'
	        }, function(rsp) {
	            if ( rsp.success ) {
	                var msg = '결제가 완료되었습니다.';
	                msg += '고유ID : ' + rsp.imp_uid;
	                msg += '상점 거래ID : ' + rsp.merchant_uid;
	                msg += '결제 금액 : ' + rsp.paid_amount;
	                msg += '카드 승인번호 : ' + rsp.apply_num;
	                document.f.submit();
	                <%-- location.href="<%=request.getContextPath()%>/calculate.mall"; --%>
	            } else {
	                var msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	            }
	            alert(msg);
	            
	        });
		    	//alert('결제 전')
    	}
    	
    	if(pay == 'kakaopay'){
    	
	    	IMP.request_pay({
	            pg : 'kakaopay', // version 1.1.0부터 지원.
	            pay_method : 'card',
	            merchant_uid : 'merchant_' + new Date().getTime(),
	            name : '${shopLists[0].pname} 외' ,
	            amount :  totalprice ,
	            buyer_email : '${loginfo.email1}@${loginfo.email2}', 
	            buyer_name : '${loginfo.name }',
	            buyer_tel : '${loginfo.phone1}-${loginfo.phone2}-${loginfo.phone3}',
	            buyer_addr : '${loginfo.addr1} ${loginfo.addr2}',
	            buyer_postcode : '${loginfo.zipcode}',
	            m_redirect_url : '<%=request.getContextPath()%>/index.jsp'
	        }, function(rsp) {
	            if ( rsp.success ) {
	                var msg = '결제가 완료되었습니다.';
	                msg += '고유ID : ' + rsp.imp_uid;
	                msg += '상점 거래ID : ' + rsp.merchant_uid;
	                msg += '결제 금액 : ' + rsp.paid_amount;
	                msg += '카드 승인번호 : ' + rsp.apply_num;
	                document.f.submit();
	                <%-- location.href="<%=request.getContextPath()%>/calculate.mall"; --%>
	            } else {
	                var msg = '결제에 실패하였습니다.';
	                msg += '에러내용 : ' + rsp.error_msg;
	            }
	            alert(msg);
	            
	        });
		    	//alert('결제 전')
    	}
    	
    	      
    	
    }  //end of sub
    
/*     function sub(){
    	
    	var pay = f.payment.value
    	alert(1)
    	
    	for( i = 0; i < f.payment.length; i++) {
    	     
    	      if(f.payment[i].checked) {     
    	        
    	        var output =  f.payment[i].value 

    	        alert(output);

    	        break; 

    	     } //if
    	      
    	} //for
    	
    }  //end of sub */ 
    
    function buy(){
    	alert('시작')
    	var totalprice = f.totalprice.value
    	alert(totalprice)
    	IMP.request_pay({
            pg : 'kakaopay', // version 1.1.0부터 지원.
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '${shopLists[0].pname} 외' ,
            amount :  totalprice ,
            buyer_email : 'eogjs123@naver.com', 
            buyer_name : '${loginfo.name }',
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
                document.f.submit();
                <%-- location.href="<%=request.getContextPath()%>/calculate.mall"; --%>
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
            
        });
    	
    	alert('결제 전')
    	
    }
<%--     	if(pay == 'inicis'){
    		
    		IMP.request_pay({
                pg : 'kakaopay', // version 1.1.0부터 지원.
                pay_method : 'card',
                merchant_uid : 'merchant_' + new Date().getTime(),
                name : '${orderlist[0].name} 외' ,
                amount : '${totalPrice}',
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
			
    	} --%>
    
    
	function onAddress(){
		
		alert(1)
		var fKey = $('#addr1').val() ;
		
		var pop = window.open("${pageContext.request.contextPath}"+"/jusoPopup.me?addr1="+fKey,"pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		 
	} // function onAddress (){
	
		
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		//document.form.addr1.value = roadFullAddr;
		var road = roadFullAddr;
		var rod = roadAddrPart1;
		var rodd = addrDetail;
		var zip = zipNo;
		alert(road,rod,rodd)
		
		f.address.value = rod + " " + rodd;
		f.addr1.value = rod ;
		f.addr2.value = rodd;
		
		f.zipcode.value = zip;
	} 
    
	function insert(){

		document.getElementById("name").value = '${loginfo.name}';
		document.getElementById("zipcode").value = '${loginfo.zipcode}';
		document.getElementById("address").value = '${loginfo.addr1} ${loginfo.addr2}';
		document.getElementById("addr1").value = '${loginfo.addr1}';
		document.getElementById("addr2").value = '${loginfo.addr2}';
		document.getElementById("phone2").value = '${loginfo.phone2}';
		document.getElementById("phone3").value = '${loginfo.phone3}';
		document.getElementById("email1").value = '${loginfo.email1}';
		document.getElementById("email2").value = '${loginfo.email2}';
		
	}
    
	function remove(){

		document.getElementById("name").value = "";
		document.getElementById("zipcode").value = "";
		document.getElementById("address").value = "";
		document.getElementById("addr1").value = "";
		document.getElementById("addr2").value = "";
		document.getElementById("phone2").value = "";
		document.getElementById("phone3").value = "";
		document.getElementById("email1").value = "";
		document.getElementById("email2").value = "";
		
	}
	
  </script>

<body>
	<div id="wrap">
		<div id="container">
			<div id="contents">
			
			
<div class="titleArea">
	<h2>주문서작성</h2>
</div>

<form name="f" action="calculate.mall" method="post">
<div class="xans-element- xans-order xans-order-form xans-record- ">

	<div style="margin-bottom:0;" class="xans-element- xans-order xans-order-dcinfo ec-base-box typeMember   ">
		<div class="information">
	    	<h3 class="title2">혜택정보</h3>
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
						<li>
							<a href="/myshop/mileage/historyList.html">가용적립금 : <strong>3,000원</strong></a>
						</li>
	                    <li>
	                    	<a href="/myshop/coupon/coupon.html">쿠폰 : <strong>0개</strong></a>
	                    </li>
	                </ul>
				</div>
	        </div>
	</div>
	
	
	
	
	<ul class="ec-base-help controlInfo">
		<li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</li>
        <li class="txtWarn txt11 displaynone">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</li>
    </ul>
	
	
	
	
	<!-- 상품 주문 내역 -->
	<div class="orderListArea ">
		
		<div class="title2">
            <h3 class="h3h3">배송상품 주문내역</h3>
            <p class="button"><a href="javascript:window.history.back();"><img src="${pageContext.request.contextPath}/resources/order/btn_prev.gif" alt="이전페이지"></a></p>
        </div>
        
		<div class="ec-base-table typeList gBorder ">
			<table border="1" summary >
				<caption>기본배송</caption>
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
		
		<tfoot class="right">
		<tr>
			<td class=""></td>
			<td colspan="6">
				<span class="gLeft">[기본배송]</span> 상품구매금액 <strong>${totalAmount}</strong> + 배송비 <span id="domestic_ship_fee">
					<c:if test="${totalAmount >= 30000 }" >
						<c:set var="fee" value="0"/>${fee }
					</c:if>
					<c:if test="${totalAmount < 30000 }">   
						<c:set var="fee" value="2500"/>${fee }
					</c:if>
				</span>  = 합계 : <strong class="txtEm gIndent10"><span id="domestic_ship_fee_sum" class="txt18">${totalAmount+fee}</span>원</strong> 
			</td>
                    </tr>
		</tfoot>
		
		
		<tbody class="xans-element- xans-order xans-order-normallist center">
		
		<c:forEach items="${sessionScope.shopLists}" var="orderlist" varStatus="status"> 
			<tr class="xans-record-">
				<%-- <td align="center">
					${shopinfo.pnum}
				</td> --%>		
<!-- 				<td>
					<input id="chk_order_cancel_list0" name="chk_order_cancel_list_basic0" value="751:000A:F:285420" type="checkbox">
				</td>		
 -->				<td class="thumb gClearLine">
					<a href="item_detail.prd?pmkey=${orderlist.pnum }">
					<img alt="사진" src="<%=request.getContextPath()%>/resources/prd_image/${orderlist.pimage}" width="80" height="80">
					</a>
				</td>				
				<td class="center gClearLine">
					<a href="item_detail.prd?pmkey=${orderlist.pnum }"><strong>${orderlist.pname}</strong></a>
				</td>
				<td class="center">
					<strong>${orderlist.price}	</strong>
				</td>
				<td align="center">
						<span class="ec-base-qty">
							${orderlist.qty}
							<input id="quantity" name="qty" size="1" type="hidden" value="${orderlist.qty}">
						</span>
				</td>
				<td >
					<span class="txtInfo">
					<img src="${pageContext.request.contextPath}/resources/cart/ico_product_point.gif">
						<fmt:parseNumber var="point" value="${orderlist.price / 100}" integerOnly="true"></fmt:parseNumber>
						${point}
					</span>
				</td>
				<td >
					<c:if test="${totalAmount >= 30000 }">
						무료
					</c:if>
					<c:if test="${totalAmount < 30000 }">   
						유료
					</c:if>
				</td>
				<td class="right">
					<strong>${orderlist.amount}</strong>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>	
	</div>
	
	
	<ul class="ec-base-help controlInfo typeBtm">
        <li class="txtWarn txt11 ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</li>
    </ul>
	
	
	<!-- 선택상품 제어 버튼 -->
	<%-- <div class="ec-base-button">
		<span class="gLeft">
            <strong class="text">선택상품을</strong>
            <a href="#none" onclick="">
            	<img src="${pageContext.request.contextPath}/resources/cart/btn_delete2.gif" alt="삭제하기">
            </a>
        </span>
	
		<span class="gRight">
            <a href="javascript:window.history.back();">
            	<img src="${pageContext.request.contextPath}/resources/order/btn_prev.gif" alt="장바구니비우기">
            </a>
        </span>
	</div> --%>
	
	
	
	
	<!-- 배송 정보 -->
	<div class="orderArea">
        <div class="title2">
            <h3>배송 정보</h3>
            <p class="required"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"> 필수입력사항</p>
        </div>
        <div class="ec-base-table typeWrite">
        
            <table border="1" summary="">
			<caption>배송 정보 입력</caption>
            <colgroup>
			<col style="width:139px;">
			<col style="width:auto;">
			</colgroup>
			<tbody class="">
				<tr class="">
					<th scope="row">배송지 선택</th>
                   	<td>
                        <div class="address">
                            <input id="sameaddr0" name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="M" type="radio" onclick="insert()" checked="checked">
                            	<label for="sameaddr0">회원 정보와 동일</label>
							<input id="sameaddr1" name="sameaddr" fw-filter="" fw-label="1" fw-msg="" value="F" type="radio" onclick="remove()">
								<label for="sameaddr1">새로운배송지</label>                            
                        </div>
                    </td>
                </tr>
				<tr>
					<th scope="row">
						받으시는 분 <img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수">
					</th>
	                <td>
	                	<input id="name" name="name" fw-filter="isFill" fw-label="수취자 성명" fw-msg="" class="inputTypeText" placeholder="" size="15" value="${loginfo.name }" type="text">
	                </td>
                </tr>
				<tr>
					<th scope="row">
						주소 <img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수">
					</th>
                    <td>
                        <input id="zipcode" name="zipcode" fw-filter="isFill" fw-label="수취자 우편번호1" fw-msg="" class="inputTypeText" placeholder="" size="6" maxlength="6" readonly="1" value="${loginfo.zipcode }" type="text">
                        	<input type="button" value="주소찾기" id="findAddr" onclick="onAddress()">
                        	<br>
						    <input type="text" size="40" id ="address" name="address" class="inputTypeText" value="${loginfo.addr1 }&nbsp;${loginfo.addr2}" />
						    
						    <input type="hidden" id = "addr1" name="addr1" value="${loginfo.addr1 }" />
						    <input type="hidden" id = "addr2" name="addr2" value="${loginfo.addr2 }" />
                    </td>
                </tr>
				<tr class="">
				<th scope="row">
					휴대전화 
					<span class="">
						<img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수">
					</span>
				</th>
				<td>
					<select id="phone1" name="phone1" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					-<input id="phone2" name="phone2" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="" size="4" value="${loginfo.phone2 }" type="text">
					-<input id="phone3" name="phone3" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="수취자 핸드폰번호" fw-alone="N" fw-msg="" size="4" value="${loginfo.phone3 }" type="text">
				</td>
            </tr>
</tbody>

<tbody class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
<tr>
<th scope="row">
	이메일 <img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수">
</th>

<td>
	<input id="email1" name="email1" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailId" value="${loginfo.email1 }" type="text">@<input id="email2" name="email2" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg="" class="mailAddress" readonly="readonly" value="${loginfo.email2 }" type="text">
	
		<!-- <select id="oemail3" fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg="">
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
		</select> -->
		
		<p class="gBlank5">이메일을 통해 주문처리과정을 보내드립니다.<br>이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요.</p>
</td>
</tr>
</tbody>

<tbody class="delivery ">
<tr class="">
	<th scope="row">배송메시지
	</th>
	<td>
    	<textarea id="message" name="message" fw-filter="" fw-label="배송 메세지" fw-msg="" maxlength="255" cols="70"></textarea>                        
	</td>
</tr>
</tbody>
</table>
</div>
</div> <!-- 배송정보 끝 -->
<br>	
	
	
	
	
<!-- 결제 예정 금액 -->
<div class="title2">
       <h3>결제 예정 금액</h3>
</div>
<div class="totalArea">
	<div class="ec-base-table typeList gBorder total  ">
		<table border="1" summary>
		<caption>결제 예정 금액</caption>
		<thead>
			<tr>
				<th scope="col"><strong>총 주문금액</strong></th>
				<th scope="col"><strong>쿠폰 할인</strong></th>
				<th scope="col"><strong>배송료</strong></th>
				<th scope="col"><strong>총 결제예정 금액</strong></th>
			</tr>
        </thead>
        <tbody class="center">
        <tr>
        	<td class="price">
        		<div class="box txt16">
					<strong>
						<span class="txt23"> ${totalAmount}</span>원
					</strong> 
				</div>
        	</td>
        	
        	<td>
        		<div class="box shipping txt16">
        			<strong class="txt23"></strong>
        			<strong>
        			<input type="hidden" value="" id="coupon_num">
        			<span class="txt23" id="coupon_price" >
        			
        				0
        			</span>원</strong>
        			<input type="hidden" id="couponprice" value="">
        		</div>
        	</td>
        	
        	<td class="option ">
        		<div class="box txt16">
        			
        			
        			<strong class="txt23"></strong>
        			<strong><span class="txt23">
        			<c:if test="${totalAmount >= 30000 }">
						무료
					</c:if>
					<c:if test="${totalAmount < 30000 }">
						2500원
					</c:if>
        			</span></strong>
        		</div>
        	</td>
        	<td>
        		<div class="box txtEm txt16">
        			<strong class="txt23"> </strong>
        			<strong>
        			<span class="txt23" id="total_amount">${totalAmount }
        			</span>원</strong>
        			<input type="hidden" name="totalprice" id=totalamount value="${totalAmount }">
        		</div>
        	</td>
        </tr>
        </tbody>
		</table> 
	</div>
	<!-- 할인금액 -->
	<div class="detail">
		<div class="ec-base-table gMerge ">
			<table border="1" summary="">
			<caption>할인 내역</caption>
			<colgroup>
			<col style="width:139px">
			<col style="width:auto">
			</colgroup>
			<tbody>
				<tr class="sum txt14">
					<th scope="row"><strong>총 할인금액</strong></th>
					<td><strong id="coupon_1">0</strong>원</td>
				</tr>

				<!-- 참고 : 쿠폰적용 후 -->
				<tr class="mCouponModify">    
					<th scope="row">쿠폰할인</th>    
	                <td>
	                	<input type="hidden" id="coupon_2" value="">
	                    <span  class="txt23" id="coupon_3">0</span>원
		                    <%-- <a id="eCouponModify" href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_total_modify.gif" alt="수정"></a>
		                    <input type="button" value="쿠폰" onclick="window.open('coupon.cp?id=${sessionScope.loginfo.id}', 'PopupWin', 'width=800,height=600')"> --%>
		                    
	    	                <input type="button" value="사용하기" src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_total_modify.gif" onclick="window.open('coupon.cp?id=${sessionScope.loginfo.id}', 'PopupWin', 'width=840,height=600')">
	                </td>
				</tr>
			</tbody>
			</table>
		</div>
	<div class="ec-base-table gMerge ">
		<table border="1" summary="">
			<caption>부가결제 내역</caption>
                <colgroup>
				<col style="width:139px">
				<col style="width:auto">
				</colgroup>
			<tbody>
				
				<tr>
					<th scope="row">적립금</th>
                    <td>
	                    <p> <input id="input_mile" name="input_mile" fw-filter="" fw-label="적립금" fw-msg="" class="inputTypeText" placeholder="" size="10" value="" type="text">
	                    		 원 (총 사용가능 적립금 : <strong class="txtWarn">${loginfo.mpoint }</strong>원)
	                    </p>
	                    <ul class="info">
								<li>적립금은 최소 0 이상일 때 결제가 가능합니다.</li>
                                <li id="mileage_max_unlimit" class="">최대 사용금액은 제한이 없습니다.</li>
                                <li id="mileage_max_limit" class="">1회 구매시 적립금 최대 사용금액은 3,000입니다.</li>
                                <li>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</li>
                                <li id="mileage_shipfee" class="displaynone">적립금 사용 시 배송비는 적립금으로 사용 할 수 없습니다.</li>
                                <li id="mileage_exception" class="displaynone">적립금 사용 시 해당 상품에 대한 적립금은 적립되지 않습니다.</li>
						</ul>
					</td>
                 </tr>
              </tbody>
			</table>
		</div>
    </div>
</div>	<!-- 결제 예정금액 끝 -->
	  
	  
	  
	<!-- 결제수단 -->  
	<div class="title2">
        <h3>결제수단</h3>
        <!-- <span class="txtEm gIndent20 ">
            <input type="checkbox" id="save_paymethod" name="save_paymethod" value=""><label for="save_paymethod">결제수단과 입력정보를 다음에도 사용</label>
        </span> -->
    </div>
	
	
	
	<!-- 결제... -->
	<div class="payArea">
        <div class="payment">
            <div class="method">
            	<span class="ec-base-label">
            		<input name="payment"  value="inicis" type="radio" checked="checked">
            			<label for="addr_paymethod0">카드 결제</label>
            	</span>
				<span class="ec-base-label"><input name="payment"  value="danal" type="radio"><label for="addr_paymethod2">휴대폰 결제</label></span>
				<span class="ec-base-label"><input name="payment"  value="kakaopay" type="radio"><label for="addr_paymethod4">카카오페이(간편결제) <a href="http://www.kakao.com/kakaopay" target="_blank"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_info2.gif" alt="info"></a></label></span>
			</div>
			<!-- 카드사 직접결제 -->
            <div class="ec-base-table">

				<div id="pg_paymethod_info" class="payHelp" style="display: block;">
                    <p id="pg_paymethod_info_shipfee" class="ec-base-help">최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</p>
                    <p id="pg_paymethod_info_pg" class="ec-base-help">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</p>
                </div>

            </div>

        </div>
		
        <!-- 최종결제금액 -->
        <div class="total">
            <h4>
				
				<span>최종결제 금액</span>
			</h4>
            <p class="price">
            	<span class="txt23" id="total_price">
            		${totalAmount}
            	</span>원
            </p>
            <div class="button">
            	<%-- <a>
            		<img src="${pageContext.request.contextPath}/resources/order/btn_payment.gif" id="btn_payment" alt="결제하기" onclick="sub()">
            	</a> --%>
            	<input type="button" value="결제하기" src="${pageContext.request.contextPath}/resources/order/btn_payment.gif" value="결제하기" onclick="sub()">
            	
            	
            </div>
            <div class="mileage ">
                <dl class="ec-base-desc gLarge right">
					<dt>
						<strong>총 적립예정금액</strong>
					</dt>
                    <dd id="mAllMileageSum" class="txtWarn" style="display: block;">
                    <fmt:parseNumber integerOnly="true" var="totalpoint" value="${totalAmount /100}"/>${totalpoint }</dd>원
                </dl>
				<dl class="ec-base-desc gLarge right">
					<dt>상품별 적립금</dt>
                    <dd id="mProductMileage">
                
                    	<input type="hidden" name="point" value="${totalpoint }" >원
                    ${totalpoint }</dd>
                    <dt>회원 적립금</dt>
                    <dd id="mMemberMileage">0원</dd>
                    <dt>쿠폰 적립금</dt>
                    <dd id="mCouponMileage">0원</dd>
                </dl>
			</div>
        </div>
        
    </div> <!-- 결제... 끝 -->
	
	
	
	
	<!-- 무이자 할부 이용안내 -->
	<div class="ec-base-help" style="background:#f7f7f7;">
        <h3>무이자 할부 이용안내</h3>
        <div class="inner">
            <ul>
				<li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</li>
                <li>무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</li>
            </ul>
		</div>
    </div>
	<!-- 이용안내 -->
	<div class="ec-base-help">
		<h3>이용안내</h3>
		<div class="inner">
			<h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에
				따라 해결하시기 바랍니다.</h4>
			<ol>
				<li class="item1"><a href="javascript:;"
					onclick="window.open('https://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);">안심클릭
						결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
				<li class="item2"><a
					href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp"
					target="_blank">Service Pack 2에 대한 Microsoft사의 상세안내 </a></li>
				<li class="item3"></li>
			</ol>
			<!-- 크로스 브라우징 지원 -->
			<div class="">
				<h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4>
				<ol>
					<li class="item1"><strong>KG이니시스, KCP, LG U+를
							사용하는 쇼핑몰일 경우</strong></li>
					<li class="item2">결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제
						가능<br>(단, window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)
					</li>
					<li class="item3">최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료
						후 재시작해야만 결제가 가능합니다.<br>(무통장, 휴대폰결제 포함)
					</li>
				</ol>
			</div>
			<h4>세금계산서 발행 안내</h4>
			<ol>
				<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달
					10일까지만 요청하실 수 있습니다.</li>
				<li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
				<li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
				<li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로
					사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
				<li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수
					있습니다.</li>
			</ol>
			<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
			<ol>
				<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신
					주문에 대해서는 세금계산서 발행이 불가하며</li>
				<li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령
					57조)</li>
				<li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만
					세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
			</ol>
			<h4>현금영수증 이용안내</h4>
			<ol>
				<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체,
					에스크로, 예치금)에 대해 발행이 됩니다.</li>
				<li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지
					않습니다.</li>
				<li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을
					해야 합니다.</li>
				<li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에
					따라 변경 될 수 있습니다.)</li>
				<li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
			</ol>
		</div>
	</div>

	<!-- 주문버튼 -->
<%-- 	<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
		
		<a href="#" onclick="buy()" class=" ">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_all.gif" alt="결제하기">
		</a>
		<a href="#none" onclick="Basket.orderSelectBasket(this)" class="">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_select.gif" alt="선택상품주문">
		</a>
		<span class="gRight">
			<a href="">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_ing.gif" alt="쇼핑계속하기">
			</a>
		</span>
	</div> 
--%>

				</div>
	
			</div>
			</form>

		</div>	
	</div>
</div>
	

	<%@include file="/common/main_bottom.jsp" %>
</body>
</html>




