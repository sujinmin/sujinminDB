package com.example.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member/") //전역으로 URL부분에 매번 요청됨
public class MemberController {

    @RequestMapping("login.do")
    public String login() {
        
        return "member/login";
    }
    
}
