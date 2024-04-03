package mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mall.cart.ShoppingInfo;
import product.model.compositeDao;

@Controller
public class DetailViewController {
	
	private static final String command = "/detailview.mall";
	private static final String getPage = "order_result";
	
	@Autowired
	private compositeDao compositeDao;
	
	@RequestMapping(value=command)
	public String doAction(@RequestParam(value="maxonum",required=true)int maxonum, Model model) {
		
		List<ShoppingInfo> lists = compositeDao.showDetail(maxonum);
		
		model.addAttribute("lists",lists);
		model.addAttribute("pmkey",maxonum);
		
		return getPage;
	}
	
	
}
