package com.flynn.javaProject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.flynn.javaProject.models.Game;

@Repository
public interface GameRepository extends CrudRepository<Game, Long>{
	List<Game> findAll();
}
