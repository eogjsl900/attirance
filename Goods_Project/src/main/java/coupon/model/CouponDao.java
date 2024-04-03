package coupon.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import member.model.Member;

@Component("myCouponDao") 
public class CouponDao {
	
private final String namespace = "coupon.model.Coupon";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int add(Coupon coupon) {
		
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".InsertData", coupon);
		return cnt;
	}
	
	public int chkId(Coupon coupon) {
		
		
		if(coupon.getUid()=="" || coupon.getUid()==null) {
			return -1;
		}
		String uid=sqlSessionTemplate.selectOne(namespace+".chkId",coupon);
		System.out.println("uid:"+uid);
		System.out.println("c_uid:"+coupon.getUid());  
		if(uid==null) {
			return 1;
		}
		else if(uid.equals(coupon.getUid())){ 
			return 0;
		}
		
		return 0;
	}

	public List<Coupon> cList(String uid){
		
		List<Coupon> coupon;
		coupon = sqlSessionTemplate.selectList(namespace+".cList",uid);
		
		return coupon;
	}
	
	
	public int apply(int num) {
		
		int result = sqlSessionTemplate.delete(namespace+".apply", num);
		
		return result;
	}
	
	public Coupon getData(int num) {
		Coupon coupon=sqlSessionTemplate.selectOne(namespace+".getData",num);
		
		return coupon;
	}



}
