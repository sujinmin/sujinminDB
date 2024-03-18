package com.example.demo_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/member/") //전역으로 URL부분에 매번 요청됨
public class MemberController {

    /**
     * 로그인 폼
     * @return
     */
    @RequestMapping("login_form.do")
    public String login_form() {
        
        return "member/login_form";
    }
    
    /**
     * 로그인정보 넘기기
     * @return
     */
    @RequestMapping("login.do")
    public String login() {
        
        return "redirect:../movie_list.do";
    }
    /**
     * 회원가입 폼
     * @return
     */
    @RequestMapping("login_insert_form.do")
    public String login_insert_form() {
        
        return "member/login_insert_form";
    }
    

}
