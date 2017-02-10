package global.sesoc.test5.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.test5.dao.GuestBookDAO;
import global.sesoc.test5.vo.GuestBook;

@Repository
public class GuestBookRepository {

	@Autowired
	SqlSession sqlSession;

	public List<GuestBook> findList() {
		GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
		return dao.findList();
	}

}
