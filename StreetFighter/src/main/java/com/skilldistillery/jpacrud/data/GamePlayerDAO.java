package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.GamePlayer;

public interface GamePlayerDAO {
	
	GamePlayer findById(int gamePlayerId);
	List<GamePlayer>findAll();
    boolean addPlayer(int gamePlayer);
	boolean updatePlayer (GamePlayer gamePlayer);
	boolean deletePlayer(int gamePlayerId);
   
}
