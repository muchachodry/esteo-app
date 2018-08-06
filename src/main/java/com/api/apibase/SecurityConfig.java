package com.api.apibase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
        		.antMatchers("/static/**", "/esteo-app/logout", "/403").permitAll()
				.mvcMatchers("/esteo-app/informacion-cliente").hasRole("ADMIN")
        		.antMatchers("/esteo-app/informacion-cliente/**").hasRole("ADMIN")
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.permitAll()
	            .loginPage("/login")
	            .and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/login")
	            .permitAll();
	}
	
	@Bean
	public IwUserDetailsService springDataUserDetailsService() {
		return new IwUserDetailsService();
	}
	
/* 
	Si eliminas el "Bean" anterior, esto funciona sin BD ni nada:
*/
/*	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) 
			throws Exception {
		auth.inMemoryAuthentication()
				.withUser("a").password("aa").roles("ADMIN")
				.and()
				.withUser("paco").password("password").roles("USER", "ADMIN")
				.and()
				.withUser("idoia").password("aa").roles("USER", "ADMIN");
	}
*/
	
	//@Autowired
	//private Environment env;
	
	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
    /*@Bean(name="localData")
    public LocalData getLocalData() {
    	return new LocalData(new File(env.getProperty("es.ucm.fdi.base-path")));
    }*/    
}