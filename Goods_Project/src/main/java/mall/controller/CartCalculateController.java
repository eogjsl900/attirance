package mall.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.cart.MyCartList;
import mall.cart.ShoppingInfo;
import member.model.Member;
import member.model.MemberDao;
import order.model.Order;
import order.model.OrderDao;
import orderdetail.model.OrderDetail;
import orderdetail.model.OrderDetailDao;
import product.model.Product;
import product.model.ProductDao;
import product.model.compositeDao;

@Controller
public class CartCalculateController {
	
	private static final String command = "/calculate.mall"; // ������Ʈ.jsp���� �����ϱ� Ŭ��
	private static final String gotoPage = "order_result";
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao; // ȸ������Ʈ ���� 
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao; // ��� ���� ����
	
	@Autowired
	@Qualifier("myOrderDao")
	private OrderDao orderDao; // orders ���̺� ����
	
	@Autowired
	@Qualifier("myOrderDetailDao")
	private OrderDetailDao orderDetailDao; // �ֹ� �� ���̺� �߰�
	
	@Autowired
	@Qualifier("myCompositeDao")
	private compositeDao compositeDao;//
	
	@RequestMapping(value=command)
	public String doAction(HttpSession session, Order order, HttpServletRequest request, Model model) {
		
		
		Member member = (Member) session.getAttribute("loginfo");
		
		memberDao.updatePoint(member.getId(),100); //100�߰�
		
		OrderDetail odBean;
		order.setMid(member.getId());
		
		System.out.println(order.toString());
		
		orderDao.insertData(order);
		//orderDao.insertData("kim");
		int maxonum = orderDao.getMaxOrderNum();
		System.out.println("maxonum : "+maxonum); // orders���̺���  ���� ū oid ��
		
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
		Map<Integer,Integer> orderlists = mycart.getAllOrderLists();
		//3,2
		//17,6
		
		Set<Integer> keylist = orderlists.keySet(); // [3,17] ��ǰ��ȣ
		
		for( Integer pnum  : keylist) {
			Integer qty = orderlists.get(pnum);
			System.out.println(pnum+","+qty); // 3,2   17,6
			
			productDao.updateStock(pnum, qty);
			
			odBean = new OrderDetail();
			odBean.setOnum(maxonum);
			odBean.setPnum(pnum);
			odBean.setQty(qty);
//			3,1,2
//			3,4,5
//			3,5,2
			
			orderDetailDao.insertData(odBean);
		}
		
		session.removeAttribute("mycart");
		
		//List<Order> lists = orderDao.OrderResult(maxonum);
		
		List<ShoppingInfo> lists = compositeDao.OrderResult(maxonum);
		
		order = orderDao.GetData(maxonum);
		
		model.addAttribute("lists",lists);
		model.addAttribute("order",order);
		model.addAttribute("maxonum",maxonum);
		
		System.out.println(lists.toString());
		//model.addAttribute("maxonum", maxonum);
		//<Order> lists = orderDao.OrderResult(maxonum);
		
		//model.addAttribute("lists",lists);
		/*System.out.println(order.getName());
		
		odBean = orderDetailDao.GetData(maxonum);
		
		System.out.println(odBean.getPnum());
		
		Product product = productDao.GetData(odBean.getPnum());
		
		model.addAttribute("product", product);
		model.addAttribute("odBean", odBean);
		model.addAttribute("order", order);*/
		
		return gotoPage;
		
	}
	
}
