package com.api.apibase.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.api.apibase.model.ClienteApi;


@RestController
public class ApiRestController {
	
	private static final String template = "Hello, %s!";
    private int id;
	
	@RequestMapping("/api/user")
    public ClienteApi user(@RequestParam(value="name") String name) {
		
		return new ClienteApi(id, String.format(template, name));
    }
	
}
