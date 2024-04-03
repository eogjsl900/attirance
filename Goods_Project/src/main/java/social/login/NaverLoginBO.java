package social.login;

import java.io.IOException;
import java.util.UUID;
import javax.servlet.http.HttpSession;
import org.springframework.util.StringUtils;

/*��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

/*��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/	
public class NaverLoginBO {
	
	/* ���� ��û���� �����ϴ� �Ķ���� */
	//client_id: ���ø����̼� ��� �� �߱޹��� Ŭ���̾�Ʈ ���̵�
	//response_type: ���� ������ ���� ���а�. code�� ���� ������ �ֽ��ϴ�.
	//redirect_uri: ���̹� �α��� ������ ����� ���޹��� �ݹ� URL(URL ���ڵ�). ���ø����̼��� ����� �� Callback URL�� ������ �����Դϴ�.
	//state: ���ø����̼��� ������ ���� ��ū

	/*��ó: https://bumcrush.tistory.com/151 [���������� ����]
	 * 
	 * 
*/
	//state: ���ø����̼��� ������ ���� ��ū
	private final static String CLIENT_ID = "8D8tuewsvQQjphi2THgH";
	private final static String CLIENT_SECRET = "QOjWEKYGLV";
	private final static String REDIRECT_URI = "http://localhost:8080/ex/naverBack.login";
	private final static String SESSION_STATE = "oauth_state";
	/* ������ ��ȸ API URL */
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";

	/*��ó: https://bumcrush.tistory.com/151 [���������� ����] */
	
	
	/* ���̹� ���̵�� ���� URL ���� Method */
	public String getAuthorizationUrl(HttpSession session) {
		/* ���� ��ȿ�� ������ ���Ͽ� ������ ���� */
		String state = generateRandomString();
		/* ������ ���� ���� session�� ���� */
		setSession(session,state);
		/* Scribe���� �����ϴ� ���� URL ���� ����� �̿��Ͽ� �׾Ʒ� ���� URL ���� */
		OAuth20Service oauthService = new ServiceBuilder()
		.apiKey(CLIENT_ID)
		.apiSecret(CLIENT_SECRET)
		.callback(REDIRECT_URI)
		.state(state) //�ռ� ������ �������� ���� URL������ �����
		.build(NaverLoginApi.instance());
		return oauthService.getAuthorizationUrl();
	}

/*	��ó: https://bumcrush.tistory.com/151 [���������� ����] */
	
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{
		/* Callback���� ���޹��� ���������� �������� ���ǿ� ����Ǿ��ִ� ���� ��ġ�ϴ��� Ȯ�� */
		String sessionState = getSession(session);
		if(StringUtils.pathEquals(sessionState, state)){
			OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.state(state)
				.build(NaverLoginApi.instance());
			/* Scribe���� �����ϴ� AccessToken ȹ�� ������� �׾Ʒ� Access Token�� ȹ�� */
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken; }
			return null;
		}

		/*��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/	
	
	/* ���� ��ȿ�� ������ ���� ���� ������ */
	private String generateRandomString() {
		return UUID.randomUUID().toString();
	}
	/* http session�� ������ ���� */
	private void setSession(HttpSession session,String state){
		session.setAttribute(SESSION_STATE, state);
	}
	/* http session���� ������ �������� */
	private String getSession(HttpSession session){
		return (String) session.getAttribute(SESSION_STATE);
	}

/*	��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/	
	
	/* Access Token�� �̿��Ͽ� ���̹� ����� ������ API�� ȣ�� */
	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{
		OAuth20Service oauthService =new ServiceBuilder()
			.apiKey(CLIENT_ID)
			.apiSecret(CLIENT_SECRET)
			.callback(REDIRECT_URI).build(NaverLoginApi.instance());
	OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
	oauthService.signRequest(oauthToken, request);
	Response response = request.send();
		return response.getBody();
	}

/*	��ó: https://bumcrush.tistory.com/151 [���������� ����]
*/	
	
	
	
	
	
	
	
	
}
