package com.mmt.MyMusicTrade.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mmt.MyMusicTrade.dao.UsersDao;
import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	UsersDao dao;

	@Override
	public List<Users> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Users item) {
		dao.add(item);

	}

	@Override
	public Users item(String userID) {
		
		return dao.item(userID);
	}

	@Override
	public void update(Users item) {
		dao.update(item);
	}

	@Override
	public void delete(String userID) {
		dao.delete(userID);
	}

	@Override
	public Boolean login(Users item) {
		Users result = dao.login(item);
		if(result != null) {
			BeanUtils.copyProperties(result, item);
			
			item.setUserPwd(null);
		
			return true;
		}
		return false;
	}

	@Override
	public Users items(String userID) {
		// TODO Auto-generated method stub
		return  dao.items(userID);
	}
}
