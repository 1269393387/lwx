package com.web.auction;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;


@SpringBootApplication
@MapperScan("com.web.auction.mapper")
public class App {
	public static void main(String[] args) {
		SpringApplication.run(App.class,args);
	}

}
