package com.movie.filmmatch;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
@MapperScan(basePackages = "com.movie.filmmatch", annotationClass = Mapper.class)  
public class FilmmatchApplication {

	public static void main(String[] args) {
		SpringApplication.run(FilmmatchApplication.class, args);
	}

}
