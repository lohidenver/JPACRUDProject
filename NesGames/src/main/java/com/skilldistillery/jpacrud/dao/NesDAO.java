package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Nes;

public interface NesDAO {

	Nes findById(int nesId);
	List<Nes> findAll();
	
	Nes findByKeyword();
	
	public Nes create(Nes nes);
	public Nes update(int id, Nes nes);
	public boolean destroy(int id);
	
}