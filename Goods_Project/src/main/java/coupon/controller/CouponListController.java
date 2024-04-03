package coupon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import coupon.model.Coupon;
import coupon.model.CouponDao;
import faq.model.FAQ;
import faq.model.FAQDao;
import member.model.Member;
import utility.Paging;

@Controller
public class CouponListController { 

	private static final String getPage ="OrderCoupon";
	private static final String command = "/coupon.cp";

	@Autowired
	@Qualifier("myCouponDao")
	private CouponDao couponDao;

	@RequestMapping(value=command)
	public ModelAndView doAction(HttpServletRequest request,
			@RequestParam(value = "id", required = false ) String id) {

		System.out.println("id:"+id);  
		List<Coupon> coupon = couponDao.cList(id); 

		ModelAndView mav = new ModelAndView();
		mav.addObject( "coupons",coupon);		 

		mav.setViewName(getPage);
		return mav;

	}
}
















