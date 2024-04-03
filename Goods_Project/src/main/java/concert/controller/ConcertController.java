package concert.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import concert.model.Concert;
import concert.model.ConcertDao;
import faq.model.FAQ;
import faq.model.FAQDao;

import utility.Paging;

@Controller
public class ConcertController {

	private static final String getPage = "ticket";
	private static final String command = "/select.cc";

	@Autowired
	@Qualifier("myConcertDao")
	private ConcertDao concertDao;  

	@RequestMapping(value=command)
	public ModelAndView doAction(@RequestParam(value = "day", required = false ) String day,
			HttpServletRequest request) {

   
		Concert con = concertDao.GetConcert(day);

		ModelAndView mav = new ModelAndView();
		mav.addObject( "concert", con );		 
		mav.setViewName(getPage); // faqList
		return mav;

	}
}
















