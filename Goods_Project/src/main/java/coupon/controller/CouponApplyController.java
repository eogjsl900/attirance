package coupon.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import coupon.model.Coupon;
import coupon.model.CouponDao;
import mall.cart.MyCartList;

@Controller
public class CouponApplyController {
	
	private static final String command = "/apply.cp";
	private static final String getPage = "close";

	@Autowired
	CouponDao couponDao;  

	@RequestMapping(value=command) 
	public String insert(@ModelAttribute("coupon") Coupon coupon,
			HttpServletResponse response,HttpSession session) {
		
		int num = coupon.getNum();
		Coupon bean =couponDao.getData(num);
	/*	couponDao.apply(num);*/
		
		
		response.setContentType("text/html; charset=utf-8");
		
			int totalprice =(Integer) session.getAttribute("totalAmount");
			
			
			if((totalprice) >= 30000) {
				totalprice = totalprice-bean.getPrice();
			}
			else {
				totalprice = totalprice-bean.getPrice()+2500;
			}
			
			
			
			PrintWriter out;
    		try { 
    			out = response.getWriter();
	
    	    		out.println("<script>");

    				out.println("window.opener.document.getElementById('coupon_num').value ="+bean.getNum());
    				out.println("window.opener.document.getElementById('coupon_price').innerHTML ="+bean.getPrice());
    				out.println("window.opener.document.getElementById('coupon_1').innerHTML ="+bean.getPrice());
    				out.println("window.opener.document.getElementById('coupon_2').value ="+bean.getPrice());
    				out.println("window.opener.document.getElementById('coupon_3').innerHTML ="+bean.getPrice());
    				out.println("window.opener.document.getElementById('total_amount').innerHTML ="+totalprice);
    				out.println("window.opener.document.getElementById('total_price').innerHTML ="+totalprice);
    				out.println("window.opener.document.getElementById('couponprice').value ="+bean.getPrice());
    				out.println("window.opener.document.getElementById('totalamount').value ="+totalprice);
    				out.println("window.opener.document.getElementById('totalprice').value ="+totalprice);
    				
    				out.println("window.close()");

    				out.println("</script>");
    	    	
    				out.flush();
    			
    			
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		
    		

		return getPage;
	}
	

}
