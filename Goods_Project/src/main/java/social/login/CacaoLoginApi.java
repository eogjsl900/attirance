package social.login;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;

import org.springframework.stereotype.Service;
 
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


@Service
public class CacaoLoginApi {
	
	public String getAccessToken (String authorize_code) throws ParseException {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";
        
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            
            //    POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            
            //    POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=89fb5b92f99b65eb1653a3649f070f1a");
            sb.append("&redirect_uri=http://localhost:8080/ex/cacaoBack.login");
            sb.append("&code=" + authorize_code);
            bw.write(sb.toString());
            bw.flush();
            
            //    결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("CacaoLoginApi=>" + "responseCode : " + responseCode);
 
            //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line = "";
            String result = "";
            
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("CacaoLoginApi=>" + "response body : " + result);
            
    		
    		
            //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JSONParser parser = new JSONParser();
            
            Object obj = parser.parse( result );
    		JSONObject jsonObj = (JSONObject) obj;
    		
    		access_Token  = (String)jsonObj.get("access_token");
    		refresh_Token  = (String)jsonObj.get("refresh_token");
    	  
    		System.out.println("CacaoLoginApi=>" +"access_token : " + access_Token);
            System.out.println("CacaoLoginApi=>" +"refresh_token : " + refresh_Token);
            
            br.close();
            bw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } 
        
        return access_Token;
    }
	
	public HashMap<String, Object> getUserInfo (String access_Token) throws ParseException {
	    
	    //    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
	    HashMap<String, Object> userInfo = new HashMap<String, Object>();
	    String reqURL = "https://kapi.kakao.com/v2/user/me";
	    
	    try {
	        URL url = new URL(reqURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("POST");
	        
	        //    요청에 필요한 Header에 포함될 내용
	        conn.setRequestProperty("Authorization", "Bearer " + access_Token);
	        
	        int responseCode = conn.getResponseCode();
	        System.out.println("responseCode : " + responseCode);
	        
	        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
	        
	        String line = "";
	        String result = "";
	        
	        while (( line = br.readLine()) != null) {
	        	
	        	result +=  line;
	        }
	        
           System.out.println("response body : " + result);
	        
	        
    		
	        JSONParser parser = new JSONParser();
	        Object obj = parser.parse( result );
 		    JSONObject jsonObj = (JSONObject) obj;
 	

 		   String id  = (String)jsonObj.get("id").toString();
 		  JSONObject prop  = (JSONObject)jsonObj.get("properties");
          
 		  JSONObject acc  = (JSONObject)( jsonObj.get("kakao_account") );
          
           String email     = (String) acc.get("email") ;
	       String nickname  = (String)prop.get("nickname") ;
	       
	       
	       
	       System.out.println("HashMap Api=>" +"id : " + id);
           System.out.println("HashMap Api=>" +"email : " + email );
           System.out.println("HashMap Api=>" +"nickname : " + nickname );
	       
           byte[] nick = nickname.getBytes(Charset.forName("UTF-8")) ;
           String nickName  = new String ( nick , "UTF-8") ;
           
           userInfo.put("nickname" , nickName);
	       userInfo.put("id", id);
	       userInfo.put("email" , email);
	       
           System.out.println("nickName UTF-8=>" + userInfo.get("nickname") );
           
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    
	    return userInfo;
	    
	}

}

//  https://developers.kakao.com/docs/restapi/user-management
//  https://developers.naver.com/apps/#/myapps/t6LPBtoPpLq9nadEG9Vu/config
//  https://developers.kakao.com/docs/restapi/tool
//  https://antdev.tistory.com/36?category=807235
//  https://antdev.tistory.com/34