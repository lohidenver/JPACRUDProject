package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Nes;


@Service
@Transactional
public class NesDAOImpl implements NesDAO {

	
	@PersistenceContext
	private EntityManager em;
	@Override
	public Nes findById(int nesId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Nes> findAll() {
		String jpql = "SELECT game FROM Nes game";
		
		return em.createQuery(jpql, Nes.class).getResultList();
	}

	@Override
	public Nes findByKeyword() {
		String jpql = "";
		return null;
	}

	@Override
	public Nes create(Nes nes) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Nes update(int id, Nes nes) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean destroy(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
