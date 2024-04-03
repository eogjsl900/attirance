package social.login;

/*��ó : http://blog.naver.com/PostView.nhn?blogId=p952973&logNo=221028025493&parentCategoryNo=&categoryNo=47&viewDate=&isShowPopularPosts=true&from=search
*      https://bumcrush.tistory.com/151
*/
import java.io.IOException;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


import com.github.scribejava.core.model.OAuth2AccessToken;

import social.login.NaverLoginApi;
import social.login.NaverLoginBO;

/*��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/


@Controller
public class NaverLoginController {
	
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
	
	//�α��� ù ȭ�� ��û �޼ҵ�
	@RequestMapping(value = "/naver.login", method = { RequestMethod.GET,RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		try {
			
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			
			System.out.println("���̹�:" + naverAuthUrl);
			
			//���̹�
			if ( naverAuthUrl != null ) {
				
				model.addAttribute("naver_url", naverAuthUrl);
				
			}
			
			
		} catch ( Exception e ) {
			System.out.println("���̹� �α� ��������̼� ����");
			//e.printStackTrace();
		}
		
		
		return "login";
	}
	
	
	//���̹� �α��� ������ callbackȣ�� �޼ҵ�
	@RequestMapping(value = "/naverBack.login", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
		System.out.println("����� callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
	//1. �α��� ����� ������ �о�´�.
		apiResult = naverLoginBO.getUserProfile(oauthToken); //String������ json������
	
		/** apiResult json ����
		{"resultcode":"00",
		"message":"success",
		"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"shinn0608@naver.com","name":"\uc2e0\ubc94\ud638"}}
		**/
	
		//2. String������ apiResult�� json���·� �ٲ�
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
	
	//3. ������ �Ľ�
		//Top���� �ܰ� _response �Ľ�
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		//response�� nickname  or ID �� �Ľ�
		String id       = (String)response_obj.get("id");
		String nickname = (String)response_obj.get("nickname");
		String name = (String)response_obj.get("name");
		String email = (String)response_obj.get("email");
		
		System.out.println("nickname"  +  nickname);
		System.out.println("id" + id );
		System.out.println("name" + name );
		
	
	//4.�Ľ� �г��� �������� ����
		session.setAttribute("naverName", name); //���� ����
		session.setAttribute("userName", name);
		session.setAttribute("naverEmail", email); //���� ����
		model.addAttribute("result", apiResult);
		return "login";
	}

}
