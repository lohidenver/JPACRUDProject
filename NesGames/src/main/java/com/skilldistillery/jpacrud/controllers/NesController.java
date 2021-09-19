package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.dao.NesDAO;
import com.skilldistillery.jpacrud.entities.Nes;

@Controller
public class NesController {

	@Autowired
	private NesDAO nesdao;
	
	@RequestMapping(path = "getGame.do")
	public String showFilm(Integer gid, Model model) {
		Nes nes = nesdao.findById(gid);
		model.addAttribute("game", nes);
		return "game/show";
	}
	@RequestMapping(path = {"/",  "home.do"})
	public String home(Model model) {
		model.addAttribute("games", nesdao.findAll());
		return "home";
	}
	
	//@RequestMapping(path = {""})
	public String index(Model model) {
		List<Nes> nes = nesdao.findAll();
		model.addAttribute("games", nes);
		return "home";
	}
	
	
	
}//End Class
