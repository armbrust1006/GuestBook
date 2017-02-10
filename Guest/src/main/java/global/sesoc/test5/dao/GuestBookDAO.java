package global.sesoc.test5.dao;

import java.util.List;

import global.sesoc.test5.vo.GuestBook;

public interface GuestBookDAO {
	public List<GuestBook> findList();

	public GuestBook findOne(int num);

	public int insert(GuestBook guest);

	public int update(GuestBook guest);

	public int delete(int num);
}
