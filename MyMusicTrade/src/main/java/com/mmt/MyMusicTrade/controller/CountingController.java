package com.mmt.MyMusicTrade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mmt.MyMusicTrade.model.Counting;
import com.mmt.MyMusicTrade.service.CountingService;

@Controller
public class CountingController {
	
	@Autowired
	CountingService service;
	
	@GetMapping("/{plnum}/counting")
	String update(@PathVariable Long countcode, Model model){
		Counting item = service.item(countcode);
		
		model.addAttribute("item",item);
		
		return "update";
	}
	
	@RequestMapping(value = "/{plnum}/counting", method = RequestMethod.POST)
	String update(Counting item, @PathVariable Long countcode) {
		
		service.update(item);
		
		item.setCountcode(countcode);
		item.setTotalcount(item.getTotalcount() + 1);

		return "{ \\\"result\\\":\\\"OK\\\" }";
	}

}
