<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
MemberList.jsp<br>
<a href="#">시작 페이지</a> <br><br>
	<a href="logout.jsp">로그아웃</a>
	<h2 align="center">회원 리스트 화면</h2>
	<center> 
		<form action="list.me" method="get" name="myform">
			<select name="whatColumn">
				<option value="all">전체 검색  
				<option value="name">이름
				<option value="gender">성별
			</select> 
			<input type="text" name="keyword" value="여"> 
			<input type="submit" value="검색">
		</form>
	</center>
	<table border="1"  align="center">
		<tr>
			<td colspan="12" align="right"><input type="button" value="추가하기"
				onclick="insert();"></td>
		</tr>
		<tr>
			<th>ID</th>
			<th>비번</th>
			<th>이름</th>
			<th>우편번호</th>
			<th>주소</th>
			<th>전화번호</th>
			<th>핸드폰</th>
			<th>Email</th>
			<th>포인트</th>
			<th>아티스트</th>
			<th>삭제</th>
			<th>수정</th>
		</tr>
		<c:forEach items="${memberLists}" var="member">
			<tr>
				<td align="center"><c:out value="${member.id}" /></td>
				<td align="center"><c:out value="${member.password}" /></td>
				<td align="left">
					<a href="detail.me?id=<c:out value="${member.id}" />"><c:out value="${member.name}" /></a><br> 
				</td>
				
				<td align="left"><c:out value="${ member.zipcode }" /></td>
				
				<td align="right"><c:out value="${ member.addr1 } ${ member.addr2 }" /></td>
				<td align="right"><c:out value="${ member.tel1 } ${ member.tel2 } ${ member.tel3 }" /></td>
				<td align="right"><c:out value="${ member.phone1 } ${ member.phone2 } ${ member.phone3 }" /></td>
				<td align="right"><c:out value="${ member.email1 } ${ member.email2 } " /></td>
				<td align="right"><c:out value="${ member.mpoint }" /></td>
				<td align="right"><c:out value="${ member.favorite }" /></td>
				<td align="right">
					<a	href="delete.me?id=<c:out value="${member.id}" />">삭제</a><br>
				<td>
				<input type="button" value="수정" onclick="goUpdate('${member.id}')" /></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<center>${pageInfo.pagingHtml}</center>

</body>
</html>