package com.mmt.MyMusicTrade.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.model.Playlist;
import com.mmt.MyMusicTrade.model.Pldetail;
import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;
import com.mmt.MyMusicTrade.service.Music_infoService;
import com.mmt.MyMusicTrade.service.PlaylistService;


@Controller
@RequestMapping("/playlists")
public class PlaylistController {
	private final String path = "playlists/";
	
	@Autowired
	PlaylistService service;
	
	@Autowired
	Music_infoService Service;
	
	@GetMapping("/pldetail/{pllistnum}")
	String pldetail(@PathVariable Long pllistnum, Model model) {
		Playlist item = service.item(pllistnum);
		
		model.addAttribute("item", item);
		
		return path + "pldetail";
		
	}
	
	@GetMapping("/plcart")
	String cart(Model model, @SessionAttribute(name="plcart", required=false) HashMap<Long, Integer> plcart) {
		if(plcart != null) {
			List<Music_info> list = Service.list(plcart);
			
			HashMap<Long, Music_info> map = new HashMap<Long, Music_info>();
			for(Music_info item : list)
				map.put(item.getPlnum(), item);
				
				model.addAttribute("music_infos", map);
				model.addAttribute("plcart", plcart);
		}
		else {
			model.addAttribute("plcart", new HashMap<Long, Integer>());
		}
		return "plcart";
	}

	@GetMapping("/playlist")
	String trade(@SessionAttribute("member") Users users , 
			@SessionAttribute("plcart") HashMap<Long, Integer> plcart) {
		
		service.playlist(users.getUserID(), plcart);
		
		plcart.clear();
		
		return "redirect:playlist";
	}
	
	@GetMapping("/add/{userID}")
	String add(@PathVariable String userID) {
		
		return path + "add";
	}
	
	@GetMapping("/list")
	String list(Pager pager, Model model) {
		List<Playlist> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list" ;
	}
	
	
	@PostMapping("/update_all")
	String updateAll(@RequestBody List<Pldetail> list, @SessionAttribute("plcart") HashMap<Long, Integer> plcart) {
		for(Pldetail item : list)
			plcart.put(item.getPlnum(), item.getAmount().intValue());
		
		return "OK";
	}
	
	@PostMapping("/del_check")
	String delCheck(@RequestBody Long[] list, @SessionAttribute("plcart") HashMap<Long, Integer> plcart) {
		for(Long plnum : list)
			plcart.remove(plnum);			
		
		return "OK";
	}
	
	@GetMapping("/delete/{plnum}")
	String deleteCart(@PathVariable Long plnum, @SessionAttribute("plcart") HashMap<Long, Integer> plcart) {
		if(plcart.remove(plnum) != null)
			return "OK";
		
		return "FAIL";
	}
	
	@GetMapping("/update/{plnum}/{amount}")
	String updateCart(@PathVariable Long plnum, @PathVariable Integer amount, @SessionAttribute("plcart") HashMap<Long, Integer> plcart) {
		if(plcart.put(plnum, amount) != null)
			return "OK";
		
		return "FAIL";
	}
	
	@GetMapping(value="/add/{plnum}", produces="plain/text;charset=utf-8")
	String addCart(@PathVariable Long plnum, @SessionAttribute(name="plcart", required=false) HashMap<Long, Integer> plcart, HttpSession session) {
		if(plcart == null) {
			plcart = new HashMap<Long, Integer>();
			
			session.setAttribute("plcart", plcart);
		}
		
		Integer amount = plcart.get(plnum);		
		if(amount == null)
			plcart.put(plnum, 1);
		else
			plcart.put(plnum, amount + 1);
		
		return "장바구니 담기: " + plnum + ", 수량: " + plcart.get(plnum);
	}
	
	
	@GetMapping("/plcart/{userID}")
	String plcart(Model model, @SessionAttribute(name="plcart", required=false) HashMap<Long, Integer> plcart) {
		if(plcart != null) {
			List<Music_info> list = Service.list(plcart);
			
			HashMap<Long, Music_info> map = new HashMap<Long, Music_info>();
			
			for(Music_info item : list)
				map.put(item.getPlnum(), item);
			
			model.addAttribute("music_infos", map);
			model.addAttribute("plcart", plcart);
		} else {
			model.addAttribute("plcart", new HashMap<Long, Integer>());
		}
		return path + "plcart";
	}
	
	@GetMapping("/plcartdetail/{userID}")
	String plcartdetail(Pager pager, Model model) {
		List<Music_info> list = Service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "plcartdetail"; //view name을 return해서 사용자가 보는 파일과 연결해줌.
	}
	
	
}
