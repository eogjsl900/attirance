package qna.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import qna.model.QnA;
import qna.model.QnaDao; 

import utility.Paging;



@Controller 
public class QnAListController {
	 
	private static final String command = "/list.qa";
	private static final String getPage = "/QnAList";
	
	@Autowired
	QnaDao qnaDao; 
	
	@RequestMapping(value=command)
	public ModelAndView doAction(
			@RequestParam(value="whatColumn",required=false) String whatColumn,
			@RequestParam(value="keyword",required=false) String keyword,
			@RequestParam(value="pageNumber",required=false) String pageNumber,
			@RequestParam(value="pageSize",required=false) String pageSize,
			HttpServletRequest request,Model model) { 
		
		System.out.println("whatColumn:"+whatColumn);
		System.out.println("keyword:"+keyword);
		System.out.println("pageNumber:"+pageNumber);
		System.out.println("pageSize:"+pageSize);
		 
		Map<String,String> map=new HashMap<String, String>();		
		
		
		map.put("whatColumn", whatColumn);
		map.put("keyword","%"+keyword+"%");	//검색 할 단어
		
		int totalCount=qnaDao.GetTotalCount(map);
		System.out.println("totalCount:"+totalCount);
		
		String url = request.getContextPath()+command;
		System.out.println("url:"+url);
		
		Paging pageInfo = new Paging(pageNumber, pageSize, totalCount, url, whatColumn, keyword, null);
		System.out.println("offset:"+pageInfo.getOffset());
		System.out.println("limit:"+pageInfo.getLimit());
		
		List<QnA> lists = qnaDao.GetQnAList(pageInfo,map);
		System.out.println("갯수:"+lists.size());
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("lists",lists);
		mav.addObject("pageInfo",pageInfo);
		
		mav.setViewName(getPage);
		return mav;
		 
		
		
		
		
		 
		
		
	}
	
}
