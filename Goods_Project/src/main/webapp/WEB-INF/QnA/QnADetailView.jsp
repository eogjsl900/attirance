<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/main_top.jsp" %>
<%@include file="/common/common.jsp" %>    
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/QnA/QnA_image/QnADetailView.css">
<body>
	<div id="wrap">
		<div id="container">
			<div id="contents">

				<div class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4">
					
					<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="titleArea">
							<h2>
								<font color="333333">배송/상품 Q&A</font>
							</h2>
							<p>배송/상품 Q&A입니다.</p>
						</div>
					</div>

					<form id="BoardDelForm">
						<div class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
							<div class="ec-base-table typeWrite ">
								<table border="1" summary>
									<colgroup>
										<col style="width: 130px;">
										<col style="width: auto;">
									</colgroup>
									<tbody>
										<tr>
											<th style="text-align: center;">제목</th>
											<td>${qna.subject }</td>
										</tr>
	
										<tr>
											<th style="text-align: center;">작성자</th>
											<td>${qna.writer }</td>
										</tr>
	
										<tr>
											<td colspan="2"><b>작성일</b>${qna.regdate }
												&nbsp;&nbsp;&nbsp; <b>조회수</b>${qna.readcount }</td>
	
										</tr>
										<tr>
											<td colspan="2">${qna.content}<br> <br> 
											<c:if test="${qna.image1!=null}">
												<img src="<%=request.getContextPath() %>/resources/QnA/QnA_image/${qna.image1}">
												<br> <br>
											</c:if>
											</td>
										</tr>
										<c:if test="${qna.image2!=null}">
										<tr>
											<td colspan="2">
													<img
														src="<%=request.getContextPath() %>/resources/QnA/QnA_image/${qna.image2}">
													<br>
													<br>
											</td>
										</tr>
												</c:if>
									<c:if test="${qna.image3!=null}">
										<tr>
											<td colspan="2">
													<img
														src="<%=request.getContextPath() %>/resources/QnA/QnA_image/${qna.image3}">
													<br>
													<br>
											</td>
										</tr>
									</c:if>
								</table>
							</div>
							<div class="ec-base-button ">
								<span class="gLeft"> 
									<a href='list.qa?pageNumber=${pageNumber}'>
									<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_list.gif" alt="목록"></a>
								</span> 
									<span class="gRight"> 
										<a href="#" onclick="" class="">
										<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image//btn_delete.gif" alt="삭제"></a>
										
										<a href="" class="">
										<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_modify.gif" alt="수정"></a>
										
										<a href="#" onclick="location.href='reply.qa?num=${qna.num}&pageNumber=${pageNumber }'">
										<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_reply.gif" alt="답변"></a>
									</span>
							</div>
						</div>
					</form>
				</div>
				
				<div class="xans-element- xans-board xans-board-movement-4 xans-board-movement xans-board-4 ">
					<ul>
						<li class="prev">
						<strong>이전글</strong><a href="detail.fq?pmkey=${back.num }">${back.subject}</a>
						</li>
						
						<li class="next ">
						<strong>다음글</strong><a href="detail.fq?pmkey=${next.num }">${next.subject}</a>
						</li>
					</ul>
				</div>
				
				
				
				
				
				
<%-- 	FAQDetailView.jsp의 목록보기			
	<table border="1">
		<tr>
			<c:if test="${back.subject!=null}">
				<td>이전글</td>
				<td>
					<a href="detail.fq?pmkey=${back.num }">${back.subject}</a>
				</td>
			</c:if> 
		</tr>
		
		<tr>
			<c:if test="${next.subject!=null}">
			<td>다음글</td>
			<td>
				<a href="detail.fq?pmkey=${next.num }">${next.subject}</a>
			</td>
			</c:if> 
		</tr>
	</table> --%>


			</div>
		</div>
	</div>
	

					
	<%@include file="/common/main_bottom.jsp" %>	


