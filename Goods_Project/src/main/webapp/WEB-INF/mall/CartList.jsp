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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">

function sub() {
	
	var cart = ${fn:length(sessionScope.shopLists)}
	
	if(cart == 0){
		alert('장바구니에 상품을 추가하세요.')
		return false
	}
}

function allSelect(obj){
	//alert(1)
	var allCheck = document.getElementsByName("rowcheck")
	//배열로...생김..
	
		//alert(allCheck.length)
	if(obj.checked){
		for (i=0;i<allCheck.length;i++){
			allCheck[i].checked = true
		}
	}
	else{
		for (i=0;i<allCheck.length;i++){
			allCheck[i].checked = false
		}
	}
	
}
function multiDelete(){
	//alert(2)
	var flag = false
	var allCheck = document.getElementsByName("rowcheck")
		alert(allCheck.length)
		for (i=0;i<allCheck.length;i++){
			if(allCheck[i].checked){
				flag = true
				
			}
		}
		if(!flag){
			alert('삭제할 상품을 선택하세요.')
			return false
		}	
		
		document.f.submit()
}

function selOrder(){
	//alert(2)
	var flag = false
	var allCheck = document.getElementsByName("rowcheck")
		for (i=0;i<allCheck.length;i++){
			if(allCheck[i].checked){
				flag = true
				
			}
		}
		
		if(!flag){
			alert('주문할 상품을 선택하세요.')
			return false
		}	
		
		
		document.f.action="selectpreorder.mall"
		document.f.submit()
}

	
	
</script>

</head>
<body>  
<%-- ${sessionScope.loginfo.id} <br>
mall\MallList.jsp <br> --%>





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
	
	
	<form name="f" action="selectdelete.mall" method="post">
	
	<!-- 일반상품 -->
	<div class="orderListArea ec-base-table typeList gBorder">
			
		<div class="xans-element- xans-order xans-order-normtitle title ">
			<c:if test="${fn:length(sessionScope.shopLists) == 0 }" >
			<tr class="xans-record-">
				<td class="thumb gClearLine" colspan="9">
					장바구니에 담은 상품이 없습니다.
				</td>
			</tr>
		</c:if>
		</div>
	
	
	
	<c:if test="${fn:length(sessionScope.shopLists) != 0 }" >
	<table border="1" summary class="xans-element- xans-order xans-order-normnormal xans-record-">
		<caption>기본배송</caption>
		<colgroup>
			<col style="width:27px">
			<col style="width:92px">
			<col style="width:auto">
			<col style="width:98px">
			<col style="width:75px">
			<col style="width:98px">
			<col style="width:98px">
			<col style="width:85px">
			<col style="width:98px">
			<col style="width:110px">
		</colgroup>
		<thead>
			<tr align="center">
				<th scope="col">
					<input type=checkbox name=allcheck onClick="allSelect(this)">
				</th>
				<th scope="col">이미지</th>
				<th scope="col">상품정보</th>
				<th scope="col">판매가</th>
				<th scope="col">수량</th>
				<th scope="col" class="mileage">적립금</th>
				<th scope="col">배송비</th>
				<th scope="col">합계</th>
				<th scope="col">선택</th>
			</tr>
		</thead>
		
		
		<tbody class="xans-element- xans-order xans-order-list center">
		
		<c:forEach items="${sessionScope.shopLists}" var="shopinfo" varStatus="status"> 
			<tr class="xans-record-">
				<td>
					<input type=checkbox id="basket_chk_id_0" name=rowcheck value="${shopinfo.pnum }"></td>
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
				<td>
					<span class>
						<span class="ec-base-qty">
							<input id="quantity" name="quantity_name_0" size="1" type="text" value="${shopinfo.qty}">
							<a href="add.mall?num=${shopinfo.pnum }&orderqty=1">
								<img src="${pageContext.request.contextPath}/resources/cart/btn_quantity_up.gif" alt="수량증가" class="up" id="QuantityUp">
							</a>
							
							<a href="add.mall?num=${shopinfo.pnum }&orderqty=<c:if test="${shopinfo.qty<=1}">0</c:if> <c:if test="${shopinfo.qty>1}">-1</c:if>">
								<img src="${pageContext.request.contextPath}/resources/cart/btn_quantity_down.gif" alt="수량감소" class="down" id="QuantityDown">
							</a>
						</span>
						
					</span>
				</td>
				<td >
					<span class="txtInfo">
					<img src="${pageContext.request.contextPath}/resources/cart/ico_product_point.gif">
						<fmt:parseNumber var="point" value="${shopinfo.price / 100.0}" integerOnly="true"></fmt:parseNumber>
						${point}
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
				<td class="button">				
					<%-- <a href="direct.mall?num=${shopinfo.pnum }&orderqty=${shopinfo.qty}" onclick="">
						<img src="${pageContext.request.contextPath}/resources/cart/btn_orders.gif" alt="주문하기">
					</a> --%>
					<a href="delete.mall?pnum=${shopinfo.pnum }" onclick="location.href('delete.mall')">
						<img src="${pageContext.request.contextPath}/resources/cart/btn_deletes.gif" alt="삭제">
					</a>
				</td>	
			</tr>
		</c:forEach>
		</tbody>
	</table>	
	
	
	<div class="xans-element- xans-order xans-order-selectorder ec-base-button ">
	
		<span class="gLeft">
            <strong class="text">선택상품을</strong>
            <a href="#none" onclick="return multiDelete()"><img src="${pageContext.request.contextPath}/resources/cart/btn_delete2.gif" alt="삭제하기"></a>
        </span>
	

		<span class="gRight">
            <a href="alldelete.mall" onclick=""><img src="${pageContext.request.contextPath}/resources/cart/btn_clear.gif" alt="장바구니비우기"></a>
        </span>
	
	</div>
	
	
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
				<!-- <th scope="col"><strong>쿠폰할인</strong></th> -->
				<th scope="col"><strong>결제예정금액</strong></th>
			</tr>
        </thead>
        <tbody class="center">
        <tr>
        	<td>
        		<div class="box txt16">
					<strong><span class="txt23"> ${sessionScope.totalAmount}</span>원</strong> 
				</div>
        	</td>
        	<td>
        		<div class="box shipping txt16">
        			<strong class="txt23"></strong>
        			<strong><span class="txt23">
        			<c:if test="${sessionScope.totalAmount >= 30000 }">
						무료
					</c:if>
					<c:if test="${sessionScope.totalAmount < 30000 }">
						2500원
					</c:if>
        			</span></strong>
        		</div>
        	</td>
        	<!-- <td>
        		<div class="box shipping txt16">
        			<strong class="txt23"></strong>
        			<strong>
        			<input type="hidden" value="" id="coupon_num">
        			<span class="txt23" id="coupon_price">
        			
        				0
        			</span>원</strong>
        		</div>
        	</td> -->
        	<td>
        		<div class="box txtEm txt16">
        			<strong class="txt23"> </strong>
        			<strong>
        			<span class="txt23" id="totalAmount">
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
	<br><br>

		<%-- 	<input type="button" value="쿠폰" onclick="window.open('coupon.cp?id=${sessionScope.loginfo.id}', 'PopupWin', 'width=800,height=600')"> --%>

	</c:if>
	
	<!-- 주문버튼 -->
	<div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
		
		<a href="preorder.mall" onclick="return sub()" class=" ">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_all.gif" alt="전체상품주문">
		</a>
		<input type="image" onclick="return selOrder()" src="${pageContext.request.contextPath}/resources/cart/btn_order_select.gif">	
	
	
	
		
<%-- 		<a href="selectpreorder.mall" onclick="return selOrder()" class="">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_select.gif" alt="선택상품주문">
		</a> --%>
		<span class="gRight">
			<a href="">
			<img src="${pageContext.request.contextPath}/resources/cart/btn_order_ing.gif" alt="쇼핑계속하기">
			</a>
		</span>
	</div>
	</form>
	</div>
</div>


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
	<%@include file="/common/main_bottom.jsp" %>
</body>
</html> 



<%-- 		<tr>
			<td colspan="9" align="center">
				주문자 정보 : ${sessionScope.loginfo.name}(${sessionScope.loginfo.id})
			</td>
		</tr> --%>
