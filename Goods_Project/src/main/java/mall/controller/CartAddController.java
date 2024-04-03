package mall.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mall.cart.MyCartList;
import mall.cart.ShoppingInfo;
import product.model.Product;
import product.model.ProductDao;

@Controller
public class CartAddController {

	private static final String command = "/add.mall";
	private static final String command2 = "/direct.mall";
	private static final String gotoPage = "redirect:/list.mall";
	private static final String gotoPage2 = "redirect:/preorder.mall";
	
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET )
		
		public String doAction(Product product,
				HttpSession session) {

			System.out.println(getClass() + " POST ");

			int pnum = product.getNum();
			int oqty = product.getOrderqty();

			System.out.println(product.getNum());
			System.out.println(product.getOrderqty());
			
			MyCartList mycart = (MyCartList)session.getAttribute("mycart");
			System.out.println("mycart : " + mycart); // 

			if(mycart == null) {
				mycart = new MyCartList();
			}
			mycart.AddOrder(pnum,oqty);
			session.setAttribute("mycart", mycart);
			
/*
			if(session.getAttribute("loginfo") == null && session.getAttribute("KaKaoName") == null && session.getAttribute("naverName") == null) { 
				session.setAttribute("destination", "redirect:/detail.prd?pmkey="+pnum); // ProductDetailViewController=>ProductDetailView.jsp

				return "redirect:/login.login"; // MemberLoginController
			}
*/

		
				return gotoPage; // list.mall => CartListController.java

			
				
		}
		
	@RequestMapping(value=command2, method=RequestMethod.GET )
	
	public String doAction2(Product product,
			HttpSession session) {
		
		if(session.getAttribute("loginfo") == null) {
		
			return "redirect:/login.login";
		}
			
			
		System.out.println(getClass() + " POST ");

		int pnum = product.getNum();
		int oqty = product.getOrderqty();

		System.out.println(product.getNum());
		System.out.println(product.getOrderqty());
		
		MyCartList mycart = (MyCartList)session.getAttribute("mycart");
		System.out.println("mycart : " + mycart); // 

		if(mycart == null) {
			mycart = new MyCartList();
		}
		mycart.AddOrder(pnum,oqty);
		session.setAttribute("mycart", mycart);
		
		Map<Integer, Integer> orderlists = mycart.getAllOrderLists();
		
		System.out.println("장바구니 상품 갯수 : "+orderlists.size());
		
		Set<Integer> keylist = orderlists.keySet();
		System.out.println("keylist : " + keylist); // [3,12,5]
		
		
		List<ShoppingInfo> shopLists = new ArrayList<ShoppingInfo>();
		
		int totalAmount = 0;
		
		for(Integer pnum1  : keylist) {
			Integer qty = orderlists.get(pnum1);
			System.out.println(pnum1+","+qty); // 3,2    12,4    5,9
			
			//select pname from products where num=pnum
			
			Product bean = productDao.GetData(pnum1);
			
			ShoppingInfo shopInfo = new ShoppingInfo();
			shopInfo.setPnum(pnum1);
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
		
/*
		if(session.getAttribute("loginfo") == null && session.getAttribute("KaKaoName") == null && session.getAttribute("naverName") == null) { 
			session.setAttribute("destination", "redirect:/detail.prd?pmkey="+pnum); // ProductDetailViewController=>ProductDetailView.jsp

			return "redirect:/login.login"; // MemberLoginController
		}
*/

	
			return gotoPage2; // preorder.mall => CartListController.java

		
			
	}
	
	
	
	
}
