package com.example.demo_project.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("member")
public class MemberVo {
    int mem_idx;
    String mem_name;
    String mem_id;
    String mem_pwd;
    String mem_email;
    String mem_zipcode;
    String mem_addr;
    String mem_ip;
    String mem_regdate;
    String mem_modifydate;
    String mem_grade;

    String mem_mask_pwd;
    
}
