package review.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myReviewDao")
public class ReviewDao {
	
	private final String namespace = "review.model.Review";
	
	@Autowired	
	SqlSessionTemplate sqlSessionTemplate;	
	
	
	public ReviewDao() {
		System.out.println("ReviewDao()");
		
	}
	
	public int GetTotalCount(Map<String, String> map) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace+ ".GetTotalCount", map);
									
		System.out.println("cnt : "+cnt);
		return cnt;
		
	}
	
	public List<Review> getReviewList(Paging pageInfo,  Map<String, String> map ) {
		List<Review> lists = new ArrayList<Review>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit() );
		lists = sqlSessionTemplate.selectList(namespace + ".GetReviewList", map, rowBounds);
		return lists;
		
	}
	
	public void insertReview(Review review) {
		
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".InsertReview",review);
		System.out.println("insertProduct() cnt : "+cnt);
		
	}
}
