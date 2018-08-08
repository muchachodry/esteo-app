package com.api.apibase.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.api.apibase.model.Cliente;
import com.api.apibase.model.ClienteQueries;


@Controller
public class ClientsController {

private static Logger log = Logger.getLogger(ClientsController.class);
	
	@PersistenceContext
	private EntityManager entityManager;

	@ModelAttribute
	public void addAttributes(Model model) {
	    model.addAttribute("s","/osteo-app/static/home/resources");
	}
	
	@GetMapping("/clientes")
	public String informacionCliente(Model model) {
		
		/*LOG*/
		log.info("Dentro de información clientes");
		List <Cliente> clientes = ClienteQueries.findAllClients(entityManager);
		model.addAttribute("clientes",clientes);
		
		/*RETURN*/
		return "clientes";
	}
	
	/*@RequestMapping(value="/clientsPost", method=RequestMethod.POST)
	public String indexPost(Model model,
			@RequestParam String nombre){
		log.info(nombre+" "+model);

	    return "redirect:/";
	} */
	
}
