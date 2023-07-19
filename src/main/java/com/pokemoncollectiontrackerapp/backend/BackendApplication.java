package com.pokemoncollectiontrackerapp.backend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;

@SpringBootApplication
public class BackendApplication implements CommandLineRunner {

	@Autowired
	private JdbcTemplate jdbcTemplateImplementation;

	public static void main(String[] args) {
		SpringApplication.run(BackendApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		String sql = "SELECT * FROM pokemon";
		List<Map<String, Object>> myList = jdbcTemplateImplementation.queryForList(sql);
		System.out.println(myList.get(0));
	}

}
