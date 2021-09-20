package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		model.addAttribute("games", nesService.findAll());
		return "home";
	}

	@GetMapping(path = "getGame.do")
	public String showGame(Integer gid, Model model) {
		Nes nes = nesService.findById(gid);
		model.addAttribute("game", nes);
		return "game/show";
	}
	
	@GetMapping("/createGame")
	public String createGame(Model model) {
		Nes nes = new Nes();
		model.addAttribute("game", nes);
		return "create";
	}
			
//	@RequestMapping(path = {"create.do"})
//	public ModelAndView create() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("create");
//		return mv;
//	}
//
//	@RequestMapping(path = "createGame.do", method = RequestMethod.POST)
//	public String createGame(@RequestParam("name") String name, @RequestParam("year") Integer year,
//			@RequestParam("publisher") String publisher, @RequestParam("style") String style,
//			@RequestParam("numberPlayers") String numberPlayers, @RequestParam("wikipedia") String wikipedia, Model model) {
//
//		String success = "game/success";
//		String fail = "game/fail";
//
//		Nes game = new Nes();
//		game.setName(name);
//		game.setYear(year);
//		game.setPublisher(publisher);
//		game.setStyle(style);
//		game.setNumberPlayers(numberPlayers);
//		game.setWikipedia(wikipedia);
//
//		Nes dbNes = nesdao.create(game);
//		model.addAttribute("game", game);
//		if (dbNes.getId() > 0) {
//			return success;
//		} else {
//			return fail;
//		}
//	}
//
//	
//
//	@RequestMapping(path = "update.do", method = RequestMethod.GET)
//	public String update(@RequestParam int gid, Model model) {
//		String viewName = "update";
//		Nes nes = nesdao.findById(gid);
//		model.addAttribute("game", nes);
//		model.addAttribute("Gameid", gid);
//		return viewName;
//	}
//
//	@RequestMapping(path = "update.do", method = RequestMethod.POST, params = "nes")
//	public String update(Nes nes, @RequestParam("gid") int gid, Model model) {
//
//		String viewName = "home";
//		nesdao.update(gid, nes);
//
//		return viewName;
//	}
//
//	@RequestMapping(path = "destroy.do")
//	public String destroy(int gid, Model model) {
//		boolean result = nesdao.destroy(gid);
//
//		if (result == true) {
//			return "game/success";
//		} else {
//			return "game/fail";
//		}
//
//	}
//	
//	@RequestMapping(path = "remove.do")
//	public String destroyGame(int gid, Model model) {
//		boolean result = nesdao.destroy(gid);
//
//		if (result == true) {
//			return "game/success";
//		} else {
//			return "game/fail";
//		}
//
//	}
//	
//	//@RequestMapping(path = {""})
//	public String index(Model model) {
//		List<Nes> nes = nesdao.findAll();
//		model.addAttribute("games", nes);
//		return "home";
//	}

}// End Class
