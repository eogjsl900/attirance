package product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import product.model.Product;
import product.model.ProductDao;

@Controller
public class ProductInsertController {

	private static final String getPage = "ProductInsertForm";
	private static final String gotoPage = "redirect:/list.prd";
	private static final String command = "/insert.prd";
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	@Qualifier("myProductDao") 
	private ProductDao productDao;
	
	@RequestMapping(value = command, method = RequestMethod.GET) // 목록보기에서 추가하기 클릭하면 온다.
	public String doAction( HttpSession session	) { // 
		
		
		
		return getPage; //ProductInsertForm
	}
	
	@RequestMapping(value = command, method = RequestMethod.POST)
	public ModelAndView doAction(@ModelAttribute("product") @Valid	Product product, 
					BindingResult result) {
		
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.setViewName(getPage);
			return mav;
		}
		
		System.out.println(product.getImage());
		
		System.out.println("servletContext : " + servletContext);
		System.out.println("1:"+servletContext.getRealPath("/resources"));
		// C:\Spring_ysy\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\15_MyBatis_Products\resources
		
		String uploadPath = servletContext.getRealPath("/resources/prd_image");
		
		productDao.InsertData(product);
		
		File file = new File(uploadPath + File.separator + product.getImage());
		MultipartFile multi = product.getUpload();
		
		try {
			multi.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		mav.setViewName(gotoPage);
		return mav;
		
	}
	
}
































