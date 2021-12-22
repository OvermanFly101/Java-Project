package com.flynn.javaProject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	// Chat page
		@GetMapping(value="/chat", headers = "Connection!=Upgrade")
		public String chat() {
			return "chat.jsp";
		}
}
