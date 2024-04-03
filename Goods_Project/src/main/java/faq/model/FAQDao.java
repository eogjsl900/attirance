package faq.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myFAQDao")
public class FAQDao {
	
	private final String namespace = "faq.model.FAQ";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int GetTotalCount( Map<String, String> map ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + ".GetTotalCount", map);
		return cnt;
	}
	
	public List<FAQ> GetDataList( Paging pageInfo,  Map<String, String> map ) {
		List<FAQ> lists = new ArrayList<FAQ>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit() );
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList", map, rowBounds);
		return lists;
	}
	
	public void InsertData(FAQ bean) {
		sqlSessionTemplate.insert(namespace + ".InsertData", bean);
	}
	
	public FAQ GetData(int num) {
		FAQ bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetData",	num);
		return bean;
	}
	
	public void UpdateData(FAQ bean) {
		sqlSessionTemplate.update(namespace + ".UpdateData", bean);
	}
	public void addCount(FAQ bean) {
		sqlSessionTemplate.update(namespace + ".addCount",bean);
	}
	
	public void DeleteData(int pmKey) {
		sqlSessionTemplate.delete(namespace + ".DeleteData", pmKey);
	}
	
	

	
}








