package review.controller;

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

import review.model.Review;
import review.model.ReviewDao;

@Controller
public class ReviewInsertController {
	
	private static final String getPage = "itemDetailView";
	private static final String gotoPage = "redirect:/list.rev";
	private static final String command = "/insert.rev";
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	@Qualifier("myReviewDao")
	private ReviewDao reviewDao;
	

	@RequestMapping(value = command, method = RequestMethod.GET) // ��Ϻ��⿡�� �߰��ϱ� Ŭ���ϸ� �´�.
	public String doAction( HttpSession session	) { // 
		System.out.println(getClass()+" : GET");
		
		System.out.println("loginfo : " + session.getAttribute("loginfo")); 
		
	/*	if(session.getAttribute("loginfo") == null) { //���� �Ĺ��ȴ�. ����α���Ʈ�ѷ�����..
			
			session.setAttribute("destination", "redirect:/insert.prd");
			
			return "redirect:/LoginForm.me";
		}*/
		
		return getPage; //ProductInsertForm
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST) //insertForm���� �߰��ϱ� ��ư ������ ��
	public ModelAndView doAction(@ModelAttribute("review") @Valid Review review, BindingResult res,HttpSession session) {
		
		System.out.println(session.getAttribute("userId"));
		System.out.println();
		ModelAndView mav = new ModelAndView();
		if(res.hasErrors()) {
			System.out.println("��ȿ�� �˻� ����");
			mav.setViewName(getPage);
			return mav;
		}
		review.setMid("nmh1212");
		review.setReg_date("0");
		System.out.println(review.toString());
		
		reviewDao.insertReview(review);
		//File file = new File(uploadPath + File.separator + product.getImage());
		//MultipartFile multi = product.getUpload();
		
		/*try {
			multi.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		mav.setViewName(gotoPage);
		return mav;
		//return getPage;
		
	}
	

	
}
