package com.skilldistillery.campsites.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.campsites.entities.Campsite;

class CampsiteTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Campsite campsite;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACampsite");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		
		em = emf.createEntityManager();
		campsite = em.find(Campsite.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		
		campsite = null;
		em.close();
	}

	@Test
	@DisplayName("testing not null")
	void test() {
		assertNotNull(campsite);
		assertEquals("fun place", campsite.getDescription());
	}

}
