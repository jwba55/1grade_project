package com.mmt.MyMusicTrade.dao;

import java.util.List;

import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;

public interface UsersDao {

	int total(Pager pager);

	List<Users> list(Pager pager);

	void add(Users item);

	Users item(String userID);

	void update(Users item);

	void delete(String userID);

	Users login(Users item);

	Users items(String userID);

}
