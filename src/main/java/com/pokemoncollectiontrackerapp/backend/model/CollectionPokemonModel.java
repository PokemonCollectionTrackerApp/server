package com.pokemoncollectiontrackerapp.backend.model;

public class CollectionPokemonModel {
    private int collection_id;
    private int pokemon_class_id;

    public CollectionPokemonModel() {
        this.collection_id = -1;
        this.pokemon_class_id = -1;
    }

    public CollectionPokemonModel(int collection_id, int pokemon_class_id){
        this.collection_id = collection_id;
        this.pokemon_class_id = pokemon_class_id;
    }

    public int get_collection_id() {
        return collection_id;
    }
    public void set_collection_id(int collection_id) {
        this.collection_id = collection_id;
    }
    public int get_pokemon_class_id() {
        return pokemon_class_id;
    }
    public void set_pokemon_class_id(int pokemon_class_id) {
        this.pokemon_class_id = pokemon_class_id;
    }
}
