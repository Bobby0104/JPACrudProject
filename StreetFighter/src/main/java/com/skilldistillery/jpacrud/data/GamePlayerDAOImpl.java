package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class GamePlayerDAOImpl  implements GamePlayerDAO {
	
	private static EntityManagerFactory emf =
			Persistence.createEntityManagerFactory("StreetFighter");

}
