<%@page import="member.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
	MemberDao dao = new MemberDao () ; 

	System.out.println("id check Proc =>"  );

	String userid =  request.getParameter("userid");
	String str="";
	
	
	System.out.println ( "id : " + userid ) ;
	
	Member bean = dao.GetData ( userid ) ;
	
	System.out.println("id_checkProc::" + "bean :" + bean.toString() ) ;
	
	boolean isCheck  = false ;
	
	if ( bean != null ) {
		isCheck = true;
	};
	
	if ( isCheck ) {
		str="NO";
		out.print(str);
	}
	else {
		str ="YES" ;
		out.print(str);
	}
%>


