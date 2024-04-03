package qna.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import notice.model.Notice;
import utility.Paging;

@Component("myQnADao")
public class QnaDao {

	private String namespace="qnA.QnA";
	
	@Autowired	
	SqlSessionTemplate sqlSessionTemplate;
	
	public int GetTotalCount(Map<String,String> map) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		System.out.println("cnt:"+cnt);
		return cnt;
	}
	
	public List<QnA> GetQnAList(Paging pageInfo,Map<String,String> map){
		List<QnA> lists=new ArrayList<QnA>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		//2페이지 출력: 2,2
		//5페이지 출력: 8,2
		
		lists = sqlSessionTemplate.selectList(namespace+".GetQnAList",map,rowBounds);
		
		System.out.println("lists.size():"+lists.size());

		return lists;
	}
	public int InsertQnA(QnA qna) {
		
		int cnt =sqlSessionTemplate.insert(namespace+".InsertQnA",qna);
		return cnt;
	}
	
	public int DeleteQnA(int num) {
		
		int cnt =sqlSessionTemplate.delete(namespace+".deleteQnA",num);
		return cnt;
	}

	
	public QnA getQnA(int num) {
		
		QnA bean =sqlSessionTemplate.selectOne(namespace+".getQnA",num);
		return bean;
	}
	
	public boolean chkPw(int num,String passwd) {
		boolean flag=false;
		String pw=sqlSessionTemplate.selectOne(namespace+".chkPw",num);
		
		if(pw.equals(passwd)) {
			flag=true;
		}
		return flag;
	}
	
	public int updateQnA(QnA bean) {
		
		int cnt =sqlSessionTemplate.update(namespace+".updateQnA",bean);
		return cnt;
	}
	
	
	public int getArticleCount() {
		int cnt =sqlSessionTemplate.selectOne(namespace+".ArticleCount");
		
		return cnt;
	}
	
	
	public int UpdateArticle(QnA bean) {
		int cnt =sqlSessionTemplate.update(namespace+".UpdateArticle",bean);
		return cnt;
	}
	public int replyArticle(QnA bean) {
		
		int cnt =sqlSessionTemplate.insert(namespace+".replyArticle",bean);
		return cnt;
	}
	

}
