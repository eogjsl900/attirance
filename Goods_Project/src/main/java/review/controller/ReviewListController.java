package review.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import review.model.Review;
import review.model.ReviewDao;
import utility.Paging;

@Controller
public class ReviewListController {
	
	//private static final String gotoPage = "redirect:/list.prd";
	private static final String getPage = "review";
	private static final String command = "/list.rev";
	
	
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	@Qualifier("myReviewDao")
	private ReviewDao reviewDao;

	@RequestMapping(value=command)
	public ModelAndView doAction(@RequestParam(value = "whatColumn", required = false ) String whatColumn,
			@RequestParam(value = "keyword", required = false ) String keyword,
			@RequestParam(value = "pageNumber", required = false ) String pageNumber,
			@RequestParam(value = "pageSize", required = false ) String pageSize,
			HttpServletRequest request) {

		System.out.print("검색할 컬럼(whatColumn) : " + whatColumn + ", ");
		System.out.print("검색할 단어(keyword) : " + keyword + ", ");
		System.out.print("pageNumber : " + pageNumber + ", ");
		System.out.print("pageSize : " + pageSize + ", ");
 
		Map<String, String> map = new HashMap<String, String>() ;	

		map.put("whatColumn", whatColumn ) ;
		map.put("keyword", "%" + keyword + "%" ) ;

		int totalCount = reviewDao.GetTotalCount( map );
		System.out.print("전체 행수(totalCount) : " + totalCount + ", "); 

		String url = request.getContextPath() +  this.command ;

		Paging pageInfo 
		= new Paging( pageNumber, pageSize, totalCount, url, whatColumn, keyword, null);

		System.out.print( "offset : " + pageInfo.getOffset() + ", " ) ; 
		System.out.print( "limit : " + pageInfo.getLimit() + ", " ) ;  

		List<Review> reviewLists = reviewDao.getReviewList( pageInfo, map );

		ModelAndView mav = new ModelAndView();
		System.out.println("조회된 건수: " + reviewLists.size());
		mav.addObject( "reviewLists", reviewLists );		
		mav.addObject( "pageInfo", pageInfo );
		mav.setViewName(getPage); // ProductList
		return mav;
	
	}
	
	
	
		
}
	
	
	


