package qna.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import qna.model.QnaDao;




@Controller
public class QnAChekcController {

	private static final String command="/chkeck.qa";
	private static final String getPage = "secretForm";
	private static final String gotoPage = "redirect:/list.qa";
	
	@Autowired
	private QnaDao dao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(@RequestParam(value="num") int num,
						@RequestParam(value="pageNumber") int pageNumber,
						HttpServletRequest request) {
		
		
		request.setAttribute("num",num);
		request.setAttribute("pageNumber",pageNumber);
		
		
		return getPage;  
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public String delete(
			
			@RequestParam(value="passwd") String passwd,
			@RequestParam(value="num") int num,
			@RequestParam(value="pageNumber") int pageNumber,
			HttpServletRequest request,HttpServletResponse response
			) {
		
		response.setContentType("text/html; charset=utf-8");
		
		
		boolean flag=dao.chkPw(num,passwd);
		if(flag) {
			
		}
		else {
			PrintWriter out;
    		System.out.println("삭제실패");
    		try {
    			out = response.getWriter();
	
    	    		out.println("<script>");

    				out.println("alert('비밀번호가 맞지 않습니다!');");

    				out.println("history.go(-1);");

    				out.println("</script>");
    	    	
    				out.flush();
    			
    			
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		
    		
		}
		
		
		request.setAttribute("num",num);
		request.setAttribute("pageNumber",pageNumber);
		
		
		return gotoPage+"?pageNumber="+pageNumber;  
	}
	
	
}
