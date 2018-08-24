package com.api.apibase.controller;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

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
	
	@GetMapping("/nuevo-cliente")
	public String nuevoCLiente(Model model) {
		
		/*LOG*/
		log.info("Dentro de nuevo cliente");
		
		/*RETURN*/
		return "nuevo-cliente";
	}
	
	@RequestMapping(value = "/addClient", method=RequestMethod.POST)
	@Transactional
	public RedirectView addClient(
			@RequestParam String nombre, 
			@RequestParam String apellido,
			@RequestParam Date fecha_nacimiento,
			@RequestParam(required=false) String  telf_movil,
			@RequestParam String sexo,
			@RequestParam(required=false) String embarazo,
			@RequestParam(required=false) String trabajo,
			@RequestParam(required=false) String comidas_dia,
			@RequestParam(required=false) String cantidad_agua,
			@RequestParam(required=false) String fruta_verdura_pescado,
			@RequestParam(required=false) String horas_sueno,
			@RequestParam(required=false) String operaciones,
			@RequestParam(required=false) String alergias,
			Model model) {
		
		log.info("Empezamos a añadir cliente");
		
		Cliente c = new Cliente();
		
		c.setNombre(nombre);
		c.setApellido(apellido);
		c.setFecha_nacimiento(fecha_nacimiento);
		c.setSexo(sexo);
		
		entityManager.persist(c);		
		entityManager.flush();
		
		List <Cliente> clientes = ClienteQueries.findAllClients(entityManager);
		model.addAttribute("clientes",clientes);
		
		log.info("recuperado clientes");
		
		entityManager.persist(c);		
		entityManager.flush();
		
		
		
		log.info("añadido");
		
		/*RETURN*/
		return new RedirectView("clientes");
	}
	
	
	/*@Transactional
	@RequestMapping(value="/clientsPost", method=RequestMethod.POST)
	public RedirectView indexPost(Model model,
			@RequestParam String nombre){
		log.info(nombre+" "+model);

	    return new RedirectView ("/osteo-app/clientes");
	}*/
	
}
