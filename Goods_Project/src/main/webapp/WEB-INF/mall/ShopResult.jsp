<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>
<%@include file="/common/common.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="main.jsp">시작 페이지</a><br><br> 
ShopResult.jsp<br><br>
	<h2 align="center">주문 상세 내역</h2>
	<table border="1" align="center">
		<tr>
			<td colspan="2" align="left">
				고객 : ${sessionScope.loginfo.name}
			</td>
			<td colspan="3" align="left">
				주분 번호 : ${pmkey} 
			</td>			
		</tr>	
		<tr>
			<td colspan="5" align="left">
				배송지 : ${sessionScope.loginfo.address1}&nbsp;${sessionScope.loginfo.address2}
			</td>			
		</tr>	
		<tr>
			<th>순번</th>
			<th>상품명(상품번호)</th>
			<th>수량</th>
			<th>단가</th>
			<th>금액</th>
		</tr>
		<c:forEach items="${lists}" var="result"  varStatus="status" >
			<tr>
				<td align="center">
					${status.count}
				</td>			
				<td align="center">
					${result.pname}(${result.pnum})
				</td>				
				<td align="center">
					${result.qty}
				</td>
				<td align="center">
					<fmt:formatNumber value="${result.price}" pattern="###,###"/>					
				</td>
				<td align="center">
					<fmt:formatNumber value="${result.amount}" pattern="###,###"/>					
				</td>			
			</tr>
		</c:forEach>		
	</table>		
	<br><br>
	<%@include file="/common/main_bottom.jsp" %>
</body>
</html> 