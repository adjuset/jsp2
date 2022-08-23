package board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import board.vo.Freeboard;
import mybatis.SqlSessionBean;
import vo.BookMember;

public class FreeboardDao {
	private static FreeboardDao dao = new FreeboardDao();
	private FreeboardDao() {}
	public static FreeboardDao getInstance() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int getCount() {
		SqlSession mapper = factory.openSession();
		int count = mapper.selectOne("getCount");
		mapper.close();
		return count;
	}
	
	//String -> key값  , Integer -> value값
	public List<Freeboard> getPageList(Map<String,Integer> map){
		SqlSession mapper = factory.openSession();
		List<Freeboard> list = mapper.selectList("getPageList",map);
		mapper.close();
		return list;
	}
	
	public int insert(Freeboard vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("insert",vo);	
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public Freeboard getDetail(int idx) {
		SqlSession mapper = factory.openSession();
		Freeboard vo = mapper.selectOne("freeboard.detail",idx);
		//다른 mapper파일과 이름이 중복될 수 있으므로 mapper namespace.id 로 적어줌	
		// 결과 행이 하나만 나오므로 selectOne 결과 행이 여러개면 SelectList		
		mapper.close();
		return vo;
	}		
	
	public void readcountUp(int idx) {
		SqlSession mapper = factory.openSession();
		mapper.update("readcountUp",idx);
		mapper.commit();
		mapper.close();
	}
	
	public int delete(Map<String,Object> map) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("freeboard.delete", map);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public void update(Freeboard vo) {
		SqlSession mapper = factory.openSession();
		mapper.update("freeboard.update",vo);
		mapper.commit();
		mapper.close();
	}
	
	
	
	
	
	
	
	
	
}
