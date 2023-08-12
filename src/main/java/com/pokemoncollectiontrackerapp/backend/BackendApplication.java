package com.pokemoncollectiontrackerapp.backend;

import java.util.List;

// import java.util.List;
// import java.util.Map;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
// import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.context.ConfigurableApplicationContext;

import com.pokemoncollectiontrackerapp.backend.model.PokemonModel;
// import com.pokemoncollectiontrackerapp.backend.dao.PokemonDAO;
import com.pokemoncollectiontrackerapp.backend.service.PokemonService;


@SpringBootApplication
public class BackendApplication 
// implements CommandLineRunner 
{
	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(BackendApplication.class, args);
		PokemonService pokemonService = context.getBean(PokemonService.class);

		List<PokemonModel> pokemonList = pokemonService.selectAllPokemon();
		for (PokemonModel pokemon : pokemonList) {
			System.out.println(pokemon);
		}
		SpringApplication.run(BackendApplication.class, args);
		System.out.println("yay");

		context.close();
	}

}
