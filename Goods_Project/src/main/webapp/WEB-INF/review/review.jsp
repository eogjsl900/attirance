<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>A</title>

</head>
<style>
		.star-input>.input,
		.star-input>.input>label:hover,
		.star-input>.input>input:focus+label,
		.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('<%=request.getContextPath()%>/resources/images/grade_img.png')no-repeat;}
		.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
		.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
		.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
		star-input>.input.focus{outline:1px dotted #ddd;}
		.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
		.star-input>.input>label:hover,
		.star-input>.input>input:focus+label,
		.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
		.star-input>.input>label:hover~label{background-image: none;}
		.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
		.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
		.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
		.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
		.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
		.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
	</style>
<body>
		<div id="reply">
		<c:if test="${sessionScope.userName == null }">
  			<p>상품평을 남기시려면 <a href="<% request.getContextPath(); %>/ex/login.login">로그인</a>해주세요</p>
 		</c:if>
 			
		<c:if test="${sessionScope.userName != null}">
			 <section class="replyForm">
			  	<form method="post" action="insert.rev">
			  		<span class="star-input">
						<span class="input">
					    	<input type="radio" name="star" value="1" id="p1">
					    	<label for="p1">1</label>
					    	<input type="radio" name="star" value="2" id="p2">
					    	<label for="p2">2</label>
					    	<input type="radio" name="star" value="3" id="p3">
					    	<label for="p3">3</label>
					    	<input type="radio" name="star" value="4" id="p4">
					    	<label for="p4">4</label>
					    	<input type="radio" name="star" value="5" id="p5">
					    	<label for="p5">5</label>
					  	</span>
					  	<output for="star-input"><b>0</b>점</output>						
</span>
				  		
			  		<input type="hidden" name="pnum" value="${product.num}">
			  		
			   		<div class="input_area">
			    		<textarea name="content" >${loginfo.getId()} , ${sessionScope.userId }</textarea>
			   		</div>
			   		
			   	<div class="input_area">
			    	<button type="submit" id="reply_btn">소감 남기기</button>
			   	</div>
			   
			  	</form>
			 </section>
		 </c:if>
			 
		 <section class="replyList">
			 <ol>
			   	<li>댓글 목록</li>
			   	<c:forEach var="review" items="${reviewLists}" >
			   		<table>
			   			<tr>
			   				<td>${review.mid } , ${review.review }</td>
			   			</tr>
			   		</table>
			   	</c:forEach>
			   	
		  	 </ol>    
		 </section>
	</div>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/star.js"></script>	
	
</body>
</html>