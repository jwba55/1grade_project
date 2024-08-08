package com.mmt.MyMusicTrade.service;

import java.util.List;

import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;

public interface UsersService {

	List<Users> list(Pager pager);

	void add(Users item);

	Users item(String userID);
	
	void update (Users item);

	void delete(String userID);

	Boolean login(Users item);

	Users items(String userID);
	
}
