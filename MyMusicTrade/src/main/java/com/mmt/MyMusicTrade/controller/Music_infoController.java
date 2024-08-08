package com.mmt.MyMusicTrade.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mmt.MyMusicTrade.model.Music_info;
import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;
import com.mmt.MyMusicTrade.service.Music_infoService;
import com.mmt.MyMusicTrade.service.UsersService;

	//곡정보 수정 및 입력

	@Controller
	@RequestMapping("/music_info")
	public class Music_infoController {
		final String path = "music_info/";
		
		@Autowired
		UsersService Service;
		
		@Autowired
		Music_infoService service;
		
		@GetMapping("/list")
		String list(Pager pager, Model model) {
			List<Music_info> list = service.list(pager);
			
			model.addAttribute("list", list);
			
			return path + "list"; //view name을 return해서 사용자가 보는 파일과 연결해줌.
		}
		
		@GetMapping("/{role}/add/{userID}")
		String add(@PathVariable String userID, @PathVariable String role, Model model, HttpSession session) {

			Users item = Service.item(userID);
			
			model.addAttribute("item",item);

			return path + role + "/add";
		}

		@GetMapping("/detail/{plnum}")
		String detail(@PathVariable Long plnum, Model model) {
			Music_info item = service.item(plnum);
			
			model.addAttribute("item",item);
			
			return path + "detail";
		}

		@GetMapping("/update/{plnum}")
		String update(@PathVariable Long plnum, Model model){
			Music_info item = service.item(plnum);
			
			model.addAttribute("item",item);
			
			return path + "update";
		}
		
		@PostMapping("/update/{plnum}")
		String update(@PathVariable Long plnum, Music_info item) {
			item.setPlnum(plnum);
			
			service.update(item);
			
			return "redirect:../list";
		}
		
		@GetMapping("/delete/{plnum}")
		String delete (@PathVariable Long plnum) {
			service.delete(plnum);
			
			return "redirect:../list";
		}
		
		@GetMapping("/pldetail/{plnum}")
		String pldetail(@PathVariable Long plnum, Model model) {
			Music_info item = service.item(plnum);
			
			model.addAttribute("item", item);
			
			return path + "pldetail";
		}
		
		}
