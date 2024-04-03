
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
		location.href='insert.nt'; // FAQInsertController
	}
	function goUpdate( num ){
		location.href='update.nt?pmkey=' +  num ; // FAQUpdateController get
	}
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notice/notice.css">
</head>
<body>
	<%@include file="/common/main_top.jsp" %>
	
		<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
					<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002">
						<div class="titleArea crema-hide">
							<h2>
								<font color="#333333">FAQ</font>
							</h2>
							<p>자주 묻는 질문</p>
						</div>
						<p class="imgArea"></p>
					</div>
					<div class="boardSort crema-hide">
						<span
							class="xans-element- xans-board xans-board-category-1002 xans-board-category xans-board-1002 "><select
							id="board_category" name="board_category" fw-filter=""
							fw-label="" fw-msg="">
								<option value="" selected="selected">전체</option>
								<option value="1">회원</option>
								<option value="3">주문결제</option>
								<option value="4">배송</option>
								<option value="5">쿠폰</option>
								<option value="6">교환/반품/환불</option>
								<option value="7">기타</option>
						</select></span> <span
							class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
					</div>
					
					<div class="ec-base-table typeList gBorder crema-hide">
					<table border="1" summary>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
								<tr style="">
									<th scope="col">번호</th>
									<th scope="col" class="">카테고리</th>
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="col" class="">작성일</th>
									<th scope="col" class="">조회</th>
								</tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center">
								<c:forEach var="FAQ" items="${faqLists}">
									<tr style="background-color:#FFFFFF; color:#555555;">
										<td><c:out value="${FAQ.num}" /></td>
										<td><c:out value="${FAQ.category}" /></td>
										<td class="subject left txtBreak">
											<a href="detail.fq?pmkey=<c:out value="${FAQ.num}"/>&readcount=${FAQ.readcount}" style="color:#555555;">
											<c:out value="${FAQ.subject}" /></a>
											<!--detail.nt => FAQDetailViewController -->
											<span class="txtEm"></span>
										</td>
										<td><c:out value="${ FAQ.writer }" /></td>

										<td>
											<span class="txtNum">
												<c:out value="${ FAQ.regdate }" />
											</span>
										</td>
										<td>
											<span class="txtNum">
												<c:out value="${ FAQ.readcount }" />
											</span>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					
				</div>
	
	
	
	
	<center>
		${pageInfo.pagingHtml}
	</center>
	</td>
	<form action="list.nt" method="get"> 
		<select name="whatColumn">
			<option value="all">전체 검색
			<option value="writer">작성자
			<option value="subject">제목
		</select>
		<input type="text" name="keyword" value="">
		<input type="submit" value="검색">
	</form>
	
	</div>
	</div>
	</div>
	
	<%@include file="/common/main_bottom.jsp" %>	
</body>
</html>

