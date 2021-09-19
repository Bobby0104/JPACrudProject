package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.GamePlayer;

public interface GamePlayerDAO {
	
	GamePlayer findById(int gamePlayerId);
	List<GamePlayer>findAll();
	public GamePlayer create(GamePlayer gamePlayer);
	public GamePlayer update (GamePlayer gamePlayer);
	boolean destoy(int id);

}
