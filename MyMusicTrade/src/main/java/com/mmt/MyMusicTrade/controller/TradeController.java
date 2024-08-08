package com.mmt.MyMusicTrade.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mmt.MyMusicTrade.model.Trade;
import com.mmt.MyMusicTrade.model.Users;
import com.mmt.MyMusicTrade.pager.Pager;
import com.mmt.MyMusicTrade.service.TradeService;

@Controller
@RequestMapping("/trade")
public class TradeController {
	final String path = "trade/";
	
	@Autowired
	TradeService service;
	
	@GetMapping("/detail/{ordersid}")
	String detail(@PathVariable Long ordersid, Model model) {
		Trade item = service.item(ordersid);
		
		model.addAttribute("item", item);
		
		return path + "detail";
	}
	
	@GetMapping("/trade")
	String trade(@SessionAttribute("member") Users users , 
			@SessionAttribute("cart") HashMap<Long, Integer> cart) {
		
		service.trade(users.getUserID(), cart);
		
		cart.clear();
		
		return "redirect:list";
	}
	
	@GetMapping("/list")
	String list(Pager pager, Model model) {
		List<Trade> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path+ "list" ;
	}

}
