package qna.controller;
/*package qna.controller;

import java.io.IOException;
import java.io.PrintWriter;

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

import board.model.Board;
import board.model.BoardDao;




@Controller 
public class BoardUpdateController {
	private static final String command="/updateForm.bd";
	private static final String getPage = "updateForm";
	private static final String gotoPage = "redirect:/list.bd";
	
	@Autowired
	private QnaDao BoardDao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(@RequestParam(value="num",required=true) int num,
			@RequestParam(value="pageNumber",required=false) int pageNumber,Model model) {
		
		QnA bean=BoardDao.getBoard(num);
		
		model.addAttribute("bean",bean);
		model.addAttribute("pageNumber",pageNumber);
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView update(@RequestParam(value="pageNumber",required=false) int pageNumber,
			@Valid QnA bean,BindingResult result,HttpServletResponse response) {
		
		
		response.setContentType("text/html; charset=utf-8");
		ModelAndView mav=new ModelAndView();
		System.out.println("111pageNumber():"+pageNumber);
		if(result.hasErrors()) {
			mav.addObject("bean",bean);
			mav.addObject("pageNumber",pageNumber);
			
			mav.setViewName(getPage);
			return mav;
		}
		boolean flag=BoardDao.chkPw(bean.getNum(),bean.getPasswd());
		if(flag) {
			BoardDao.updateBoard(bean);
		}
		else {
			PrintWriter out;
    		System.out.println("수정실패");
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
		mav.setViewName(gotoPage+"?pageNumber="+pageNumber);
		
		return mav;
	}
}
*/