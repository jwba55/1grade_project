package com.mmt.MyMusicTrade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;
import com.mmt.MyMusicTrade.service.UsersService;

@Controller
@RequestMapping("/users")
public class UsersController {
	final String path = "users/";
	
	@Autowired
	UsersService service;
	
	@GetMapping("/list")
	String list(Pager pager, Model model) {
		List<Users> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Users item){
		
		service.add(item);
		
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{userID:.+}")	
	String update(@PathVariable String userID, Model model){

		Users item = service.item(userID);
		
		model.addAttribute("item", item);
		
		return path + "update" ;
	}

	@PostMapping("/update/{userID:.+}")
	String update(@PathVariable String userID, Users item) {
		item.setUserID(userID);
		
		service.update(item);
		
		return "redirect:{userID}";
	}
	
	@GetMapping("/delete/{userID:.+}")
	String delete(@PathVariable String userID) {
		service.delete(userID);
		
		return "redirect:../";
	}
}