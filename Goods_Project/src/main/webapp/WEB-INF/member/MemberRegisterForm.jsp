<%@include file="./../../common/common.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="./../../common/main_top.jsp" %>


<%
	
	application.setAttribute("isCheck","false"); 

%>	
<script type="text/javascript" src='http://code.jquery.com/jquery.min.js'></script>
<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
<script type="text/javascript">

	$(document).ready( whenReady ) ; 

	var isCheck = false ;
	var use="";
	var isChange = false ;
	var isBlank = false ;
	var str = 'NO' ;


	function ifCheck() {
		
				
		isCheck = true ;
		isBlank = false ;
		isChange = false ;
		
		if (  $('input[name="id"]').val() == "" ) {
			alert("아이디를 입력하세요")
			isBlank = true ;
			isCheck = false;
			return false ;
		}else {
			isBlank = false ;
		} ;
		
		//출처: https://offbyone.tistory.com/112 [쉬고 싶은 개발자]
		//alert  ("${pageContext.request.contextPath}"+"/idCheck.me") ;
		//  이 아작스 함수가 왜 오류인지 몰라서 다른 대안을 찾기로 함.;
		
		 $.ajax ({
			type: "GET",
			url : "<% request.getContextPath(); %>/ex/idCheck.me",
			data : ({
				userid : $('input[name="id"]').val ()
					}),
			success : function (  data  ) { // , status, xhr 
			   
				var Data = "NO" ;
				isCheck  = false ;
				isChange = false ;
				
				if ( data != "" )  { isCheck = true }
				else { isCheck = false };
				
				
			    if (  isCheck ) { Data = "NO"}
			    else { Data = "YES"} ;
			    
				if(  Data =="YES") {
					$('#idmessage').html("<font color=red>사용가능합니다.</font>");
					$('#idmessage').show ();
					use="possible";
					isCheck = true ;
					
					
				} else {
					$('#idmessage').html("<font color=red>이미 있는 ID입니다.</font>");
					$('#idmessage').show ();
					use="impossible";
					isCheck = false ;
					
					
			
				} //else
			}, //success
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert(jqXHR.responseText);
	        } // Error
		}) ; //ajax */
		
		
		
	}//idCheck()
	
	
	function onSub() {
	
		if ( use == "impossible") {
			alert ("사용중 인  ID 입니다");
			return false ;
		}
		if ( isCheck == false || isChange == true ) {
			alert ("중복체크해 주세요");
/* 			alert ("Check=" + isCheck);
			alert ("Change=" + isChange ); */
			return false ;
		}; 
		
		if ( isBlank == true ) {
			alert ("id 입력하세요");
			isBlank = true ;
			return false ;
		};
		
	}  // function onSub() {

	function kydown (){
		
		$('#idmessage').hide ();
		use="";
		isChange=true;
		
	} //function kydown (){


	function onAddress (){
		
		var fKey = $('#addr1').val() ;
		
		var pop = window.open("${pageContext.request.contextPath}"+"/jusoPopup.me?addr1="+fKey,"pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
	} // function onAddress (){
	
		
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		/* document.form.addr1.value = roadFullAddr; */
		
		document.form.address.value = roadAddrPart1 + " " + addrDetail;
		document.form.addr1.value = roadAddrPart1 ;
		document.form.addr2.value = addrDetail;
		
		document.form.zipcode.value = zipNo;
}
	function whenReady () {

		
		
		$('#submit').click( onSub );
		$('input[name="ifDup"]').click( ifCheck );
		$('input[name="id"]').keydown ( kydown ) ;
		$('#findAddr').click( onAddress );

	}  // function whenReady () {

</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>주소 입력 샘플</title>
</head>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/login/css/bootstrap.min.css">
    <!-- Costumize CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login&join/css/style.css">
	<!-- custom CSS -->   
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login&join/css/custom.css">



    <!-- Container -->
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-md-c6 col-md-auto login-box">
          <h1 class="text-center wdi-red">회원가입</h1>
          <hr>
          
          
          <!-- ㅋㅋ -->
			<table boder="" cellspacing="1" align="center" class="table">
				<form:form commandName="member" name="form" id="form" method="post" action="registerForm.me">
					<tr class="active">

						<td text-align="center"><h5 class="h5c wdi-pink">아이디</h5></td>
						
						
							<td><input type="text" name="id" class="form-controlC form-control-lgC flat-inputC" placeholder="ID" ><form:errors cssClass="err" path="id" />
							    <input type="button" name="ifDup" id="ifDup" value="중복확인" class="btnC btn-primaryC" />
							    <span id="idmessage" style="display:none;"></span>
							</td>
					</tr>
					<tr>
						<td><h5 class="h5c wdi-pink">비밀번호</h5></td>
						<td><input type="password" name="password" class="form-controlC form-control-lgC flat-inputC" placeholder="비밀번호"><form:errors cssClass="err" path="password" /></td>
					</tr>


					<tr>
						<td><h5 class="h5c wdi-pink">비밀번호 확인</h5></td>
						<td><input type="RePassword" class="form-controlC form-control-lgC flat-inputC" placeholder="*비밀번호를 다시입력하여주세요." />&nbsp;</td>
					</tr>

					<tr>
						<td><h5 class="h5c wdi-pink">이름</h5></td>
						<td><input type="text" name="name" class="form-controlC form-control-lgC flat-inputC" placeholder="이름"><form:errors cssClass="err" path="name" /></td>
					</tr>
					<tr>
						<td><h5 class="h5c wdi-pink">우편번호</h5></td>
						<td><input type="text" name="zipcode" value="000-000" class="form-controlC form-control-lgC flat-inputC" placeholder="000-000"><form:errors cssClass="err" path="zipcode" /></td>
					</tr>
					
					<tr>
						<td><h5 class="h5c wdi-pink">주소</h5></td>
						<td> 
						    <input type="button" id="findAddr"  value="주소찾기"  class="btnC btn-primaryC" width="20" />&nbsp;&nbsp;
						    <input type="text" id = "address" name="address" class="form-controlC form-control-lgC flat-inputC" value="서울시" />
						    
						    <input type="hidden" id = "addr1" name="addr1" value="서울시" />
						    <input type="hidden" id = "addr2" name="addr2" value="강남구" />
						</td>
					</tr>
					
					
					<tr>
						<td><h5 class="h5c wdi-pink">전화번호</h5></td>
						<td>
							<input type="text" name="tel1" value="002"><form:errors cssClass="err" path="tel1" />
						- <input type="text" name="tel2" value="123"><form:errors cssClass="err" path="tel2" /> - <input type="text" name="tel3" value="0000"><form:errors cssClass="err" path="tel3" />
						</td>
					</tr>

                    <tr>
						<td><h5 class="h5c wdi-pink">휴대폰</h5></td>
						<td>
							<input type="radio" name="phone" /> SKT 
							<input type="radio" name="phone" /> KTF 
							<input type="radio" name="phone" /> LGU+ <br / >
							<input type="text" name="phone1" value="002" size="3" class="form"><form:errors cssClass="err" path="phone1" /> -
							<input type="text" name="phone2" value="123" size="4" class="form"><form:errors cssClass="err" path="phone2" /> - 
							<input type="text" name="phone3" value="0000" size="4" class="form"><form:errors cssClass="err" path="phone3" /></td>
					</tr>
					<tr>
						<td><h5 class="h5c wdi-pink">이메일</h5></td>
						<td><input type="text" name="email1" value="abc">
								<form:errors cssClass="err" path="email1" /> @ <input type="text" name="email2" value="abcd.com">
								<form:errors cssClass="err" path="email2" />
							&nbsp;&nbsp; <select>
								<option>직접입력</option>
								<option>naver.com</option>
								<option>daum.net</option>
								<option>nate.com</option>
						</select></td>
					</tr>
					<tr>
					<td><h5 class="h5c wdi-pink">적립포인트</h5></td>
					<td><input type="text" name="mpoint" value="200"/></td>
					
					</tr>

					<tr>
						<td><h5 class="h5c wdi-pink">좋아하는 연예인</h5></td>
						<td>
							<input type="checkbox" name="favorite" value="bts">방탄소년단
							<input type="checkbox" name="favorite" value="iu">아이유
							<input type="checkbox" name="favorite" value="itzy">있지
							<input type="checkbox" name="favorite" value="twice">트와이스
							<form:errors cssClass="err" path="favorite" />
						</td>
					</tr>
					
					<tr >
					<td colspan="2">
						<input type="submit" name="submit" id="submit" class="btn btn-lg btn-block btn-login" value="회원가입"/>
	              		<input type="button" onClick="location.href='<% request.getContextPath(); %>/ex/login.login'" class="btn btn-lg btn-block btn-login" value="회원 로그인"/>
				    </td>
				    </tr>
				</form:form>
			</table>
			<!-- //ㅋㅋ -->
          

              
            </div>
          
        </div>
      </div>
    </div>


    
<%@include file="./../../common/main_bottom.jsp" %>
	
    