package com.example.demo_project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo_project.dao.MemberDao;
import com.example.demo_project.vo.MemberVo;

import jakarta.servlet.http.HttpSession;



@Controller
@RequestMapping("/member/") //전역으로 URL부분에 매번 요청됨
public class MemberController {

    
	@Autowired
	MemberDao member_dao;
	
	@Autowired
	HttpSession session;
    /**
     * 로그인 폼
     * @return
     */
    @RequestMapping("login_form.do")
    public String login_form() {
        
        return "member/login_form";
    }
    
    @RequestMapping("sign_up.do")
    public String sign_up() {
        
        return "member/sign_up";
    }

    /**
     * 로그인정보 넘기기
     * @return
     */
    @RequestMapping("login.do")
    public String login(String mem_id,String mem_pwd,
                        RedirectAttributes attr) {
        //유저정보  읽어오기
        MemberVo user = member_dao.selectOneFromId(mem_id);
        //아이디가 틀린경우
        if(user==null) {
            //rediect -> paramerter 사용
            attr.addAttribute("reason", "fail_id");
			return "redirect:login_form.do?reason=fail_id";
        }
        //비밀번호가 틀린경우
		if(user.getMem_pwd().equals(mem_pwd)==false) {
			//response.sendRedirect("login_form.do?reason=fail_pwd&mem_id=" + mem_id);
			attr.addAttribute("reason", "fail_pwd");
			attr.addAttribute("mem_id","mem_id");
			return "redirect:login_form.do?reason=fail_pwd&mem_id=";
		}
        //로그인 정보를 세션에 저장
		session.setAttribute("user", user);
        
        return "redirect:../movie_list.do";
    }
    /**
     * 로그아웃
     * @return
     */
	@RequestMapping("logout.do")
	public String logout() {
		
		//세션에서 로그인 정보 삭제
		session.removeAttribute("user");
		
		return "redirect:../movie_list.do";
	}
    /**
     * 회원가입 폼
     * @return
     */
    @RequestMapping("login_insert_form.do")
    public String login_insert_form(MemberVo vo) {
        // member_dao.insert(vo);
        return "member/login_insert_form";
    }

    @RequestMapping("login_insert.do")
    public String login_insert() {
        // member_dao.insert(vo);
        return "redirect:../member/login_form.do";

    }

}

