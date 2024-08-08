package com.mmt.MyMusicTrade.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;

@Repository
public class UsersDaoImpl implements UsersDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectOne("users.total", pager);
	}

	@Override
	public List<Users> list(Pager pager) {
		// TODO Auto-generated method stub
		return sql.selectList("users.list", pager);
	}

	@Override
	public void add(Users item) {
		// TODO Auto-generated method stub
		sql.insert("users.add", item);

	}

	@Override
	public Users item(String userID) {
		// TODO Auto-generated method stub
		return sql.selectOne("users.item", userID);
	}

	@Override
	public void update(Users item) {
		// TODO Auto-generated method stub
		sql.update("users.update", item);

	}

	@Override
	public void delete(String userID) {
		// TODO Auto-generated method stub
		sql.delete("users.delete", userID);
	}

	@Override
	public Users login(Users item) {
		// TODO Auto-generated method stub
		return sql.selectOne("users.login", item);
	}

	@Override
	public Users items(String userID) {
		// TODO Auto-generated method stub
		return sql.selectOne("users.items", userID);
	}

}
