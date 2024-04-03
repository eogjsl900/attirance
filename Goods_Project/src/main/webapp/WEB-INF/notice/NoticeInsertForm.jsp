<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.err{
	font-size: 9pt;
	color: red;
	font-weight: bold;
	}
</style>
</head>
<body>
ProductInsertForm.jsp<br>
<%@include file="/common/admin_top.jsp" %>
	<td colspan="6" align="center">
<form:form commandName="product"  method="post"  action="insert.prd" enctype="multipart/form-data">
		<h1>상품 추가 화면</h1>
		<p>
			<label for="category">카테고리</label>
			<select name="category">
				<option value="Toy">Toy</option>
				<option value="Living">Living</option>
				<option value="Fashion">Fashion</option>
				<option value="Cd">Cd</option>
			</select>
			
		</p>
		<p>
			<label for="name">상품명</label>
			<input type="text" name="name" value="빨간사과">
			<form:errors cssClass="err" path="name" />
		</p>
		<p>
			<label for="singer">가수명</label>
			<select name="singer">
				<option value="twice">twice</option>
				<option value="bts">bts</option>
				<option value="itzy">itzy</option>
			</select>
			
		</p>
		<p>
			<label for="price">가격</label>
			<input type="text" name="price" value="5000">
			<form:errors cssClass="err" path="price" />
		</p>	
		<p>
			<label for="stock">재고 수량</label>
			<input type="text" name="stock" value="30">
			<form:errors cssClass="err" path="stock" />
		</p>	
		<p>
			<label for="point">적립 포인트</label>
			<input type="text" name="point" value="10">
			<form:errors cssClass="err" path="point" />
		</p>	
		
		<p>
			<label for="upload">그림 파일</label>
			<input type="file" name="upload" value="" >
			<form:errors cssClass="err" path="image" />
		</p>	
		
		<p>
			<input type="submit" value="추가하기">		
		</p>
	</form:form>
	</td>
	<%@include file="/common/admin_bottom.jsp" %>
</body>
</html>
