package qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import qna.model.QnA;
import qna.model.QnaDao;


@Controller
public class QnADetailViewController {

	private static final String command="/detail.qa";
	private static final String getPage = "QnADetailView";
	private static final String gotoPage = "redirect:/list.bd?";
	
	@Autowired
	QnaDao dao;
	 
	@RequestMapping(value=command)
	public String doAction(@RequestParam(value="num",required=true) int num,
			@RequestParam(value="pageNumber",required=false) int pageNumber,Model model) {
		
		System.out.println(getClass());
		
		System.out.println("pageNumber:"+pageNumber);
		
		QnA qna = dao.getQnA(num);
		
		
		model.addAttribute("qna", qna);
		model.addAttribute("pageNumber", pageNumber);
		
		return getPage;
	}
}





