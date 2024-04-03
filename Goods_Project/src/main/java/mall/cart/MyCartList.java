package mall.cart;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class MyCartList {
	
	//JSP 장바구니 : Vector<ProductBean> clist;
	
	private Map<Integer,Integer> orderlists = null;
	
	public MyCartList() {
		orderlists = new HashMap<Integer, Integer>();
		// 키,값 => 상품번호, 주문수량
	}
	
	public void AddOrder(int pnum,int oqty) { //상품번호, 주문수량
		
		if(orderlists.containsKey(pnum) == false) {
			orderlists.put(pnum, oqty); 
		}
		else {
			int oldoqty = orderlists.get(pnum);
			orderlists.put(pnum, oldoqty+oqty);
		}
		
	}

	public Map<Integer, Integer> getAllOrderLists() {
		
		return orderlists;
		
	}
	public Map<Integer, Integer> selectOrderLists(HttpServletRequest request) {
		
		
		
		return orderlists;
		
	}
	
	
	
}
