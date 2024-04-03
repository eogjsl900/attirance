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

					<form:form id="boardWriteForm" commandName="qna" method="post"
						action="insert.qa" enctype="multipart/form-data">
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
										<td><select name="subject" name="subject">
												<option value="[배송 관련 문의]">[배송 관련 문의]</option>
												<option value="[상품 관련 문의]">[상품 관련 문의]</option>
												<option value="[취소/교환/반품/환불 문의]">[취소/교환/반품/환불 문의]</option>
										</select></td>
									</tr>

									<tr>
										<th scope="row">작성자</th>
										<td><input id="writer" name="writer" fw-filter="isFill"
											fw-label="작성자" fw-msg="" class="inputTypeText" placeholder=""
											maxlength="50" value="" type="text"> <form:errors
												cssClass="err" path="writer" /></td>
									</tr>

									<tr>
										<td colspan="2" class="clear"><textarea name="content"
												id="abc" rows="30" cols="120" style="width:100%;"></textarea> <form:errors
												cssClass="err" path="content" /></td>
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

									<tr class="agree ">
										<th scope="row">개인정보 수집 및 <br>이용 동의
										</th>
										<td>
										<textarea id="privacy_agreement"
												name="privacy_agreement" fw-filter="" fw-label="개인정보보호정책"
												fw-msg="">
■ 개인정보의 수집·이용 목적
서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적

■ 수집하려는 개인정보의 항목
이름, 주소, 연락처, 이메일 등

■ 개인정보의 보유 및 이용 기간
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다. 
									</textarea><br>
									 개인정보 수집 및 이용에 동의하십니까?
											 <input id="privacy_agreement_radio0"
											name="privacy_agreement_radio" fw-filter="isFill"
											fw-label="개인정보보호정책" fw-msg="" value="T" type="radio">
											<label for="privacy_agreement_radio0">동의함</label> <input
											id="privacy_agreement_radio1" name="privacy_agreement_radio"
											fw-filter="isFill" fw-label="개인정보보호정책" fw-msg="" value="F"
											type="radio" checked="checked"> <label
											for="privacy_agreement_radio1">동의안함</label></td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="ec-base-button ">
							<span class="gLeft"> <span class="displaynone"> <a
									href="#none" onclick=""> <img
										src="/SkinImg/btn_reply_admin.gif" alt="관리자답변보기">
								</a>
							</span> <a href="#" onclick="location.href='list.qa'"> <img
									src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_list.gif"
									alt="목록">
							</a>
							</span> <span class="gRight"> <a href="#"
								onclick="document.getElementById('boardWriteForm').submit();">
									<img
									src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_register.gif"
									alt="등록">
							</a> <a href="#" onclick="location.href='list.qa'"> <img
									src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_cancel.gif"
									alt="취소">
							</a>
							</span>
						</div>
					</form:form>
				</div>
				
			</div>
		</div>
	</div>

<%@include file="/common/main_bottom.jsp" %>
