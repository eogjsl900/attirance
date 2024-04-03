package product.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mall.cart.ShoppingInfo;

@Component("myCompositeDao")
public class compositeDao {

	private final String namespace ="product.model.Composite"; //composite.xml
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<ShoppingInfo> showDetail(int maxonum) {
		
		List<ShoppingInfo> lists = sqlSessionTemplate.selectList(namespace+".ShowDetail", maxonum);
		System.out.println("lists.size() : "+lists.size());
		return lists;
	}
	
	public List<ShoppingInfo> OrderResult(int maxonum) {
		
		List<ShoppingInfo> lists = sqlSessionTemplate.selectList(namespace+".OrderResult", maxonum);
		System.out.println("lists.size() : "+lists.size());
		return lists;
	}
	
	
}
