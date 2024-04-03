package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberAddressFindController {

	private static final String command = "/jusoPopup.me";
	private static final String getPage= "jusoPopup";
	private static final String gotoPage = "redirect:index.jsp"; //list.me
	

	
	@RequestMapping(value=command , method= { RequestMethod.GET, RequestMethod.POST } )
	public String doAction( Model model , @RequestParam(value="addr1",defaultValue="") String addr1 ) throws Exception {
		
		System.out.println("MemberAddressFindController:" + " Get: Addr=>" + addr1 );
		model.addAttribute("addr1", addr1 ) ;
		return getPage;
	}

	//  출처 싱아의 블로그.
	
	
	
	
	
}