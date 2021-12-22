package com.flynn.javaProject;

import org.springframework.boot.SpringApplication;
import org.springframework.context.annotation.ComponentScan;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@ComponentScan
public class JavaProject1Application {

	public static void main(String[] args) {
		SpringApplication.run(JavaProject1Application.class, args);
	}

}
