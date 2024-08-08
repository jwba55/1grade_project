package com.mmt.MyMusicTrade.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.service.Music_infoService;
import com.mmt.MyMusicTrade.service.UsersService;

@Controller
public class RootController {
	
	@Autowired
	UsersService usersService;
	
	@Autowired
	Music_infoService music_infoService;
	
	@GetMapping("/cart")
	String cart(Model model, @SessionAttribute(name="cart", required=false) HashMap<Long, Integer> cart) {
		if(cart != null) {
			List<Music_info> list = music_infoService.list(cart);
			
			HashMap<Long, Music_info> map = new HashMap<Long, Music_info>();
			for(Music_info item : list)
				map.put(item.getPlnum(), item);
				
				model.addAttribute("music_infos", map);
				model.addAttribute("cart", cart);
		}
		else {
			model.addAttribute("cart", new HashMap<Long, Integer>());
		}
		return "cart";
	}
	
	@GetMapping("/")
	String index() {
		return "index";
	}
	
	@GetMapping("/test")
	String test() {
		return "test";
	}
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(Users item, HttpSession session) {
		Boolean result = usersService.login(item);
		
		if (result) {
            session.setAttribute("member", item);
           
            return "redirect: /";
        } else {
        	System.out.println("로그인에 실패했습니다. 아이디와 비밀번호를 확인하세요.");
        		
            return "login";
        }
	}
	
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	String signup(Users item) {
		usersService.add(item);
		
		return "redirect:/";
	}
	
}
