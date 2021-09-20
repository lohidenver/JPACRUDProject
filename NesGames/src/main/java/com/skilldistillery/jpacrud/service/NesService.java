package com.skilldistillery.jpacrud.service;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Nes;

public interface NesService {

	public List<Nes> findAll();

	public Nes findById(Integer gid);

	public void saveGame(Nes nes);

	public Nes getGame(int id);

	public void deleteGame(int id); 
	
}
