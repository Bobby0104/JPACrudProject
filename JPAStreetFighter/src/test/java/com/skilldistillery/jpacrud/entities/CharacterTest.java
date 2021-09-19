package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CharacterTest {
	
	
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private Character character;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAStreetFighter");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		
		em = emf.createEntityManager();
		character = em.find(Character.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		
		em.close();
	}

	@Test
	void test_Character_entity_mapping() {
		assertNotNull(character);
		assertEquals("Ryu",character.getName());
	}

}
