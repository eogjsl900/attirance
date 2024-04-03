package notice.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import faq.model.FAQ;
import utility.Paging;

@Component("myNoticeDao")
public class NoticeDao {
	
	private final String namespace = "notice.model.Notice";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int GetTotalCount( Map<String, String> map ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + ".GetTotalCount", map);
		return cnt;
	}
	
	public List<Notice> GetDataList( Paging pageInfo,  Map<String, String> map ) {
		List<Notice> lists = new ArrayList<Notice>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit() );
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList", map, rowBounds);
		return lists;
	}
	
	public void InsertData(Notice bean) {
		sqlSessionTemplate.insert(namespace + ".InsertData", bean);
	}
	
	public Notice GetData(int id) {
		Notice bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetData",	id);
		return bean;
	}
	
	public void UpdateData(Notice bean) {
		sqlSessionTemplate.update(namespace + ".UpdateData", bean);
	}
	
	public void DeleteData(int pmKey) {
		sqlSessionTemplate.delete(namespace + ".DeleteData", pmKey);
	}
	
	public void addCount(Notice bean) {
		sqlSessionTemplate.update(namespace + ".addCount",bean);
	}
	
}








