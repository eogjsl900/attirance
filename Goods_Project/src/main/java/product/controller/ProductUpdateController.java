package product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import product.model.Product;
import product.model.ProductDao;

@Controller
public class ProductUpdateController {

	private static final String getPage = "ProductUpdateForm";
	private static final String gotoPage =  "redirect:/list.prd";
	private static final String command = "/update.prd";


	@Autowired
	ServletContext servletContext;
	
	@Autowired 
	@Qualifier("myProductDao")  
	private ProductDao productDao;


	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction( HttpSession session,
								@RequestParam(value="pmkey",required=true) int pmkey ,
								Model model){

		/*if( session.getAttribute("loginfo") == null ){ 
			session.setAttribute("destination", "redirect:/update.prd?pmkey="+pmkey );
			return "redirect:/LoginForm.me";	// MemberLoginController 
		}*/
		

			Product product =  productDao.GetData( pmkey );
			model.addAttribute("product" , product);
			return getPage; // "ProductUpdateForm";
		
	}


	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doAction(@ModelAttribute("product") @Valid Product product, 
			BindingResult result){

		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.setViewName(getPage);
			return mav;
		}
		
		String uploadPath = servletContext.getRealPath("/resources");
		
		productDao.UpdateData(product);
		
		File newfile = new File(uploadPath + File.separator + product.getImage());
		File oldfile = new File(uploadPath + File.separator + product.getUpload2());
		oldfile.delete();
		
		MultipartFile multi = product.getUpload();
		
		try {
			multi.transferTo(newfile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mav.setViewName(gotoPage);
		return mav;
	}

}


















