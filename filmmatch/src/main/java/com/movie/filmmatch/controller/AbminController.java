package com.movie.filmmatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin/")
public class AbminController {

    @RequestMapping("main.do")
    public String admin_main() {

        return "admin/admin_main";
    }
    
}
