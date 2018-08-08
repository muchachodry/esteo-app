package com.api.apibase.model;

import java.util.List;



import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "api-clientes")
public interface ClienteRepository extends PagingAndSortingRepository<Cliente, Integer>{
	

	List<Cliente> findBynombre(@Param("name") String name);
	List<Cliente> findAllBynombreStartingWith(@Param("name") String name);
	List<Cliente> findById(@Param("id") int id);

}
