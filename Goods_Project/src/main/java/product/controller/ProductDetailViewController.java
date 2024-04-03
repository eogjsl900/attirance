package product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import product.model.Product;
import product.model.ProductDao;

@Controller
public class ProductDetailViewController {

	private static final String getPage = "ProductDetailView";
	private static final String command = "/detail.prd";	
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao;	

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doActionGet( @RequestParam(value="pmkey",required=true) int pmkey ,
								Model model){
		
		Product product =  productDao.GetData( pmkey );
		model.addAttribute("product" , product);
		return getPage; 
	}
}












