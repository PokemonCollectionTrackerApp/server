package com.pokemoncollectiontrackerapp.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pokemoncollectiontrackerapp.backend.dao.CollectionPokemonDAO;
import com.pokemoncollectiontrackerapp.backend.model.CollectionPokemonModel;

@Service
public class CollectionPokemonService {
    private final CollectionPokemonDAO collectionPokemonDAO;

    @Autowired
    public CollectionPokemonService(CollectionPokemonDAO collectionPokemonDAO){
        this.collectionPokemonDAO = collectionPokemonDAO;
    }

    public List<CollectionPokemonModel> selectByCollectionId(int collection_id) {
        return collectionPokemonDAO.selectByCollectionId(collection_id);
    }
}
