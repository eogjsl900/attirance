<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="/common/main_top.jsp" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/QnA/QnA_image/QnASecretForm.css">
	  
<div id="wrap">
	<div id="container">
		<div id="contents">
			<div class="xans-element- xans-board xans-board-securepackage-4 xans-board-securepackage xans-board-4 ">
			    <div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				    <div class="titleArea">
				            <h2>배송/상품 Q&A</h2>
				            <p>배송/상품 Q&A입니다.</p>
				    </div>
				</div>
				
				<form method="post" name="chekForm" action="secret.qa?num=${num}&pageNumber=${pageNumber }" id="aaa">
				    <div class="xans-element- xans-board xans-board-secure-4 xans-board-secure xans-board-4 ">
				    	<div class="secret">
				    	<h3>
				    		<img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/h3_secret.gif" alt="비밀글보기">
				    	</h3>
				    	<fieldset>
							<legend>비밀글보기</legend>
					        <p class="info">이 글은 비밀글입니다. 
					        <strong class="txtEm">비밀번호를 입력하여 주세요.</strong><br>
					        	관리자는 확인버튼만 누르시면 됩니다.
					        </p>
					        <p class="password"><label for="passwd">비밀번호</label> 
					        <input id="passwd" name="passwd" fw-filter="" fw-label="비밀번호" fw-msg="" value="" type="password">
					        </p>
					        <div class="ec-base-button gBlank30">
					            <a href="list.qa?pageNumber=${pageNumber }">
					            	<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_secret_list.gif" alt="목록">
					            </a>
					            <a href="#" onclick="document.getElementById('aaa').submit();">
					            	<img src="${pageContext.request.contextPath}/resources/QnA/QnA_image/btn_secret_submit.gif" alt="확인">
					            </a>
					        </div>
				        </fieldset>
				        </div>
				       </div>
				</form>

			</div>
		</div>
	</div>
</div>
	<%@include file="/common/main_bottom.jsp" %>