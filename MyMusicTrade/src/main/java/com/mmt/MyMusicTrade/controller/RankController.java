package com.mmt.MyMusicTrade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mmt.MyMusicTrade.model.Ranking;
import com.mmt.MyMusicTrade.pager.Pager;
import com.mmt.MyMusicTrade.service.RanksService;

@Controller
@RequestMapping("/ranking")
public class RankController {
	final String path = "ranking/";
	
	@Autowired
	RanksService service;
	
	@GetMapping("/list")
	String list() {
		return path + "list";
	}
	
	@GetMapping("/totallist")
	String totalrank(Pager pager, Model model) {
		List<Ranking> totallist = service.totallist(pager);
		model.addAttribute("totallist", totallist);
		
		return path + "totallist";
	}
	
	@PostMapping("/totallist")
	String resettotal(Ranking item) {
		service.totalrank(item);
		
		return path + "totallist";
	}
	
	@GetMapping("/monthlist")
	String monthrank(Pager pager, Model model) {
		List<Ranking> monthlist = service.monthlist(pager);
		
		model.addAttribute("monthlist", monthlist);

		return path + "monthlist";
	}
	
	@PostMapping("/monthlist")
	String resetMonthrank() {
		service.resetMonthrank();
		
		return path + "monthlist";
	}
	
	@GetMapping("/weeklist")
	String weekrank(Pager pager, Model model) {
		List<Ranking> weeklist = service.weeklist(pager);
		
		model.addAttribute("weeklist", weeklist);

		return path + "weeklist";
	}
	
	@PostMapping("/weeklist")
	String resetWeekrank() {
		service.resetWeekrank();
		
		return path + "weeklist";
	}
	
	@GetMapping("/dailylist")
	String daily(Pager pager, Model model) {
		List<Ranking> dailylist = service.dailylist(pager);
		
		model.addAttribute("dailylist", dailylist);
		
		return path + "dailylist";
	}
	
	@PostMapping("/dailylist")
	String resetDailyrank() {
		service.resetDailyrank();
		
		return path + "dailylist";
	}
	
}
