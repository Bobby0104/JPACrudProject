package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.GamePlayer;

@Service
@Transactional
public  class GamePlayerDAOImpl implements GamePlayerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public GamePlayer findById(int id) {
		GamePlayer gamePlayer = em.find(GamePlayer.class, id);
		return gamePlayer;

	}

	@Override
	public List<GamePlayer> findAll() {
		String jpql = "SELECT p FROM GamePlayer p";
		return em.createQuery(jpql, GamePlayer.class).getResultList();
	}

	@Override
	public boolean updatePlayer(GamePlayer gamePlayer) {
		GamePlayer updateGamePlayer = em.find(GamePlayer.class, gamePlayer.getId());
		if (updateGamePlayer  != null) {
			updateGamePlayer .setName(gamePlayer.getName());
			updateGamePlayer .setGender(gamePlayer.getGender());
			updateGamePlayer .setOrigin(gamePlayer.getOrigin());
			updateGamePlayer .setFightStyle(gamePlayer.getFightStyle());
			updateGamePlayer .setSpecialMove(gamePlayer.getSpecialMove());

		}
		
		return em.contains(updateGamePlayer);
		
		

	}

//	@Override
//	public boolean addPlayer(GamePlayer gamePlayer) {
//		em.merge(gamePlayer);
//		return em.contains(gamePlayer);
//
//	}

	@Override
	public boolean deletePlayer(int gamePlayerId) {
		// TODO Auto-generated method stub
		GamePlayer deletedGamePlayer = em.find(GamePlayer.class, gamePlayerId);
		if (deletedGamePlayer != null) {
			em.remove(deletedGamePlayer);
		}
		return em.contains(deletedGamePlayer);
	}

@Override
public boolean addPlayer(int gamePlayer) {
	// TODO Auto-generated method stub
	return false;
}

	

}
