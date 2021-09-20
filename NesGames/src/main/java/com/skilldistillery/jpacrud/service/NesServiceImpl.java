package com.skilldistillery.jpacrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.dao.NesDAO;
import com.skilldistillery.jpacrud.entities.Nes;

@Service
public class NesServiceImpl implements NesService {

	@Autowired
	private NesDAO nesdao;
	@Override
	@Transactional
	public List<Nes> findAll() {
		// TODO Auto-generated method stub
		return nesdao.findAll();
	}
	@Override
	public Nes findById(Integer gid) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	@Transactional
	public void saveGame(Nes nes) {
		
		nesdao.saveGame(nes);
	}
	
	

}
