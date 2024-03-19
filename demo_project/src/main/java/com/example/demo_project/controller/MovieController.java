package com.example.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MovieController {

	

	@RequestMapping("movie_main.do")
	public String insert_form() {

		
		return "movie/movie_list";
	}

	

}
