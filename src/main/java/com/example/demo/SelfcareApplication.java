package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackageClasses=controller.class)
public class SelfcareApplication {

	public static void main(String[] args) {
		//System.setProperty("server.port","8092");
		SpringApplication.run(SelfcareApplication.class, args);
	}

}
