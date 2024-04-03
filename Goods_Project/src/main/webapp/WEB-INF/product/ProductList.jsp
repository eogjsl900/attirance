
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function insert(){
		location.href='insert.prd'; // ProductInsertController
	}
	function goUpdate( num ){
		location.href='update.prd?pmkey=' +  num ; // ProductUpdateController get
	}
</script>
</head>
<body>


	
	<%@include file="/common/admin_top.jsp" %>
	<td colspan="6" align="center">
	<h2 align="center">상품 리스트 화면<br>
	ProductList.jsp</h2>
	<center>
	<form action="list.prd" method="get"> 
		<select name="whatColumn">
			<option value="all">전체 검색
			<option value="name">상품명
			<option value="singer">가수명
		</select>
		<input type="text" name="keyword" value="트와이스">
		<input type="submit" value="검색">
	</form>
	</center>
	<table border="1" align="center" width="60%">
		
		<tr>
			<th>상품ID</th>
			<th>상품명</th>
			<th>카테고리</th>
			<th>가격</th>
			<th>삭제</th>
			<th>수정</th>
		</tr>
		<c:forEach items="${productLists}" var="product">
			<tr >
				<td align="center">
					<c:out value="${product.num}" />
				</td>
				<td align="left">
						<a href="detail.prd?pmkey=<c:out value="${product.num}" />"><c:out value="${product.name}" /></a><br>

				</td>
				<td align="left">
					<c:out value="${ product.category }" />
				</td>				
				<td align="right">
					<c:out value="${ product.price }" />원
				</td>
				<td align="right">
					<c:out value="${ product.image }" />
				</td>
				<td align="right">
					<a href="delete.prd?pmkey=<c:out value="${product.num}" />">삭제</a><br>
					<!-- delete.prd => ProductDeleteController -->
				</td>
				<td  align="center">
					<input type="button" value="수정" value="${product.num}" onclick="goUpdate('${product.num}')"/>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<center>
		${pageInfo.pagingHtml}
	</center>
	</td>
	<%@include file="/common/admin_bottom.jsp" %>	
</body>
</html>

