package faq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import faq.model.FAQ;
import faq.model.FAQDao;



@Controller
public class FAQDetailViewController {

	private static final String getPage = "FAQDetailView";
	private static final String command = "/detail.fq";	
	
	@Autowired
	@Qualifier("myFAQDao")
	private FAQDao faqDao;	

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doActionGet( @RequestParam(value="pmkey",required=true) int pmkey ,
								Model model){
		
		FAQ bean= faqDao.GetData(pmkey);
		faqDao.addCount(bean);
		
		FAQ back =  faqDao.GetData(pmkey-1);
		FAQ faq =  faqDao.GetData(pmkey);
		FAQ next=  faqDao.GetData(pmkey+1);
		model.addAttribute("faq" , faq);
		model.addAttribute("back" , back);
		model.addAttribute("next" , next);
		return getPage; 
	}
}



