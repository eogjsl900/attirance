package mall.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.cart.MyCartList;

@Controller
public class CartSelectDeleteController {
	
	private static final String command = "/selectdelete.mall";
	private static final String gotoPage = "redirect:/list.mall";
	
	@RequestMapping(value=command)
	public String doAction(HttpSession session,HttpServletRequest request) {
		
		String[] allCheck = request.getParameterValues("rowcheck");
		
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
	
		Map<Integer,Integer> orderlists = mycart.getAllOrderLists();
		
		for(String i : allCheck) {
			orderlists.remove(Integer.parseInt(i));
		}
		
		
		return gotoPage;
		
	}
	
}
