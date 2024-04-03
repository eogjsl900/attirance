package member.controller;

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

import member.model.Member;
import member.model.MemberDao;
import utility.Paging;

@Controller
public class MemberListController {
	private static final String command = "/list.me";
	private static final String getPage= "MemberList";

	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;

	@RequestMapping(value = command )
	public ModelAndView doAction(
			@RequestParam(value = "whatColumn", required = false ) String whatColumn,
			@RequestParam(value = "keyword", required = false ) String keyword,
			@RequestParam(value = "pageNumber", required = false ) String pageNumber,
			@RequestParam(value = "pageSize", required = false ) String pageSize,
			HttpServletRequest request
			) {

		Map<String, String> map = new HashMap<String, String>() ;	

		map.put("whatColumn", whatColumn ) ;
		map.put("keyword", "%" + keyword + "%" ) ;

		int totalCount = memberDao.GetTotalCount( map );
		System.out.print("전체 행수(totalCount) : " + totalCount + ", ");
		String url = request.getContextPath() + "/" + this.command ;

		ModelAndView mav = new ModelAndView();

		Paging pageInfo 
		= new Paging( pageNumber, pageSize, totalCount, url, whatColumn, keyword, null);

		System.out.print( "offset : " + pageInfo.getOffset() + ", " ) ; 
		System.out.print( "limit : " + pageInfo.getLimit() + ", " ) ;  

		List<Member> memberLists =memberDao.GetDataList( pageInfo, map );

		System.out.println("조회된 건수: " + memberLists.size());
		mav.addObject( "memberLists", memberLists );		
		mav.addObject( "pageInfo", pageInfo );

		mav.setViewName(getPage); // "MemberList"
		return mav;
	}


}











