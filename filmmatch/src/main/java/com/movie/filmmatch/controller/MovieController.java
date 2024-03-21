package com.movie.filmmatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.ServletContext;


@Controller

public class MovieController {

	ServletContext application;

	@RequestMapping("/movie_main.do")
	public String go() {

		return "movie/index";

	}

	@RequestMapping("/service.do")
	public String go1() {

		return "movie/service";

	}
	
	@RequestMapping("/mypage.do")
	public String go2() {

		return "movie/mypage";

	}

	@RequestMapping("/manager.do")
	public String go3() {

		return "movie/manager";

	}

	@RequestMapping("/log.do")
	public String go4() {

		return "movie/log";

	}

}
