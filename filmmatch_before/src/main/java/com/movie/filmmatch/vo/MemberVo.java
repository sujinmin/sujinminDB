package com.movie.filmmatch.vo;

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
	
	
	
	
	public String getMem_mask_pwd() {
		
		//비밀번호 반만 노출 + 나머지 *** 처리
		/* // 방법1)
		  int half = len / 2;
		  
		  StringBuffer sb = new StringBuffer();
		  for (int i = 0; i <len; i++) {
		   if (i<half) sb.append(mem_pwd.charAt(i)); 
		   	else sb.append("*") ; 
		   }
		  	return sb.append("*");
		  
		 */	
		
		// 방법2)비밀번호 전체길이의 반*
		int len = mem_pwd.length();
		int mask = Math.round(len / 2);

		return mem_pwd.substring(0, mask) + "*".repeat(len - mask);
		
		
		
	}



	public MemberVo() {
		
	}
	

	
	// insert
	public MemberVo(String mem_name, String mem_id, String mem_pwd, String mem_email, String mem_zipcode,
			String mem_addr, String mem_ip) {
		super();
		this.mem_name = mem_name;
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_email = mem_email;
		this.mem_zipcode = mem_zipcode;
		this.mem_addr = mem_addr;
		this.mem_ip = mem_ip;
		
	}
	
	//update_new_grade
	public MemberVo(int mem_idx, String mem_name, String mem_id, String mem_pwd, String mem_email, String mem_zipcode,
			String mem_addr, String mem_ip, String mem_modifydate, String mem_grade) {
		super();
		this.mem_idx = mem_idx;
		this.mem_name = mem_name;
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_email = mem_email;
		this.mem_zipcode = mem_zipcode;
		this.mem_addr = mem_addr;
		this.mem_ip = mem_ip;
		this.mem_modifydate = mem_modifydate;
		this.mem_grade = mem_grade;
	}

	
}
