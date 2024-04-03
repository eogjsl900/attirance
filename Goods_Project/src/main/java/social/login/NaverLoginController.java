package social.login;

/*출처 : http://blog.naver.com/PostView.nhn?blogId=p952973&logNo=221028025493&parentCategoryNo=&categoryNo=47&viewDate=&isShowPopularPosts=true&from=search
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

/*출처: https://bumcrush.tistory.com/151 [맑음때때로 여름]
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
	
	//로그인 첫 화면 요청 메소드
	@RequestMapping(value = "/naver.login", method = { RequestMethod.GET,RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		try {
			
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			
			System.out.println("네이버:" + naverAuthUrl);
			
			//네이버
			if ( naverAuthUrl != null ) {
				
				model.addAttribute("naver_url", naverAuthUrl);
				
			}
			
			
		} catch ( Exception e ) {
			System.out.println("네이버 로긴 어서라이제이션 실패");
			//e.printStackTrace();
		}
		
		
		return "login";
	}
	
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/naverBack.login", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
		System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
	//1. 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
	
		/** apiResult json 구조
		{"resultcode":"00",
		"message":"success",
		"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"shinn0608@naver.com","name":"\uc2e0\ubc94\ud638"}}
		**/
	
		//2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
	
	//3. 데이터 파싱
		//Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		//response의 nickname  or ID 값 파싱
		String id       = (String)response_obj.get("id");
		String nickname = (String)response_obj.get("nickname");
		String name = (String)response_obj.get("name");
		String email = (String)response_obj.get("email");
		
		System.out.println("nickname"  +  nickname);
		System.out.println("id" + id );
		System.out.println("name" + name );
		
	
	//4.파싱 닉네임 세션으로 저장
		session.setAttribute("naverName", name); //세션 생성
		session.setAttribute("userName", name);
		session.setAttribute("naverEmail", email); //세션 생성
		model.addAttribute("result", apiResult);
		return "login";
	}

}
