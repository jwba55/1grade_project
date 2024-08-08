package com.mmt.MyMusicTrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/page_info")
public class Page_infoController {
	final String path = "page_info/";
	
	@GetMapping("/index")
	String index() {			
		return path + "index";
			
	}


}
