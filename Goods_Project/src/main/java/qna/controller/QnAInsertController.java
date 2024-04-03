package qna.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import qna.model.QnA;
import qna.model.QnaDao;

@Controller
public class QnAInsertController {

	private static final String command = "/insert.qa";
	private static final String getPage = "/QnAList";
	private static final String gotoPage= "/QnAInsertForm";
	@Autowired
	QnaDao QnADao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction() {
		return gotoPage;  
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute("qna") @Valid QnA qna,
								BindingResult result) {
		
		ModelAndView mav=new ModelAndView();
		System.out.println("!11111111111111111111111");
		if(result.hasErrors()) {
			System.out.println("writer:"+qna.getWriter());  
			System.out.println("content:"+qna.getContent());
			System.out.println("passwd:"+qna.getPasswd());
			mav.setViewName(gotoPage); 
			return mav; 
		}
		
		Timestamp regdate = new Timestamp(System.currentTimeMillis());

		qna.setRegdate(regdate); 
		 
		String uploadPath = servletContext.getRealPath("/resources/QnA/QnA_image");
		
		QnADao.InsertQnA(qna); 
		File file1 = null,file2 = null,file3 = null;
		MultipartFile multi1 = null,multi2 = null,multi3 = null;
	
			file1 = new File(uploadPath + File.separator + qna.getImage1());
			multi1 = qna.getUpload1();
		
	
			file2 = new File(uploadPath + File.separator + qna.getImage2());
			multi2 = qna.getUpload2();
		
	
			file3 = new File(uploadPath + File.separator + qna.getImage3());
			multi3 = qna.getUpload3();
		
		try { 
			if(qna.getImage1()!=null) {
				
				multi1.transferTo(file1);
			}
			if(qna.getImage2()!=null) {
				multi2.transferTo(file2);
			}
			if(qna.getImage3()!=null) {
				multi3.transferTo(file3);
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		mav.setViewName("redirect:/list.qa");
		
		return mav;
	}
	
}
