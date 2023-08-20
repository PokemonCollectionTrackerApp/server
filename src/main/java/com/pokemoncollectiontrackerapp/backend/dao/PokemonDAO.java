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
			PokemonModel pokemon = new PokemonModel();
			pokemon.set_id(rs.getInt("pokemon_id"));
			pokemon.setNational_dex_number(rs.getInt("national_dex_number"));
			pokemon.setName(rs.getString("name"));
			pokemon.setPrimary_type(rs.getString("primary_type"));
			pokemon.setSecondary_type(rs.getString("secondary_type"));
			pokemon.setCategory(rs.getString("category"));
			pokemon.setPrimary_ability(rs.getString("primary_ability"));
			pokemon.setSecondary_ability(rs.getString("secondary_ability"));
			pokemon.setHidden_ability(rs.getString("hidden_ability"));
			pokemon.setMega_ability(rs.getString("mega_ability"));
			pokemon.setGender_ratio(rs.getString("gender_ratio"));
			pokemon.setCatch_rate(rs.getInt("catch_rate")); 
			pokemon.setE_G_G_1(rs.getString("primary_egg_group"));
			pokemon.setE_G_G_2(rs.getString("secondary_egg_group"));
			return pokemon;
		});
		// List<Map<String, Object>> myList = this.jdbcTemplateImplementation.queryForList(sql);
		// System.out.println(myList.get(0));
	}
}
