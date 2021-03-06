package com.skilldistillery.jpacrud.dao;

import java.util.List;
import com.skilldistillery.jpacrud.entities.Nes;

public interface NesDAO {

	Nes findById(int id);
	List<Nes> findAll();
	
	Nes findByKeyword(String uI);
	
	public Nes create(Nes nes);
	public Nes update(int id, Nes nes);
	public Nes saveGame(Nes nes);
	public Nes getGame(int id);
	public boolean deleteGame(int id);
	
	public boolean destroy(int id);
	
	
}
