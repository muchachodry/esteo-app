package com.api.apibase.controller;


//import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;


@Controller
//@RequestMapping(path="/esteo-app")
public class RootController {
	private static Logger log = Logger.getLogger(RootController.class);

	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("s","/static/home/resources");
	}
	
	@GetMapping({"/esteo-app/informacion-cliente"})
	public String browser() {
		log.info("Dentro de información cliente");
		return "informacion-cliente";
	}
}
