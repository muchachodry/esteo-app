package com.api.apibase.model;

import java.util.List;

import javax.persistence.EntityManager;

import org.apache.log4j.Logger;


public class ClienteQueries {
	
	private static Logger log = Logger.getLogger(ClienteQueries.class);
	
	public static Cliente findClientById(EntityManager entityManager, int id){
		try {
			Cliente p = entityManager.createQuery("from Cliente t where id = :id", Cliente.class)
					.setParameter("id", id)
					.getSingleResult();
			
			return p;
			
		} catch (Exception e) {
			log.warn("No se puede recuperar el cliente con ID: "+ id, e);
			return null;
			// TODO: handle exception
		}
	}
	public static List<Cliente> findClientsByName(EntityManager entityManager, String nombre){
		try {
			List <Cliente> p = entityManager.createQuery("FROM Cliente WHERE nombre LIKE :nombre", Cliente.class)
					.setParameter("nombre", nombre+"%").getResultList();
			
			return p;
			
		} catch (Exception e) {
			log.warn("No se puede recuperar el cliente con ID: "+ nombre, e);
			return null;
			// TODO: handle exception
		}
	}
	public static List<Cliente> findAllClients(EntityManager entityManager){
		try {
			List <Cliente> p = entityManager.createQuery("FROM Cliente" , Cliente.class).getResultList();
			return p;
			
		} catch (Exception e) {
			log.warn("No se puede recuperar los clientes");
			return null;
			// TODO: handle exception
		}
	}
}
