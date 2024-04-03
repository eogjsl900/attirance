
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/common.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>콘서트 예매</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/concert/concert.css">
</head>

<body id="body">
<%@include file="/common/main_top.jsp" %>
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<div class="creator-wrap">
				
					<div class="inner">
						<div class="titleArea">
							<h2>ATTIRANCE CONCERT</h2>
							<p>아띠랑스에서만 예약할 수 있는 콘서트</p>
						</div>
					</div>
					
					<div class="inner">
						<ul class="creator_list">
							<li style="display: block;">
								<a href="${pageContext.request.contextPath}/ConcertDetailView.jsp"> 
								<span> <img src="${pageContext.request.contextPath}/resources/concert/img/kpop1.jpg" alt="">
								</span> 
								<strong>
									군산 KPOP CONCERT<br>
									19.08.30~19.09.16
								</strong>
								<p>진행중</p> <em>+ more</em>
								</a>
							</li>
						</ul>
					</div>
					
					
				</div>
			</div>
		</div>
	</div>
			
<%@include file="/common/main_bottom.jsp" %>	


<style data-styled="" data-styled-version="4.3.2"></style>
</body>
</html>