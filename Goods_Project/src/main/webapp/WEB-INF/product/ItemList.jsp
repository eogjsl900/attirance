<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp" %>
<%@include file="/common/product_top.jsp" %>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">
	
		$(function(){
					
			var regexp = /\B(?=(\d{3})+(?!\d))/g;
			
			for(var i=0;i<'${productLists.size()}';i++){
				var aaa=$('#sale_price'+i).text().replace(regexp, ',');
				$('#sale_price'+i).text(aaa); 
				
				var bbb=$('#price'+i).text().replace(regexp, ',');
				$('#price'+i).text(bbb); 
			}
		
		});
		
</script>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">${keyword }'s GOODS ITEM!</h2>
						
						
						<c:forEach var="product" items="${productLists}" varStatus="status">
						
					
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=request.getContextPath() %>/resources/prd_image/${product.image}" alt="" width="100" height="200" />
										
										<span style="font-size:16px;color:#000000; text-overflow: ellipsis;overflow: hidden;display: block;white-space: nowrap;">${product.name }</span><br> 
										<span style="font-size:18px;color:#d91818;" id="sale_price${status.index }">${product.price }￦</span><br>
										<a href="item_detail.prd?pmkey=${product.num }" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>상세정보 보기</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2 id="price${status.index }">${product.price }KRW</h2>
											<p>${product.name }</p>
											<a href="item_detail.prd?pmkey=${product.num }" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>상세정보 보기</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="direct.mall?num=${product.num }&orderqty=1"><i class="fa fa-plus-square"></i>바로 구매하기</a></li>
										<li><a href="add.mall?num=${product.num }&orderqty=1"><i class="fa fa-plus-square"></i>장바구니 담기</a></li>
									</ul>
								</div>
							</div>
						</div>
						
							</c:forEach>
						
						<!-- <ul class="pagination">
							
							<li class="active"><a href="">1</a></li> 
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul> -->
						
						${pageInfo.pagingHtml }
						
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	

<%@include file="/common/product_bottom.jsp" %>
