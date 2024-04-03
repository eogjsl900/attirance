package notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import notice.model.Notice;
import notice.model.NoticeDao;
import utility.Paging;

@Controller
public class NoticeListController {

	private static final String getPage = "NoticeList";
	private static final String command = "/list.nt";

	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;

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

		int totalCount = noticeDao.GetTotalCount( map );
		System.out.print("전체 행수(totalCount) : " + totalCount + ", "); 

		String url = request.getContextPath() +  this.command ;

		Paging pageInfo 
		= new Paging( pageNumber, pageSize, totalCount, url, whatColumn, keyword, null);

		System.out.print( "offset : " + pageInfo.getOffset() + ", " ) ; 
		System.out.print( "limit : " + pageInfo.getLimit() + ", " ) ;  

		List<Notice> noticeLists = noticeDao.GetDataList( pageInfo, map );

		ModelAndView mav = new ModelAndView();
		System.out.println("조회된 건수: " + noticeLists.size());
		mav.addObject( "noticeLists", noticeLists );		
		mav.addObject( "pageInfo", pageInfo ); 
		mav.setViewName(getPage); // NoticeList
		return mav;

	}
}
















