package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberLoginController {

	private static final String command = "/LoginForm.me"; 
	private static final String getPage = "MemberLoginForm"; 
	
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping(value=command , method=RequestMethod.GET) // 
	public String doAction(){
		System.out.println(this.getClass() + " Get ��� ����");
		
		return getPage; // MemberLoginForm.jsp
	}
	
	@RequestMapping(value=command , method=RequestMethod.POST) // MemberLoginForm.jsp �α��� Ŭ��
	public ModelAndView doAction( Member member, HttpServletResponse response, HttpSession session) throws IOException{
		System.out.println(this.getClass() + " POST ��� ����");
		
		System.out.println(member.getId());
		System.out.println(member.getPassword());
		
		Member login = memberDao.GetData(member.getId());
		System.out.println("login:"+login);
		
		PrintWriter writer;
		writer = response.getWriter();
		ModelAndView mav = new ModelAndView();
		response.setContentType("text/html; charset=utf-8");
		if(login == null) {
			System.out.println("�������� �ʴ� ȸ��");
			writer.print("<script type='text/javascript'>");
			writer.print("alert('�ش� ���̵� �������� �ʽ��ϴ�.');");
			writer.print("</script>");
			writer.flush();
			//return getPage;
			return new ModelAndView(getPage);
			
		}
		else {
			System.out.println("�����ϴ� ȸ��");
			
			session.setAttribute("loginfo", login);
			session.setAttribute("userName",login.getName() );
			mav.setViewName((String)session.getAttribute("destination")); 
			// redirect:/insert.prd
			// redirect:/update.prd?pmkey=11
			
		}
		return mav;
	}
	
}







