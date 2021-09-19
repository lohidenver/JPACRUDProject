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

import javassist.bytecode.annotation.EnumMemberValue;

class NESTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Nes nes;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPANES");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		nes = em.find(Nes.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		nes = null;
	}

	@Test
	void test() {
		assertNotNull(nes);
		assertEquals("The Legend of Zelda", nes.getName());
	}

}
