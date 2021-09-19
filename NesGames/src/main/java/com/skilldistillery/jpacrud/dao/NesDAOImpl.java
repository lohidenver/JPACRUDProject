package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Nes;


@Service
@Transactional
public class NesDAOImpl implements NesDAO {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPANES");
	
	@PersistenceContext
	private EntityManager em;
	@Override
	public Nes findById(int id) {
		// TODO Auto-generated method stub
		return em.find(Nes.class, id);
	}

	@Override
	public List<Nes> findAll() {
		String jpql = "SELECT game FROM Nes game";
		
		return em.createQuery(jpql, Nes.class).getResultList();
	}


	
	@Override
	public Nes create(Nes nes) {
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		System.out.println("Before persist, nes: " + nes);
		em.persist(nes);
		em.flush();
		System.out.println("After persist, nes: " + nes);
		em.getTransaction().commit();
		
		
		em.close();
		return nes;
	}

	@Override
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


//	@Override
//	public Nes findByKeyword(String uI) {
//		// TODO Auto-generated method stub
//		return null;
//	}


}
