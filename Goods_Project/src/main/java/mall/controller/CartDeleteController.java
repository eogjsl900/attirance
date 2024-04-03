package mall.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.cart.MyCartList;

@Controller
public class CartDeleteController {
	
	private static final String command = "/delete.mall";
	private static final String command2 = "/alldelete.mall";
	private static final String gotoPage = "redirect:/list.mall";
	
	@RequestMapping(value=command)
	public String doAction(HttpSession session,int pnum) {
		
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
	
		Map<Integer,Integer> orderlists = mycart.getAllOrderLists();
		orderlists.remove(pnum);
		
		
		return gotoPage;
		
	}
	
	@RequestMapping(value=command2)
	public String doAction(HttpSession session) {
		
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
		
		Map<Integer,Integer> orderlists = mycart.getAllOrderLists();
		orderlists.clear();
		
		
		return gotoPage;
		
	}
	
}
