package coupon.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import coupon.model.Coupon;
import coupon.model.CouponDao;
import member.model.MemberDao;
import qna.model.QnA;
import qna.model.QnaDao;

@Controller
public class CouponController {

	private static final String command = "/add.cp";
	private static final String getPage = "/coupon";

	@Autowired
	CouponDao couponDao;  
	
	@Autowired
	ServletContext servletContext;
	
	
	@RequestMapping(value=command) 
	public String insert(@ModelAttribute("coupon") @Valid Coupon coupon
			,HttpServletResponse response) {
		
		response.setContentType("text/html; charset=utf-8");
		
		
		int flag=couponDao.chkId(coupon);
		if(flag == 1) {
			PrintWriter out;
    		try { 
    			out = response.getWriter();
	
    	    		out.println("<script>");

    				out.println("alert('쿠폰이 발급되었습니다.');");

    				out.println("</script>");
    	    	
    				out.flush();
    			
    			
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
			couponDao.add(coupon);
		}
		else if(flag == 0){
			PrintWriter out;
    		try {
    			out = response.getWriter();
	
    	    		out.println("<script>");

    				out.println("alert('이미 발급 되었습니다!');");

    				out.println("history.go(-1);");

    				out.println("</script>");
    	    	
    				out.flush();
    			
    			
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		
    		
		}
		
		else if(flag == -1){
			PrintWriter out;
			try {
				out = response.getWriter();
				
				out.println("<script>");
				
				out.println("alert('로그인을 해주세요');");
				
				out.println("history.go(-1);");
				
				out.println("</script>");
				
				out.flush();
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		
		  
		return getPage;
	}
	
}
