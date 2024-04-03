package mall.cart;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class MyCartList {
	
	//JSP ��ٱ��� : Vector<ProductBean> clist;
	
	private Map<Integer,Integer> orderlists = null;
	
	public MyCartList() {
		orderlists = new HashMap<Integer, Integer>();
		// Ű,�� => ��ǰ��ȣ, �ֹ�����
	}
	
	public void AddOrder(int pnum,int oqty) { //��ǰ��ȣ, �ֹ�����
		
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
