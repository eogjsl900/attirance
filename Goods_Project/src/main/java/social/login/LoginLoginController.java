package social.login;

/*��ó : http://blog.naver.com/PostView.nhn?blogId=p952973&logNo=221028025493&parentCategoryNo=&categoryNo=47&viewDate=&isShowPopularPosts=true&from=search
*      https://bumcrush.tistory.com/151
*/
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


import com.github.scribejava.core.model.OAuth2AccessToken;

import member.model.Member;
import member.model.MemberDao;
import social.login.NaverLoginApi;
import social.login.NaverLoginBO;

/*��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/


@Controller
public class LoginLoginController {
	
	/* Enabled  -   naverLogin */

	/**
	* Handles requests for the application home page.
	*/

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	
	}
	
	@Autowired
	private MemberDao memberDao;
	
	
	private static final String command = "/memberLogin.me"; 
	private static final String getPage = "redirect:/login.login";
	
	
	//�α��� ù ȭ�� ��û �޼ҵ�
	@RequestMapping(value = "/login.login", method = { RequestMethod.GET})
	public String loginAsGet( 
			Model model, 
			@RequestParam(value = "page", required = false ) String page,
			HttpSession session) throws ParseException {
		/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		System.out.println("���̹�:" + naverAuthUrl);
		
		//���̹�
		model.addAttribute("naver_url", naverAuthUrl);
		
		/// ���� ������ ���̹�...�α���..
		/// �������� īī��
		model.addAttribute("cacao_url", "https://kauth.kakao.com/oauth/authorize?client_id=89fb5b92f99b65eb1653a3649f070f1a&redirect_uri=http://localhost:8080/ex/cacaoBack.login&response_type=code");
		if(page==null) {
			page="index";
		}
		model.addAttribute("page",page);
		return "login";
	}
	
	@RequestMapping(value= "/login.login", method=RequestMethod.POST) // 
	public ModelAndView doAction( Member member,
			@RequestParam(value = "page", required = false ) String page,
			HttpServletResponse response, HttpSession session) throws IOException{
		System.out.println(" POST ��� ����"  + this.getClass() );
		
		System.out.println(member.getId());
		System.out.println(member.getPassword());
		
		Member login = memberDao.GetData(member.getId());
		System.out.println("login:"+login);
		
		PrintWriter writer;
		writer = response.getWriter();
		ModelAndView mav = new ModelAndView();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		if(login == null) {
			System.out.println("�������� �ʴ� ȸ��");
			writer.print("<script type='text/javascript'>");
			writer.print("alert('�ش� ���̵� �������� �ʽ��ϴ�.');");
			writer.print("</script>");
			writer.flush();

/*			return new ModelAndView(getPage);  */
		
		}
		else {
			System.out.println("�����ϴ� ȸ��");
			
			session.setAttribute("loginfo", login);
			session.setAttribute("userName", login.getName());
			System.out.println("page:"+page);
			if(page!=null) {
				mav.setViewName(page);
			}
			else { 
				mav.setViewName("index");
			}
/*			mav.setViewName((String)session.getAttribute("destination")); 
*/			
			
		}
		return mav;
	}
	
/*	��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/
	//�α׾ƿ�
	@RequestMapping(value = "/logout.login", method = { RequestMethod.GET  })
	public String logout(HttpSession session)throws IOException {
		System.out.println("����� logout");
		session.invalidate();
		return "redirect:/login.login";
	}
	
	
	@RequestMapping(value="/idCheck.login" , method=RequestMethod.GET)
	public String idCheck( HttpServletResponse response, HttpSession session ){
		System.out.println("LogInLogInController:" + "/idCheck.me =>" + this.getClass() );
		
		return getPage;
	}

	/*��ó: https://bumcrush.tistory.com/151 [���������� ����] */	
	
}
