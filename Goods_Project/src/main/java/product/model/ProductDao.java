package product.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myProductDao")
public class ProductDao {
	
	private final String namespace = "product.model.Product";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int GetTotalCount( Map<String, String> map ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + ".GetTotalCount", map);
		return cnt;
	}
	
	public List<Product> GetDataList( Paging pageInfo,  Map<String, String> map ) {
		List<Product> lists = new ArrayList<Product>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit() );
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList", map, rowBounds);
		return lists;
	}
	
	public void InsertData(Product bean) {
		sqlSessionTemplate.insert(namespace + ".InsertData", bean);
	}
	
	public Product GetData(int id) {
		Product bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetData",	id);
		return bean;
	}
	
	public void UpdateData(Product bean) {
		sqlSessionTemplate.update(namespace + ".UpdateData", bean);
	}
	
	public void DeleteData(int pmKey) {
		sqlSessionTemplate.delete(namespace + ".DeleteData", pmKey);
	}

	public void updateStock(Integer pnum, Integer qty) {
		// TODO Auto-generated method stub
		Product p=new Product();
		p.setNum(pnum);
		p.setOrderqty(qty);
		sqlSessionTemplate.update(namespace+".UpdateStock",p);
	}
}








