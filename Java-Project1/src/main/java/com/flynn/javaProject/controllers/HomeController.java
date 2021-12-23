package com.flynn.javaProject.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.flynn.javaProject.models.Game;
import com.flynn.javaProject.services.MainService;


@Controller
public class HomeController {
		
		private MainService mainServ;
		
		public HomeController(MainService mainServ) {
			this.mainServ = mainServ;
		}
		
	// Chat page
		@GetMapping(value="/chat", headers = "Connection!=Upgrade")
		public String chat() {
			return "chat.jsp";
		}
		
		@GetMapping("/games")
		public String viewGames(Model model) {
			List<Game> games = mainServ.allGames();
			model.addAttribute("games", games);
			
			return "games.jsp";
		}
		
		@GetMapping("/show/game/{id}")
		public String oneGame(@PathVariable("id") Long id, Model model) {
			Game game = mainServ.oneGame(id);
			System.out.println("Hello from oneGame() method!");
			model.addAttribute("game", game);
			return "showGame.jsp";
		}
		
		@GetMapping("/game/new")
		public String newGame(HttpSession session, Model model) {
			model.addAttribute("game", new Game());
			return "adminCreate.jsp";
		}
		
		@PostMapping("/game/new")
		public String processNewGame(@Valid @ModelAttribute("game") Game game, BindingResult result) {
			mainServ.saveGame(game);
			return "redirect:/games";
		}
}
