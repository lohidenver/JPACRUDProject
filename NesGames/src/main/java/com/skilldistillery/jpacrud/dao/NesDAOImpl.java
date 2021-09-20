package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mysql.cj.xdevapi.SessionFactory;
import com.skilldistillery.jpacrud.entities.Nes;

@Repository //DAOIMPL
@Service
@Transactional
public class NesDAOImpl implements NesDAO {
	
//	@Autowired
//	private SessionFactory sessionFactory;
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPANES");
	
	@PersistenceContext
	private EntityManager em;
	

	public Session getSession() {
	  Session session = em.unwrap(Session.class);
	    return session;
	  }
	
	@Override
	public Nes findById(int id) {
		// TODO Auto-generated method stub
		return em.find(Nes.class, id);
	}

	@Override
	public List<Nes> findAll() {
		//get hibernate session
		//EntityManager em = emf.createEntityManager();
		//create query
		//execute query and get result list
		//return results
		String jpql = "SELECT game FROM Nes game";
		
		return em.createQuery(jpql, Nes.class).getResultList();
	}


	
	@Override

	public Nes create(Nes nes) {
		EntityManager em = emf.createEntityManager();
		
		em.merge(nes);
	//	em.refresh(nes);//maybe comment out
	//	em.persist(nes);
		em.flush();
		
		return nes;
	}

	@Override
	@Transactional
	public Nes update(int id, Nes nes) {
			
			    Nes dbNes = em.find(Nes.class, id);
			    
			    dbNes.setName(nes.getName());
			    dbNes.setYear(nes.getYear());
			    dbNes.setPublisher(nes.getPublisher());
			    dbNes.setStyle(nes.getStyle());
			    dbNes.setNumberPlayers(nes.getNumberPlayers());
			    dbNes.setWikipedia(nes.getWikipedia());
			    em.flush();
			    
			    return dbNes;
	}

	@Override
	
	public boolean destroy(int id) {
		EntityManager em = emf.createEntityManager();
		boolean successfullyRemovedNes = false;
		Nes nes = em.find(Nes.class, id);
		
		if(nes != null) {
					
			em.remove(nes); // performs the delete on the managed entity
			successfullyRemovedNes = !em.contains(nes);
			
			}

		return successfullyRemovedNes;
	}

	@Override
	
	public Nes findByKeyword(String keyword) {
		String query = "SELECT g FROM Name g WHERE g.name LIKE %:name%";
	//	List<Nes> searchByTitleLike(@Param("name") String name);
		return null ;
	}

	@Override
	public Nes saveGame(Nes nes) {
		//em.persist(nes);
		em.merge(nes);
		em.flush();
		
		System.out.println(nes);
		return nes;
		
	}

	@Override
	public Nes getGame(int id) {
		em.merge(id);
		em.flush();
		
		Nes nes = em.find(Nes.class, id);
		return nes;
		
	
	}


	

	@Override
	public boolean deleteGame(int id) {
		boolean result = false;
		Nes nes = em.find(Nes.class, id);
		em.remove(nes);
		
		nes = em.find(Nes.class, id);
		result = !em.contains(nes);
		return result;
		
	}






}
