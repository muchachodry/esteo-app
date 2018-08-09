package com.api.apibase.controller;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.api.apibase.model.Cliente;
import com.api.apibase.model.ClienteApi;
import com.api.apibase.model.ClienteQueries;


@RestController
public class ApiRestController {
	
	private static final String template = "Hello, %s!";
    private int id;
	
    @PersistenceContext
	private EntityManager entityManager;
    
	@RequestMapping("/api/user")
    public ClienteApi user(@RequestParam(value="name") String name) {
		
		return new ClienteApi(id, String.format(template, name));
    }
	
	@RequestMapping("/api/user2")
    public Cliente user2(@RequestParam(value="id") int id) {
		Cliente c = ClienteQueries.findClientById(entityManager, id);
		return c;
    }
	@RequestMapping("/api/clientsByName")
    public List <Cliente> user3(@RequestParam(value="nombre") String nombre) {
		List <Cliente> c = ClienteQueries.findClientsByName(entityManager, nombre);
		return c;
    }
	@RequestMapping("/api/allClients")
    public List <Cliente> allClients() {
		List <Cliente> c = ClienteQueries.findAllClients(entityManager);
		return c;
    }
	
}
