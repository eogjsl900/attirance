package mall.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mall.cart.MyCartList;
import mall.cart.ShoppingInfo;
import product.model.Product;
import product.model.ProductDao;

@Controller
public class CartListController { //CartAddController 에서 옴
	
	private static final String command = "list.mall";
	private static final String command2 = "preorder.mall";
	private static final String command3 = "selectpreorder1.mall";
	private static final String getPage = "CartList";
	private static final String getPage2 = "OrderList";
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping(value=command)
	public String doAction(HttpSession session,HttpServletResponse response) {
		
		response.setContentType("text/html; charset=utf-8");
		if(session.getAttribute("mycart") == null) {
			
			return getPage;
			
		}
		
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
		Map<Integer, Integer> orderlists = mycart.getAllOrderLists();
		
		System.out.println("장바구니 상품 갯수 : "+orderlists.size());
		
		Set<Integer> keylist = orderlists.keySet();
		System.out.println("keylist : " + keylist); // [3,12,5]
		
		
		List<ShoppingInfo> shopLists = new ArrayList<ShoppingInfo>();
		
		int totalAmount = 0;
		
		for(Integer pnum  : keylist) {
			Integer qty = orderlists.get(pnum);
			System.out.println(pnum+","+qty); // 3,2    12,4    5,9
			
			//select pname from products where num=pnum
			
			Product bean = productDao.GetData(pnum);
			
			ShoppingInfo shopInfo = new ShoppingInfo();
			shopInfo.setPnum(pnum);
			shopInfo.setPname(bean.getName());
			shopInfo.setQty(qty);
			shopInfo.setPrice(bean.getPrice());
			shopInfo.setPimage(bean.getImage());
			System.out.println(shopInfo.getPname());
			
			int amount = bean.getPrice() * qty;
			shopInfo.setAmount(amount);
			
			totalAmount += amount;
			
			shopLists.add(shopInfo);
		}
		System.out.println(shopLists.toString());
		session.setAttribute("shopLists",shopLists);
		session.setAttribute("totalAmount",totalAmount);
		session.setAttribute("listSize",orderlists.size());
		
		return getPage ; // CartList.jsp
		
	}
	
	@RequestMapping(value=command2)
	public String doAction2(HttpSession session, HttpServletResponse response) throws IOException {
		
		if(session.getAttribute("loginfo") == null) {
			
		/*	PrintWriter writer;
			writer = response.getWriter();
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");

			
			writer.print("<script type='text/javascript'>");
			writer.print("alert('로그인 후 이용 가능합니다.');");
			writer.print("</script>");
			writer.flush();*/
			session.setAttribute("destination", "redirect:/preorder.mall");
			
			return "redirect:/login.login";
		}
		
		
		
		return getPage2 ; // OrderList.jsp
		
	}
	
	@RequestMapping(value=command3)
	public String doAction3(HttpSession session,HttpServletResponse response,HttpServletRequest request ) {
		
		response.setContentType("text/html; charset=utf-8");
		if(session.getAttribute("mycart") == null) {
			
			return getPage;
			
		}
		
		
		String[] allCheck1 = request.getParameterValues("rowcheck");
		String[] allCheck = (String[]) request.getAttribute("allCheck");
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
		Map<Integer, Integer> orderlists = mycart.getAllOrderLists();
		
		
		System.out.println("장바구니 상품 갯수 : "+orderlists.size());
		
		Set<Integer> keylist = orderlists.keySet();
		
		System.out.println("keylist : " + keylist); // [3,12,5]
		System.out.println(allCheck.length);
		
		List<ShoppingInfo> shopLists = new ArrayList<ShoppingInfo>();
		
		int totalAmount = 0;
		
		System.out.println();
		for(String i : allCheck) {
			System.out.println("올체크넘버:"+i);
		}
		for(Integer pnum  : keylist) {
			for(String i : allCheck) {
				if(Integer.parseInt(i) == pnum) {
					Integer qty = orderlists.get(pnum);
					System.out.println(pnum+","+qty); // 3,2    12,4    5,9
					
					//select pname from products where num=pnum
					
					Product bean = productDao.GetData(pnum);
					
					ShoppingInfo shopInfo = new ShoppingInfo();
					shopInfo.setPnum(pnum);
					shopInfo.setPname(bean.getName());
					shopInfo.setQty(qty);
					shopInfo.setPrice(bean.getPrice());
					shopInfo.setPimage(bean.getImage());
					//System.out.println(shopInfo.getPname());
					
					int amount = bean.getPrice() * qty;
					shopInfo.setAmount(amount);
					
					totalAmount += amount;
					
					shopLists.add(shopInfo);
				}
				
			}
				
			
		}
		System.out.println(shopLists.toString());
		session.setAttribute("shopLists",shopLists);
		session.setAttribute("totalAmount",totalAmount);
		session.setAttribute("listSize",orderlists.size());
		
		return getPage2 ; // OrderList.jsp
		
	}
	
}
