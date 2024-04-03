package concert.model;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myConcertDao")
public class ConcertDao {
private final String namespace = "concert.model.Concert";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Concert GetConcert(String day) {
		Concert con=null;
		con = sqlSessionTemplate.selectOne(namespace + ".GetConcert", day);
		return con;
	}

}
