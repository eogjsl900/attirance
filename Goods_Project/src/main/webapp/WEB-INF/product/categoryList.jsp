<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">
	
		$(function(){
					
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			
			for(var i=0;i<'${productLists.size()}';i++){
				var aaa=$('#sale_price'+i).text().replace(regexp, ',');
				$('#sale_price'+i).text(aaa); 
			}
		
		});
		
</script>




     <!-- CUSTOM CSS -->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/category/category_custom.css">
	 <link rel="stylesheet" type="text/css" href="https://free-shipping.wehost24.com/css/front_banner.css">
<style>
#header .topArea {border-bottom:0;}
p.banner img {width:100%; }
.path {float:none; border-bottom: 2px solid #e94b53; overflow: hidden;}
.path ol {display: inline-block; float: right; }
.product_head {position:relative; overflow:hidden;}
.product_head .banner {position:absolute; top:0; left:50%;}
</style>

<div id="wrap">
	<div id="container"> 
		<div id="contents">
			<div class="xans-element- xans-product xans-product-headcategory product_head " style="height: 275px;">
				<div class="banner" style="margin-left: -1000px;">
				<c:if test="${keyword=='Toy' or keyword=='인형/피규어' or keyword=='DIY' or keyword=='퍼즐' or keyword=='기타 토이'}">
					<img src="${pageContext.request.contextPath}/resources/category/img/Toy.jpg" usemap="#categoryhead_top_image_map_name" alt="">
				</c:if>
				<c:if test="${keyword=='Living' or keyword=='컵/물병' or keyword=='쿠션류' or keyword=='생활소품' or keyword=='기타리빙'}">
					<img src="${pageContext.request.contextPath}/resources/category/img/Living.jpg" usemap="#categoryhead_top_image_map_name" alt="">
				</c:if>
				<c:if test="${keyword=='Fashion' or keyword=='모자/장갑/잡화' or keyword=='의류' or keyword=='가방/파우치'}">
					<img src="${pageContext.request.contextPath}/resources/category/img/Fashion.jpg" usemap="#categoryhead_top_image_map_name" alt="">
				</c:if>
				<c:if test="${keyword=='Cd'}">
					<img src="${pageContext.request.contextPath}/resources/category/img/Cd.jpg" usemap="#categoryhead_top_image_map_name" alt="">
				</c:if>
				</div>
			</div>
			<div class="inner">
				<div class="xans-element- xans-product xans-product-headcategory path ">
				</div>
				<div class="xans-element- xans-product xans-product-menupackage" style="border-bottom: 1px solid rgb(207, 207, 207);">
					<ul class="menuCategory">
						<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
						<c:if test="${keyword=='Toy' or keyword=='인형/피규어' or keyword=='DIY' or keyword=='퍼즐' or keyword=='기타 토이'}">
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=인형/피규어">인형/피규어<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=DIY">만들기<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=퍼즐">퍼즐<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=기타 토이">기타 토이<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						</c:if>
						<c:if test="${keyword=='Living' or keyword=='컵/물병' or keyword=='쿠션류' or keyword=='생활소품' or keyword=='기타리빙'}">
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=컵/물병">컵/물병<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=쿠션류">쿠션류<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=생활소품">생활소품<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=기타리빙">기타리빙<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						</c:if>
						<c:if test="${keyword=='Fashion' or keyword=='모자/장갑/잡화' or keyword=='의류' or keyword=='가방/파우치'}">
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=모자/장갑/잡화">모자/장갑/잡화<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=의류">의류<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						<li style="display:;"
							class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
							href="item_list2.prd?whatColumn=category&keyword=가방/파우치">가방/파우치<strong>+</strong><span
								class="count displaynone">()</span></a></li>
						
						</c:if>
						<!-- //참고 -->
						
					</ul>
				</div>
				
				<div class="xans-element- xans-product xans-product-normalpackage ">
					<div class="xans-element- xans-product xans-product-normalmenu ">
						<div class="function">
							<p class="prdCount">총 <strong>54</strong>개의 아이템이 있습니다.</p>
							<ul id="type" class="xans-element- xans-product xans-product-orderby">
							<li class="xans-record-"><a href="">신상품</a></li>
							<li class="xans-record-"><a href="">낮은가격</a></li>
							<li class="xans-record-"><a href="">높은가격</a></li>
							<li class="xans-record-"><a href="">인기상품</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<!-- 상품목록 -->
				
				<div class="xans-element- xans-product xans-product-listnormal ec-base-product ec-base-product04">
				
					<ul class="prdList grid4">
					<c:forEach var="product" items="${productLists}" varStatus="status">
						<li id="anchorBoxId_96" class="xans-record-">
							<div class="thumbnail">
								<a href="item_detail.prd?pmkey=${product.num }">
									<img src="<%=request.getContextPath() %>/resources/prd_image/${product.image}" alt="${product.image }">
								</a>
							</div>
							<div class="description">
								<strong class="name">
									<a href="item_detail.prd?pmkey=${product.num }">
										<span class="title displaynone">
											<span style="font-size:16px;color:#000000;">상품명</span> :</span>
										<span style="font-size:16px;color:#000000; text-overflow: ellipsis;overflow: hidden;display: block;white-space: nowrap;  ">
											${product.name }
										</span>
									</a>
								</strong>
								<ul class="xans-element- xans-product xans-product-listitem spec"> 
									<li class=" xans-record-">
										<strong class="title displaynone">
											<span style="font-size:19px;color:#000000;font-weight:bold;">판매가</span> :</strong> 
											<span style="font-size:19px;color:#000000;font-weight:bold;text-decoration:line-through;">${product.price+1000}</span>
											<span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span>
									</li>
									<li class=" xans-record-">
										<strong class="title ">

											<span style="font-size:18px;color:#d91818;">할인판매가</span> :</strong> 
											<span style="font-size:18px;color:#d91818;" id="sale_price${status.index }" >${product.price }</span></li> 
								</ul>
							</div>
						</li>
					</c:forEach>
					</ul>
				</div>
					${pageInfo.pagingHtml }
			</div>
		</div>
	</div>
</div>

<%@include file="/common/main_bottom.jsp" %>