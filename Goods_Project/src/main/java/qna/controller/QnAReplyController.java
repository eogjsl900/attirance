package qna.controller;


import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import qna.model.QnA;
import qna.model.QnaDao;


@Controller
public class QnAReplyController {

	private static final String command = "/reply.qa";
	private static final String getPage = "/QnAList";
	private static final String gotoPage= "/replyForm";
	@Autowired
	QnaDao qnaDao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(
			@RequestParam(value="num",required=false) int num,
			@RequestParam(value="pageNumber",required=false) int pageNumber,
			HttpServletRequest request) {
		
		request.setAttribute("num", num);
		request.setAttribute("pageNumber", pageNumber);
		return gotoPage; 
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView reply(@RequestParam(value="pageNumber",required=false) int pageNumber,
			@ModelAttribute("qna") @Valid QnA bean,
			BindingResult result,HttpServletRequest request) {
		
		ModelAndView mav=new ModelAndView();     
		
		if(result.hasErrors()) {
			mav.addObject("num",bean.getNum());
			mav.addObject("pageNumber",pageNumber);
			mav.setViewName(gotoPage); 
			return mav; 
		}
		Timestamp regdate = new Timestamp(System.currentTimeMillis());

		bean.setRegdate(regdate);

		qnaDao.replyArticle(bean);
		mav.setViewName("redirect:/list.qa?pageNumber="+pageNumber);
		
		return mav;
	}
	
}
	
	
	
