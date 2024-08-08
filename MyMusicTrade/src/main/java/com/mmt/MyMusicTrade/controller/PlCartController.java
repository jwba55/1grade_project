package com.mmt.MyMusicTrade.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mmt.MyMusicTrade.model.Detail;

@RestController
@RequestMapping("/plcart")
public class PlCartController {
	
	@PostMapping("/update_all")
	String updateAll(@RequestBody List<Detail> list, @SessionAttribute("plcart") HashMap<Long, Integer> plcart) {
		for(Detail item : list)
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

}