package com.api.apibase.controller;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.api.apibase.model.Cliente;
import com.api.apibase.model.ClienteQueries;

@Controller
public class CalendarController {
	
	private static Logger log = Logger.getLogger(CalendarController.class);
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("s","/esteo-app/static/home/resources");
	}
	
	@GetMapping("/calendar")
	public String calendar(Model model) {
		
		/*LOG*/
		log.info("Dentro de calendario");
		
		/*RETURN CLIENTE*/
		Cliente cliente = ClienteQueries.findClientById(entityManager, 1);
		model.addAttribute("Cliente",cliente);
		
		/*RETURN*/
		return "calendar";
	}

}
