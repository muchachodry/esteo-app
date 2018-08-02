package com.api.apibase;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class EsteoApplication {

	public static void main(String[] args) {
		SpringApplication.run(EsteoApplication.class, args);
	}
}
