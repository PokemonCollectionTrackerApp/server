package com.pokemoncollectiontrackerapp.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pokemoncollectiontrackerapp.backend.dao.PokemonDAO;
import com.pokemoncollectiontrackerapp.backend.model.PokemonModel;

@Service
public class PokemonService {
    private final PokemonDAO pokemonDao;

    @Autowired
    public PokemonService(PokemonDAO pokemonDAO){
        this.pokemonDao = pokemonDAO;
    }

    public List<PokemonModel> selectAllPokemon() {
        return pokemonDao.jank();
    }
}