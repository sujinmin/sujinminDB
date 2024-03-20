package com.movie.filmmatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController{

	
	
	public HomeController() {
		System.out.println("--HomeController()--");
	}
	
	@RequestMapping("/home.do")
	public String home(){
		
		
		return "home";
		
	}
	
	@RequestMapping("/login.do")
	public String login(){
		
		
		return "NewFile";
		
	}
	
	
	@RequestMapping("/index.do")
	public String idnex(){
		
		
		return "index";
		
	}
}
