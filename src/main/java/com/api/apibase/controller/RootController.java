package com.api.apibase.controller;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

//import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;

import com.api.apibase.model.Cliente;
import com.api.apibase.model.ClienteQueries;

@Controller
//@RequestMapping(path="/esteo-app")
public class RootController {
	private static Logger log = Logger.getLogger(RootController.class);
	
	@PersistenceContext
	private EntityManager entityManager;

	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("s","/osteo-app/static/home/resources");
	}
	
	@GetMapping({"", "/"})
	public String root(Model model) {
		/*LOG*/ 
		log.info("Dentro de información cliente");
		
		/*RETURN CLIENTE*/
		Cliente cliente = ClienteQueries.findClientById(entityManager, 2);
		model.addAttribute("Cliente",cliente);
		
		/*RETURN*/
		return "informacion-cliente";
	}
	
	@GetMapping("/login")
	public String login() {		
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout() {		
		return "logout";
	}
	
	@GetMapping("/informacion-cliente")
	public String informacionCliente(Model model) {
		
		/*LOG*/
		log.info("Dentro de información cliente");
		
		/*RETURN CLIENTE*/
		Cliente cliente = ClienteQueries.findClientById(entityManager, 1);
		model.addAttribute("Cliente",cliente);
		
		/*RETURN*/
		return "informacion-cliente";
	}
	
	
	
}
