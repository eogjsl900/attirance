package order.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.jdbc.SqlBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("myOrderDao")
public class OrderDao {

	private final String namespace = "order.model.Order"; // order.xml

	@Autowired	
	SqlSessionTemplate sqlSessionTemplate;	
	
	public void insertData(Order order) {
		
		sqlSessionTemplate.insert(namespace+".InsertData", order);
		
	}

	public int getMaxOrderNum() {
		
		int maxoid =sqlSessionTemplate.selectOne(namespace+".GetMaxOrderNum");
		return maxoid;
	}
	
	public Order GetData(int maxonum) {
		Order order = null;
		order = sqlSessionTemplate.selectOne(namespace + ".GetData", maxonum);
		return order;
	}
	
	public List<Order> OrderResult(int maxonum) {
		
		List<Order> lists = new ArrayList<Order>();
		lists = sqlSessionTemplate.selectList( namespace + ".OrderResult", maxonum); 
		return lists;
		
	}
	
	public List<Order> OrderMall(String id) {
	
		List<Order> lists = new ArrayList<Order>();
		lists = sqlSessionTemplate.selectList( namespace + ".OrderMall", id); 
		return lists;
		
	}
	
}
