package member.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myMemberDao")
public class MemberDao {

	private final String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Integer InsertData(Member member) {
		
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".InsertData", member);
		return cnt;
	}
	
	public int GetTotalCount( Map<String, String> map ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + ".GetTotalCount", map);
		return cnt;
	}
	
	public List<Member> GetDataList( Paging pageInfo,  Map<String, String> map ) {
		List<Member> lists = new ArrayList<Member>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit() );
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList", map, rowBounds);
		return lists;
	}
	
	public Member GetData(String id) {
		Member bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetData",	id);
		return bean;
	}

	public void updatePoint(String id, int mpoint) {
		
		Member mem = new Member();
		mem.setId(id);
		mem.setMpoint(mpoint);
		sqlSessionTemplate.update(namespace + ".updatePoint",mem);
	}
}










