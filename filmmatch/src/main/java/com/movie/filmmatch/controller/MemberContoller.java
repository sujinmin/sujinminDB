package com.movie.filmmatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.filmmatch.dao.MemberDao;
import com.movie.filmmatch.vo.MemberVo;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/member/") //url앞부분에 매번 요청됨
public class MemberContoller {

	@Autowired
	MemberDao member_dao;
	
	@Autowired
	HttpSession session;
	
	//로그인 폼 띄우기
	@RequestMapping("login_form.do")
	public String login_form() {
		return "member/login";
	}
	
	//login
	@RequestMapping("login.do")
	public String login(String mem_id,String mem_pwd,
						RedirectAttributes attr) {
		
		//2.mem_id에 해당되는 유저정보를 읽어오기
		MemberVo  user = member_dao.selectOneFromId(mem_id);
		
		//아이디가 틀린경우
		if (user==null) {
			// response.sendRedirect("login_form.do?reason=fail_id");
			//Spring boot에서는 명확하게 구분된다.
			//Model  1. forward -> request binding
			//		 2. rediect -> paramerter 사용
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
		
		//로그인 정보를 세션에 정장
		session.setAttribute("user", user);
		
		return "redirect:../photo/list.do";
	}
	
	//로그아웃
	@RequestMapping("logout.do")
	public String logout() {
		
		//세션에서 로그인 정보 삭제
		session.removeAttribute("user");
		
		return "redirect:../photo/list.do";
	}
	
	//회원가입 폼띄우기
	@RequestMapping("insert_form.do")
	public String insert_form(MemberVo vo) {
		
		//int res = member_dao.insert(vo);
		member_dao.insert(vo);
		
		return "member/member_insert_form";
	}
	
	
	
}
