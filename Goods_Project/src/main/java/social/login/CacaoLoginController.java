package social.login;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;

import social.login.CacaoLoginApi;


@Controller
public class CacaoLoginController {
	
	
    private CacaoLoginApi kakao ;
    
    @Autowired
	private void setCacaoLoginApi( CacaoLoginApi cacaoLoginApi) {
		this.kakao = cacaoLoginApi ;
	}
	
    
    @RequestMapping(value="/cacaoBack.login" , method = { RequestMethod.GET, RequestMethod.POST })
    public String login(@RequestParam("code") String code, HttpSession session) throws ParseException, UnsupportedEncodingException {
        
    	try {
    		
    		String access_Token = kakao.getAccessToken(code);
    		
    		if ( access_Token != null ) {
    			
    			HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
                System.out.println("cacaoBack.login : " + userInfo);
                
                
//              클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
                if (userInfo.get("email") != null) {
                    session.setAttribute("kakaoEmail", userInfo.get("email"));
                    session.setAttribute("kakaoName", userInfo.get("nickname"));
                    session.setAttribute("userName", userInfo.get("nickname"));
                    session.setAttribute("kakaoID", userInfo.get("id"));
                    session.setAttribute("access_Token", access_Token);
                    
                    System.out.println("cacaoBack.login :Email is  : " + userInfo.get("email") );
                    System.out.println("cacaoBack.login :Access_Token is " + access_Token );
                } //  if (userInfo.get("email") != null) {
                
    		} // if ( access_Token != null ) {
        } catch ( Exception e ) {
    		
    		e.printStackTrace();
    		
    	}
    	
        return "redirect:/login.login";
        
        
    }
    


}
