package com.api.apibase.controller;


//import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class RootController {
	private static Logger log = Logger.getLogger(RootController.class);

	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("s","/static/home/resources");
	}
	
	@GetMapping({"/","/index"})
	public String root(Model model) {
		log.info("Entrado");		
		return "index";
	}
	
	@GetMapping({"/buscador-elastic"})
	public String browser() {		
		return "browser";
	}
}
