<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
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
ProductUpdateForm.jsp<br>

<h2 align="center">상품 수정 화면(ProductUpdateForm.jsp)</h2>
<form:form commandName="product" action="update.prd" method="post" enctype="multipart/form-data">

	<input type="hidden" name="num" value="${product.num}">

<table border="1" align="center" height="500">
	<tr>
		<td width="120">카테고리</td>
		<td width="180">
		<select name="category"> 
				<option value="Cd" <c:if test="${product.category=='Cd'}"> selected</c:if>>Cd</option>
				<option value="Toy" <c:if test="${product.category=='Toy'}"> selected</c:if>>Toy</option>
				<option value="Living" <c:if test="${product.category=='Living'}"> selected</c:if>>Living</option>
				<option value="Fashion" <c:if test="${product.category=='Fashion'}">selected</c:if>>Fashion</option>
		</select>
		</td>
	</tr>
	<tr>
		<td width="120">상품명</td>
		<td width="180">
			<input type="text" name="name" value="${product.name}">
			<form:errors cssClass="err" path="name" />
		</td>
	</tr>
	<tr>
		<td width="120">가수명</td>
		<td width="180">
			<select name="singer">
				<option value="twice" <c:if test="${product.singer=='twice'}"> selected</c:if>>twice</option>
				<option value="bts" <c:if test="${product.singer=='bts'}"> selected</c:if>>bts</option>
				<option value="itzy" <c:if test="${product.singer=='itzy'}"> selected</c:if>>itzy</option>
				
		</select>
		</td>
	</tr>
	<tr>
		<td width="120">가격</td>
		<td width="180">
			<input type="text" name="price" value="${product.price}">
			<form:errors cssClass="err" path="price" />
		</td>
	</tr>
	<tr>
		<td width="120">재고 수량</td>
		<td width="180">
			<input type="text" name="stock" value="${product.stock}">
			<form:errors cssClass="err" path="stock" />
		</td>
	</tr>
	
	<tr>
		<td width="120">적립 포인트</td>
		<td width="180">
			<input type="text" name="point" value="${product.point}">
			<form:errors cssClass="err" path="point" />
		</td>
	</tr>
	
	
	<tr>
		<td width="120">그림 파일</td>
		<td width="180">
		
		<img src="<%=request.getContextPath() %>/resources/prd_image/${product.image}" width="100px" height="100px"> 
		
		<input type="file" name="upload" id="upload" value="">
		
		<input type="hidden" name="upload2" id="upload" value="${product.image}">
		
		<form:errors cssClass="err" path="image" />
		</td>
		
	</tr>
	<tr>
		<td colspan="2" align="center" width="300">
			<input type="submit" value="수정하기">
		</td>
	</tr>
</table>
</form:form>
</body>
</html>
