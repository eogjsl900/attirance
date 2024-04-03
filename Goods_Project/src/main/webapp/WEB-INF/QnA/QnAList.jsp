
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/common.jsp" %>
<%@include file="/common/main_top.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function insert(){
		location.href='insert.qa'; // boardInsertController
	}
	function goUpdate( num ){
		location.href='update.bd?pmkey=' +  num ; // boardUpdateController get
	}
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notice/notice.css">

</head>
<body>

 	<div id="wrap">
		<div id="container">
			<div id="contents">
 				<div class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
 					<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
 							<div class ="titleArea">
								<h2><font color="#333333">배송/상품 Q&A</font></h2>
								<p>배송/상품 Q&A입니다.</p>
							</div>
							<p class="imgArea"></p>
 					</div>
					<div class="boardSort">
						<span class="xans-element- xans-board xans-board-replysort-4 xans-board-replysort xans-board-4 "></span>
					</div>
					<div class="ec-base-table typeList gBorder">
						<table border="1" width="700" align="center">

							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>

							</tr>
							<c:forEach var="list" items="${lists }" varStatus="status">
								<tr>
									<td align="center" width="50">${status.index+1}</td>
									<td align="left" width="250"><c:if
											test="${list.ref<list.num }">
											<img
												src="<%=request.getContextPath()%>/resources/images/level.gif"
												width="20" height="16">
											<img
												src="<%=request.getContextPath()%>/resources/QnA/QnA_image/ico_re.gif">
										</c:if> 
										<c:if test="${list.secret=='비밀글'}">
											<c:if test="${loginfo.id=='admin'}">
												<a
												href="detail.qa?num=${list.num}&pageNumber=${pageInfo.pageNumber}">${list.subject}
											</a>
											</c:if> 
											<c:if test="${loginfo.id!='admin'}">
												<a
													href="secret.qa?num=${list.num}&pageNumber=${pageInfo.pageNumber}">${list.subject}
												</a>
											</c:if> 
											<img src="<%=request.getContextPath()%>/resources/QnA/QnA_image/ico_lock.gif"> 
										</c:if>
										
										<c:if test="${list.secret=='공개글'}">
											<a
												href="detail.qa?num=${list.num}&pageNumber=${pageInfo.pageNumber}">${list.subject}
											</a>
										</c:if></td>

									<td align="center" width="100">${list.writer }</td>
									<td align="center" width="150">${list.regdate }</td>

								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="xans-element- xans-board xans-board-buttonlist-4 xans-board-buttonlist xans-board-4  ec-base-button typeBG ">
						<span class="gRight"> 
							<a href="#" class="" onclick="insert();">
							<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_write.gif" alt="글쓰기"></a>
						</span>
					</div>
					

				</div>

	

	
	<center>
		${pageInfo.pagingHtml}
	</center>
	
	<br><br>
	<center>
	<form action="list.bd" method="get"> 
		<select name="whatColumn">
			<option value="all">전체 검색
			<option value="subject">제목
			<option value="writer">작성자
		</select>
		<input type="text" name="keyword" value="">
		<input type="submit" value="검색">
	</form>
	</center>		
	
	</div>
	</div>
	</div>
</body>
</html>

<%@include file="/common/main_bottom.jsp" %>