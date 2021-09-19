package com.skilldistillery.jpacrud.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StreetFighterController {
	
	@Autowired
	private GamePlayerDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("streetFighter", dao.findAll());
		return "home";
		
	}
	
	

}
