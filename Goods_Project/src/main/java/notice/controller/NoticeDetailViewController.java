package notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import notice.model.Notice;
import notice.model.NoticeDao;


@Controller
public class NoticeDetailViewController {

	private static final String getPage = "NoticeDetailView";
	private static final String command = "/detail.nt";	
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;	

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doActionGet( @RequestParam(value="pmkey",required=true) int pmkey ,
								Model model){
		
		Notice bean =  noticeDao.GetData(pmkey);
		noticeDao.addCount(bean);
		
		Notice back =  noticeDao.GetData(pmkey-1);
		Notice notice =  noticeDao.GetData(pmkey);
		Notice next=  noticeDao.GetData(pmkey+1);
		model.addAttribute("notice" , notice);
		model.addAttribute("back" , back);
		model.addAttribute("next" , next);
		return getPage; 
	}
}



