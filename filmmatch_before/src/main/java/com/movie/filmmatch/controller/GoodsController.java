package com.movie.filmmatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.movie.filmmatch.service.GoodsService;
import com.movie.filmmatch.vo.GoodsVo;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

import java.util.*;

@Controller
@RequestMapping("/goods/")
public class GoodsController {
@Autowired
GoodsService goods_service;

@Autowired
	ServletContext application;


    @RequestMapping("list.do")
    public String goods_list(Model model) {
        Map<String,List<GoodsVo>> map=goods_service.select_list();
        model.addAttribute("map", map);


        return "goods/goods_list";
    }

    /**
     * 상품 자세히 보기
     * @return
     */
    @RequestMapping("goods_view.do")
    public String goods_view(int goods_idx,Model model){
        GoodsVo vo=goods_service.selectOne(goods_idx);
        
        model.addAttribute("vo", vo);
        return "goods/goods_views";
    }
    /**
     * 상품등록폼
     * @param param
     * @return
     */
    @RequestMapping("insert_form.do")
    public String insert_form() {
        return "goods/insert_form";
    }

    


    @RequestMapping("insert.do")
    public String insert(HttpServletRequest request, @RequestParam MultipartFile image_url,GoodsVo vo){
        String abs_path = application.getRealPath("/upload/");
		// System.out.println(abs_path);
		String p_filename = "no_file";

        goods_service.goods_insert(vo);
        return "redirect:list.do";
    }
    
}
