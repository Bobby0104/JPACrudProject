package com.skilldistillery.jpacrud.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.entities.GamePlayer;

@Controller
public class StreetFighterController {
	
	@Autowired
	private GamePlayerDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("fighters", dao.findAll());
		return "home";
		
	}
	
	@RequestMapping(path = "search.do")
	public String findGamePlayer(int id, Model model) {
		GamePlayer gamePlayer = dao.findById(id);
		if (gamePlayer != null) {
			model.addAttribute("gamePlayer", gamePlayer);
		}
		return "searchView";
	}

//	@RequestMapping(path = "add.do")
//	public String createPlayer(GamePlayer gamePlayer, Model model) {
//		boolean isAdded = dao.addPlayer(gamePlayer);
//		if (isAdded == true) {
//			model.addAttribute("isAdded", isAdded);
//		}
//		return "addView";
//	}

	@RequestMapping(path = "get.do")
	public String getPlayer(int id, Model model) {
		GamePlayer gamePlayer = dao.findById(id);
		model.addAttribute("gamePlayer", gamePlayer);
		
		return "updateForm";
	}

	@RequestMapping(path = "update.do")
	public String updatePlayer(GamePlayer gamePlayer, Model model) {
		boolean isUpdated = dao.updatePlayer(gamePlayer);
		if (isUpdated) {
			model.addAttribute("isUpdated", isUpdated);
		}
		return "updateView";
	}

	@RequestMapping(path = "delete.do")
	public String deletePlayerer(int id, Model model) {
		boolean isDeleted = dao.deletePlayer(id);
		if (isDeleted) {
			model.addAttribute("isDeleted", isDeleted);
		}
		return "deleteView";
	}

	@RequestMapping(path = "findAll.do")
	public String findAll(Model model) {
		model.addAttribute("monsters", dao.findAll());
		
		return "findAllView";
		
	}
	
	


//	@RequestMapping(path = "create.do", method=RequestMethod.POST)
//	public String addGamePlayer(@RequestParam("name") String name, @RequestParam("gender") String gender,
//			@RequestParam("origin") String origin, @RequestParam("fight_style") String fightStyle, @RequestParam("special_move") String specialMove, Model model)
//			{
//		String success = "gamePlayer/success";
//		String fail = "gamePlayer/fail";
//		
//		GamePlayer gp = new GamePlayer();
//		gp.setName(name);
//		gp.setGender(gender);
//		gp.setOrigin(origin);
//		gp.setFightStyle(fightStyle);
//		gp.setSpecialMove(specialMove);
//			
//		GamePlayer dbGamePlayer = dao.create(gp);
//		model.addAttribute("gmaePlayer", gp);
//		if (dbGamePlayer.getId() > 0) {
//			return success;
//		} else {
//			return fail;
//		}
//			}
//	
//	@RequestMapping(path = "update.do", method=RequestMethod.GET)
//	public String updategamePlayer(@RequestParam int pid, Model model) {
//		
//		String viewName = "gamePlayer/edit";
//		GamePlayer gamePlayer = dao.findById(pid);
//		model.addAttribute("gamePlayer", gamePlayer);
//		model.addAttribute("pid", pid);
//		return viewName;
//		
//	}
	


		
		
			
		
	
	
	
	
	
}


