package faq.controller;
/*package notice.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import product.model.Product;
import product.model.ProductDao;

@Controller
public class NoticeDeleteController {

	private static final String gotoPage = "redirect:/list.prd";
	private static final String command = "/delete.prd";
	
	@Autowired
	private ServletContext servletContext;   
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction(
				@RequestParam(value="pmkey",required=true) int pmkey){
		
		Product product = productDao.GetData(pmkey);
		
		String deletePath = servletContext.getRealPath("/resources/prd_image");
		File delFile = new File( deletePath + File.separator +product.getImage() );
		delFile.delete();

		productDao.DeleteData( pmkey );
		
		return gotoPage;
	}
	
}
*/