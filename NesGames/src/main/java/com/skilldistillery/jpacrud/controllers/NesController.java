package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.dao.NesDAO;
import com.skilldistillery.jpacrud.entities.Nes;
import com.skilldistillery.jpacrud.service.NesService;

@Controller

public class NesController {

	@Autowired
	private NesDAO nesdao;

	@Autowired
	private NesService nesService;

//	@RequestMapping("/list")
//	public String listGames(Model model) {
//		
//		List<Nes> nesGames = nesdao.findAll();
//		model.addAttribute("game", nesGames);
//		return "list-games";
//	}

	@GetMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("games", nesdao.findAll());
		return "home";
	}

	@GetMapping("/getGame.do")
	public String showGame(Integer gid, Model model) {
		Nes nes = nesdao.findById(gid);
		model.addAttribute("game", nes);
		return "game/show";
	}

	@GetMapping("/createGame")
	public String createGame(Model model) {
		Nes nes = new Nes();
		model.addAttribute("game", nes);
		return "create";
	}

	@PostMapping("/saveGame")
	public String saveGame(@ModelAttribute("game") Nes nes) {

		nesService.saveGame(nes);
		return "redirect:/home.do";
	}
	
//  Chad
	@GetMapping("/updateGame")
//	public String updateGame(int id, Model model) {
	public String updateGame(@RequestParam("gameId") int id, Model model) {

		Nes nes = nesService.getGame(id);
		model.addAttribute("game", nes);

		return "redirect:/home.do";
	}
	
	@GetMapping("update.do")
//	public String updateGame(int id, Model model) {
	public String update(@RequestParam("gameId") int id, Model model) {

		Nes nes = nesService.getGame(id);
		model.addAttribute("game", nes);

		return "create";
	}
	
	

	@GetMapping("/delete")
	public String deleteGame(@RequestParam("gameId") int id, Model model) {
		
		nesService.deleteGame(id);
		
		return "redirect:/home.do";
	}
	
}// End Class
