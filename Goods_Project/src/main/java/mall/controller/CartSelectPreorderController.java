package mall.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.cart.MyCartList;
import mall.cart.ShoppingInfo;
import product.model.Product;
import product.model.ProductDao;



@Controller
public class CartSelectPreorderController {
	
	private static final String command = "/selectpreorder.mall";
	private static final String gotoPage = "OrderList";
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping(value=command)
	public String doAction(HttpSession session,HttpServletRequest request) {
		
		String[] allCheck = request.getParameterValues("rowcheck");
		System.out.println("열체크 길이"+allCheck.length);
		
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
		Map<Integer, Integer> orderlists = mycart.getAllOrderLists();
		
		/*for(String i : allCheck) {
			
			orderlists.remove(Integer.parseInt(i));
		}*/
		
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
		
		return gotoPage;
		
	}
	
}
