package com.mmt.MyMusicTrade.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mmt.MyMusicTrade.model.Users;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		Users member = (Users) session.getAttribute("member");
		
		if(member != null) {
			//로그인한 관리자
			if(member.getRole()==Users.ADMIN) {
				return true;
			}
			response.sendRedirect("/");
			return false;
		}
		//로그인 하지 않은 사람
		response.sendRedirect("/login");
		return false;
	}

}
