<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp" %>
<%@include file="/common/main_top.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notice/notice.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/QnA/QnA_image/QnAInsertForm.css">

<body>

	<div id="wrap">
		<div id="container">
			<div id="contents">

				<div
					class="xans-element- xans-board xans-board-writepackage-4 xans-board-writepackage xans-board-4 ">
					<div
						class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="titleArea">
							<h2>
								<font color="333333">배송/상품 Q&A</font>
							</h2>
							<p>배송/상품 Q&A입니다.</p>
						</div>

					</div>

					<form:form id="boardReplyForm" commandName="qna" method="post"
						action="reply.qa?pageNumber=${pageNumber }" enctype="multipart/form-data">
						<input type="hidden" name="num" value="${num }">
						<div class="ec-base-table typeWrite ">
							<table border="1" summary>
								<caption>글쓰기 폼</caption>
								<colgroup>
									<col style="width: 130px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">제목</th>
										<td>
											<select name="subject">
													<option value="[답변 완료]">[답변 완료]</option>
											</select>
										</td>
									</tr>

									<tr>
										<th scope="row">작성자</th>
											<td>
												<input type="text" name="writer" value="관리자">
												<form:errors cssClass="err" path="writer" />
											</td>
									</tr>

									<tr>
										<td colspan="2" class="clear">
											<textarea name="content" id="abc" rows="30" cols="120" style="width:100%;" placeholder="답변내용">
											</textarea>
											 <form:errors cssClass="err" path="content" />
										 </td>
									</tr>

								</tbody>

								<tbody>
									<tr>
										<th scope="row">첨부파일1</th>
										<td><input type="file" name="upload1" value=""></td>
									</tr>

									<tr>
										<th scope="row">첨부파일2</th>
										<td><input type="file" name="upload2" value=""></td>
									</tr>

									<tr>
										<th scope="row">첨부파일3</th>
										<td><input type="file" name="upload3" value=""></td>
									</tr>
								</tbody>

								<tbody>
									<tr>
										<th scope="row">비밀번호</th>
										<td><input type="password" name="passwd" value="1234">
											<form:errors cssClass="err" path="passwd" /></td>
									</tr>

									<tr>
										<th scope="row">비밀글설정</th>
										<td><input type="radio" name="secret" value="공개글">공개글
											<input type="radio" name="secret" value="비밀글"
											checked="checked">비밀글</td>
									</tr>

								</tbody>
							</table>
						</div>

						<div class="ec-base-button ">
							<span class="gLeft"> 
								<a href="#" onclick="location.href='list.qa'"> 
								<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_list.gif" alt="목록">
								</a>
							</span> 
							<span class="gRight"> 
								<a href="#" onclick="document.getElementById('boardReplyForm').submit();">
									<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_register.gif" alt="등록">
								</a>   
								<a href="#" onclick="location.href='list.qa'"> 
									<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_cancel.gif" alt="취소">
								</a>
							</span>
						</div>
					</form:form>
				</div>
				
			</div>
		</div>
	</div>

<%@include file="/common/main_bottom.jsp" %>
