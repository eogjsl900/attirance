<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="./../../common/main_top.jsp" %> 
    


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/login/css/bootstrap.min.css">
    <!-- Costumize CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login&join/css/style.css">
<script type="text/javascript">
//출처: https://chan2727.tistory.com/entry/JavaScript-함수호출을-통해-POST방식으로-페이지-이동A태그-사용 [찬의 세상살이]


	function logAllout ( ) {
	
	alert ("logout") ;
		
}
</script>

<script type="text/javascript">
	function register() {
		location.href = "registerForm.me"; // MemberRegisterController.java
		<%-- <a href="<% request.getContextPath(); %>/ex/registerForm.me">회원가입</a> --%>
	}
	function memberList() {
		location.href = "list.me"; // MemberListController 
	}
</script>
<style type="text/css">
body{
	/* background-image: url('http://i.imgur.com/XP6nAbL.jpg'); */
}
</style>
<center>
<c:choose>

<c:when test="${naverName != null}">
	<jsp:forward page="index.jsp" />
<h3>'${naverName}' 님 환영합니다!
	
 </h3>
</c:when>

<c:when test="${kakaoName != null}">
	<jsp:forward page="index.jsp" />
<h3>'${kakaoName}' 님 환영합니다! </h3>
</c:when>

<c:when test="${loginfo.name != null}">

<h3>'${ loginfo.name }' 님 환영합니다! </h3>
</c:when>

<c:otherwise>

    <!-- Container -->
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-md-6 col-md-auto login-box">
          <h1 class="text-center wdi-red">LOGIN</h1>
          <hr>
          <form method="post" action="login.login?page=${page}" name="frm">
            <div class="form-row">
              <div class="col-md-12">
                <input type="text" name="id" class="form-control form-control-lg flat-input" placeholder="ID">
              </div>
              <div class="col-md-12">
                <input type="password" name="password" class="form-control form-control-lg flat-input" placeholder="password">
              </div>
              <button type="submit" class="btn btn-lg btn-block btn-login">회원 로그인</button>
              <input type="button"  onClick="register();"   class="btn btn-lg btn-block btn-login" value="회원가입"/>
            </div>
            
              <table><table><table>
              		<tr><td><!-- <input border="none" height="1"/> --></td></tr>
            		<tr><td><!-- <input border="none" height="1"/> --></td></tr>
            		<tr><td><!-- <input border="none" height="1"/> --></td></tr>
            		<tr><td><!-- <input border="none" height="1"/> --></td></tr>
            		<tr><td><!-- <input border="none" height="1"/> --></td></tr>
            		<tr><td><!-- <input border="none" height="1"/> --></td></tr>
              </table></table></table>
              
              
	          <a href="${naver_url}" > <img width="183" height="48" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a> &nbsp;
	          <a href="${cacao_url}" > <img width="183" height="48" src="<%=request.getContextPath()%>/resources/kakao_account_login_btn_medium_wide.png"/></a>
           
          </form>
          
        </div>
      </div>
    </div>

</c:otherwise>
</c:choose>
</center>
    
<%@include file="./../../common/main_bottom.jsp" %>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>