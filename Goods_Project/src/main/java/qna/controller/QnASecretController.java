package qna.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import qna.model.QnaDao;

@Controller
public class QnASecretController {

	private static final String command="/secret.qa";
	private static final String getPage = "secretForm";
	private static final String gotoPage = "redirect:/detail.qa";
	
	@Autowired
	QnaDao dao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(
						@RequestParam(value="num") int num,
						@RequestParam(value="pageNumber") int pageNumber,
						HttpServletRequest request) {
		
		
		request.setAttribute("num",num);
		request.setAttribute("pageNumber",pageNumber);
		
		
		return getPage;  
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public String delete(
			@RequestParam(value="passwd",required=true) String passwd,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNumber") int pageNumber,
			HttpServletRequest request,HttpServletResponse response
			) {
		
		response.setContentType("text/html; charset=utf-8");
		
		
		boolean flag=dao.chkPw(num,passwd);
		if(flag==false) {
			
			PrintWriter out;
    		try {
    			out = response.getWriter();
	
    	    		out.println("<script>");

    				out.println("alert('비밀번호가 맞지 않습니다!');");

    				out.println("</script>");
    	    	
    				out.flush();
    			
    				return getPage+"?num="+num;  
    				
    			
    			
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    			
    		}
			
			
			
		}
		
		request.setAttribute("num",num);
		request.setAttribute("pageNumber",pageNumber);
		  
		
		return gotoPage+"?num="+num+"&pageNumber="+pageNumber;  

	}
	
	
}
