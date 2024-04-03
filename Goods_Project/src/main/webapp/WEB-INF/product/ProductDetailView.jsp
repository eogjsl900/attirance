<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>
<%@include file="/common/common.jsp" %>    
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp86916002'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
       
         
    });
    
    function buy(){
    	 IMP.request_pay({
             pg : 'kakaopay', // version 1.1.0부터 지원.
             pay_method : 'card',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : '${product.name}',
             amount : '${product.price}',
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
                 location.href="<%=request.getContextPath()%>/index.jsp";
             } else {
                 var msg = '결제에 실패하였습니다.';
                 msg += '에러내용 : ' + rsp.error_msg;
             }
             alert(msg);
             
         });
    }
    </script>
    
<center>
<h2>상품 상세 화면</h2>
	<table border="1"  cellspacing="0">
		<tr>
			<td>
				<img src="<%=request.getContextPath() %>/resources/prd_image/${product.image}" width="100px" height="100px">
			</td>
			<td align="center">
				<table border="1" cellspacing="0">
					<tr height="50">
						<td width="120">상품명</td>
						<td width="300"><c:out value="${product.name}" /></td>
					</tr>
					<tr height="50">
						<td width="120">가수명</td>
						<td width="300"><c:out value="${product.singer}" /></td>
					</tr>	
					
					<tr height="50">
						<td width="120">가격</td>
						<td width="300"><c:out value="${product.price}" /> 원</td>  
					</tr>
					<tr height="50">
						<td width="120">재고 수량</td>
						<td width="300"><c:out value="${product.stock}" /></td>
					</tr>				
				
								
				
									
					<tr height="50">
						<td colspan="2" align="center" width="300">
							<input type="button" value="결제하기" onclick="buy()">
						
						</td>						 
					</tr>
				</table>
			</td>
		</tr>
	</table>
</center>

<%@include file="/common/main_bottom.jsp" %>
