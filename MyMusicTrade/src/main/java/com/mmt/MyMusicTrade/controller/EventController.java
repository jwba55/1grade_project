package com.mmt.MyMusicTrade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mmt.MyMusicTrade.model.Event;
import com.mmt.MyMusicTrade.pager.Pager;
import com.mmt.MyMusicTrade.service.EventService;

@Controller
@RequestMapping("/event")
public class EventController {
	final String path = "event/";
	
	@Autowired
	EventService service;

	
	@GetMapping("/list")
	String list(Pager pager, Model model) {
		List<Event> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		
		return path+ "add";
	}
	
	@PostMapping("/add")
	String add(Event item) {
		service.add(item);
		
		return "redirect:list";
	}

}
