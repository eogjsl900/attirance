package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.validation.Valid;

//import org.apache.log4j.Logger;
//import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberRegisterController {

	private static final String command = "/registerForm.me";
	private static final String getPage= "MemberRegisterForm";
	private static final String gotoPage = "redirect:index.jsp"; //list.me
	
	private static final Logger LOGGER = Logger.getLogger(MemberRegisterController.class.getName());
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;	
	
	
	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction(){
		System.out.println("MemberRegisterController:" + " Get 방식 들어옴=>" + this.getClass() );
		
		return getPage;
	}
	
	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doAction(@ModelAttribute @Valid Member member,BindingResult result , HttpServletResponse response , HttpSession session) throws IOException{
		
		System.out.println("MemberRegisterController:" + " Post 방식 들어옴=>" + this.getClass() );
		
		System.out.println(member.getId());
		
		ModelAndView mav = new ModelAndView();
		response.setContentType("text/html; charset=utf-8");
		if (result.hasErrors()) {
			
			
			System.out.println("유효성 검사 오류입니다");
			
			String Data  = "데이터를 다시입력하세요" ;
			PrintWriter writer;
			writer = response.getWriter();
			
			writer.print("<script type='text/javascript'>");
			writer.print("alert(' "+ Data +"');");
			writer.print("</script>");
			writer.flush();
			
			mav.setViewName(getPage); // ProductInsertForm.jsp
			return mav;
		} 

		int cnt = -1;
		cnt = memberDao.InsertData(member);

		System.out.println("MemberRegController=>ID::" + member.getId());
		System.out.println("MemberRegController=>Name::" + member.getName());
		
		session.setAttribute("loginfo", member);
		session.setAttribute("userName", member.getName());
		session.setAttribute("kakaoName", null );
		session.setAttribute("naverName", null );
		
		mav.setViewName(gotoPage); 
		return mav;
	}
	
	
	@RequestMapping(value="/idCheck.me" , method = { RequestMethod.GET , RequestMethod.POST  })
	public @ResponseBody String idCheck(  HttpServletRequest request,  HttpServletResponse response, HttpSession session ) throws IOException{

		Map<String, Object> map = new HashMap<String, Object>();
		
		System.out.println("MemberRegisterController:" + "/idCheck.me =>" + this.getClass() );
		System.out.println("MemberRegisterController:" + "/idCheck.me =>" + request.getParameter("userid") );
		
		String userId  = (String)request.getParameter("userid") ;
				
		System.out.println("MemberRegisterController:" + userId );
		
		
		Member bean  = memberDao.GetData(userId);
		
		String Answer =  (bean != null) ? ( bean.getId() ):("") ;   

		return ( Answer );
	}

	/*출처: https://bumcrush.tistory.com/151 [맑음때때로 여름] */	
	
}