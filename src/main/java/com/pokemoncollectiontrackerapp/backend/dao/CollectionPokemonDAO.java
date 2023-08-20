package com.pokemoncollectiontrackerapp.backend.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.pokemoncollectiontrackerapp.backend.model.CollectionPokemonModel;

@Repository
public class CollectionPokemonDAO {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CollectionPokemonDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<CollectionPokemonModel> selectByCollectionId(int collection_id) {
        String sql = "SELECT FROM collection_pokemon WHERE collection_id = ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            CollectionPokemonModel entry = new CollectionPokemonModel(
                rs.getInt("collection_id"),
                rs.getInt("pokemon_class_id"));
                return entry;
        });
    }
}
