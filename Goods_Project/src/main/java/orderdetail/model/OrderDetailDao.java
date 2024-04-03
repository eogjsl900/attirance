package orderdetail.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("myOrderDetailDao")
public class OrderDetailDao {
	
	private final String namespace = "orderdetail.model.OrderDetail"; // orderdetail.xml

	@Autowired	
	SqlSessionTemplate sqlSessionTemplate;	
	
	public Integer insertData(OrderDetail odBean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace+".InsertData",odBean);
		return cnt;
	}
	
	public OrderDetail GetData(int maxonum) {
		OrderDetail odBean = null;
		odBean = sqlSessionTemplate.selectOne(namespace + ".GetData", maxonum);
		return odBean;
	}
	
}
