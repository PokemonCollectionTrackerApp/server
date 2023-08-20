package com.pokemoncollectiontrackerapp.backend.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.pokemoncollectiontrackerapp.backend.model.PokemonModel;

@Repository
public class PokemonDAO {
	private final JdbcTemplate jdbcTemplateImplementation;

	@Autowired
	public PokemonDAO(JdbcTemplate jdbcTemplateImplementation) {
		this.jdbcTemplateImplementation = jdbcTemplateImplementation;
	}
	// rename this jank
	public List<PokemonModel> jank(){
		String sql = "SELECT * FROM pokemon";
		return jdbcTemplateImplementation.query(sql, (rs, rowNum) -> {
			PokemonModel pokemon = new PokemonModel(
			rs.getInt("national_dex_number"),
			rs.getInt("pokemon_id"),
			rs.getString("name"),
			rs.getString("primary_type"),
			rs.getString("secondary_type"),
			rs.getString("category"),
			rs.getString("primary_ability"),
			rs.getString("secondary_ability"),
			rs.getString("hidden_ability"),
			rs.getString("mega_ability"),
			rs.getString("gender_ratio"),
			rs.getInt("catch_rate"),
			rs.getString("primary_egg_group"),
			rs.getString("secondary_egg_group"));
			return pokemon;
		});
		// List<Map<String, Object>> myList = this.jdbcTemplateImplementation.queryForList(sql);
		// System.out.println(myList.get(0));
	}
}
