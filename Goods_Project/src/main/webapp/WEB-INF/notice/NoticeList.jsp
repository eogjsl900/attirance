
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
		location.href='insert.nt'; // NoticeInsertController
	}
	function goUpdate( num ){
		location.href='update.nt?pmkey=' +  num ; // NoticeUpdateController get
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
					<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
						<div class="titleArea crema-hide">
							<h2>
								<font color="#333333">공지사항</font>
							</h2>
							<p>
							공지사항입니다.
							</p>
						</div>
						<p class="imgArea"/>
					</div>
					
					<div class="ec-base-table typeList gBorder crema-hide">
						<table border="1" summary align="center" width="60%">
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col" class>작성일</th>
								<th scope="col" class>조회</th>
							</tr>
							</thead>
							
							<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002 center">
							<c:forEach var="Notice" items="${noticeLists}">
								<tr style="background-color:#FFFFFF; color:#555555;">
									<td><c:out value="${Notice.num}" /></td>
									<td class="subject left txtBreak">
										<a href="detail.nt?pmkey=<c:out value="${Notice.num}" />" style="color:#555555;">
											<c:out value="${Notice.subject}" />
										</a> <!--detail.nt => NoticeDetailViewController -->
									</td>
									
									<td><c:out value="${ Notice.writer }" /></td>
	
									<td>
										<span class="txtNum">
										<c:out value="${ Notice.regdate }" />
										</span>
									</td>
								
									<td>
										<span class="txtNum">
										<c:out value="${ Notice.readcount }" />
										</span>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					
				</div>
				
				
				
				<div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate crema-hide">
				<center>${pageInfo.pagingHtml}</center>
				</div>
				
				
				<form id="boardSearchForm" action="list.nt" method="get">
				
				<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 crema-hide ">
				<fieldset class="boardSearch">
				<p>
					<select name="whatColumn" id="search_key" fw-filter fw-label fw-msg>
						<option value="all">전체 검색
						<option value="writer">작성자
						<option value="subject">제목
					</select> 
					<input type="text" name="keyword" value="" id="search" class="inputTypeText">
					 <input type="image" src="${pageContext.request.contextPath}/resources/notice_img/btn_find.gif" name="Submit" value="검색" class="s" >
				</p>
				</fieldset>		
				</div>
				
				</form>
				
			</div>
		</div>
	</div>
	
	<%@include file="/common/main_bottom.jsp" %>	
</body>
</html>

