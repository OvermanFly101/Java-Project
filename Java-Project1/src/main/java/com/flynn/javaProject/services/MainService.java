package com.flynn.javaProject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.flynn.javaProject.models.Game;
import com.flynn.javaProject.repositories.GameRepository;

@Service
public class MainService {
	 
    private GameRepository gameRepo;
    
    public MainService(GameRepository gameRepo)     {
        this.gameRepo = gameRepo;
    }
    
    public Game oneGame(Long id) {
    	Optional<Game> optionGame = gameRepo.findById(id);
    	if(optionGame.isPresent()) {
    		return optionGame.get();
    	}else {
    		return null;
    	}
    }
    
    public List<Game> allGames(){
    	return gameRepo.findAll();
    }
    
    public Game saveGame(Game game) {
    	return gameRepo.save(game);
    }
    
}
