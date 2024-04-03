<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>
<%@include file="/common/common.jsp" %>    
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notice/noticeDetail.css">
<body>

	<div id="wrap">
		<div id="container">
			<div id="contents">

				<div class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
	
					<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					
						<div class="titleArea">
							<h2>
								<font color="#333333">공지사항</font>
							</h2>
							<p>공지사항입니다.</p>
						</div>
						
					</div>
					
					<div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002">
						<div class="ec-base-table typeWrite ">	
						<table border="1" summary>
							<colgroup>
								<col style="width:130px;">
								<col style="width:auto;">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">제목</th>
								<td>${notice.subject }</td>
							</tr>
		
							<tr>
								<th scope="row">작성자</th>
								<td>${notice.writer }</td>
							</tr>
		
							<tr>
								<td colspan="2">
									<ul class="etcArea">
										<li class="">
											<strong>작성일</strong>
											<span class="txtNum">
												${notice.regdate }
											</span>
										</li>
										<li class="">
											<strong>조회수</strong>
											<span class="txtNum">
												${notice.readcount }
											</span>
										</li>
									</ul>
									<div class="detail">
										<c:if test="${notice.image!=null}">
										<img
											src="<%=request.getContextPath() %>/resources/notice_img/${notice.image}">
										<br>
										<br>
										</c:if> ${notice.contents}
									</div>
									
								</td>
		
							</tr>
		
							</tbody>
						</table>
						</div>
					</div>


				</div>






				<button onclick="list.nt">목록</button>
				<br> <br>

				<table border="1">
					<tr>
						<c:if test="${back.subject!=null}">
							<td>이전글</td>
							<td><a href="detail.nt?pmkey=${back.num }">${back.subject}</a>
							</td>
						</c:if>
					</tr>

					<tr>
						<c:if test="${next.subject!=null}">
							<td>다음글</td>
							<td><a href="detail.nt?pmkey=${next.num }">${next.subject}</a>
							</td>
						</c:if>
					</tr>

				</table>




			</div>
		</div>
	</div>
	
	<%@include file="/common/main_bottom.jsp" %>	
</body>
</html>


