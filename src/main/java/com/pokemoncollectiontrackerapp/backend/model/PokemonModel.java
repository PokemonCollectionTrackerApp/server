package com.pokemoncollectiontrackerapp.backend.model;

public class PokemonModel {
    private int pokemon_id;
    private int national_dex_number;
    private String name;
    private String primary_type;
    private String secondary_type;
    private String category;
    private String primary_ability;
    private String secondary_ability;
    private String hidden_ability;
    private String mega_ability;
    private String gender_ratio;
    private int catch_rate; 
    private String E_G_G_1;
    private String E_G_G_2;
    
    public PokemonModel() {
    this.pokemon_id = -1;
    this.national_dex_number = -1;
    this.name = "missingno";
    this.primary_type = "???";
    this.secondary_type = null;
    this.category = "Glitch Pokemon";
    this.primary_ability = "lmaowhat";
    this.secondary_ability = null;
    this.hidden_ability = null;
    this.mega_ability = null;
    this.gender_ratio = null;
    this.catch_rate = -1; 
    this.E_G_G_1 = "field";
    this.E_G_G_2 = null;}

    public PokemonModel(int pokemon_id, int national_dex_number, String name, String primary_type, String secondary_type, String category, String primary_ability, String secondary_ability, String hidden_ability, String mega_ability, String gender_ratio, int catch_rate,  String E_G_G_1, String E_G_G_2) {
    this.pokemon_id = pokemon_id;
    this.national_dex_number = national_dex_number;
    this.name = name;
    this.primary_type = primary_type;
    this.secondary_type = secondary_type;
    this.category = category;
    this.primary_ability = primary_ability;
    this.secondary_ability = secondary_ability;
    this.hidden_ability = hidden_ability;
    this.mega_ability = mega_ability;
    this.gender_ratio = gender_ratio;
    this.catch_rate = catch_rate; 
    this.E_G_G_1 = E_G_G_1;
    this.E_G_G_2 = E_G_G_2;
    }

    public int get_id() {
        return pokemon_id;
    }
    // public void set_id(int pokemon_id) {
    //     this.pokemon_id = pokemon_id;
    // }
    public int getNational_dex_number() {
        return national_dex_number;
    }
    // public void setNational_dex_number(int national_dex_number) {
    //     this.national_dex_number = national_dex_number;
    // }
    public String getName() {
        return name;
    }
    // public void setName(String name) {
    //     this.name = name;
    // }
    public String getPrimary_type() {
        return primary_type;
    }
    // public void setPrimary_type(String primary_type) {
    //     this.primary_type = primary_type;
    // }
    public String getSecondary_type() {
        return secondary_type;
    }
    // public void setSecondary_type(String secondary_type) {
    //     this.secondary_type = secondary_type;
    // }
    public String getCategory() {
        return category;
    }
    // public void setCategory(String category) {
    //     this.category = category;
    // }
    public String getPrimary_ability() {
        return primary_ability;
    }
    // public void setPrimary_ability(String primary_ability) {
    //     this.primary_ability = primary_ability;
    // }
    public String getSecondary_ability() {
        return secondary_ability;
    }
    // public void setSecondary_ability(String secondary_ability) {
    //     this.secondary_ability = secondary_ability;
    // }
    public String getHidden_ability() {
        return hidden_ability;
    }
    // public void setHidden_ability(String hidden_ability) {
    //     this.hidden_ability = hidden_ability;
    // }
    public String getMega_ability() {
        return mega_ability;
    }
    // public void setMega_ability(String mega_ability) {
    //     this.mega_ability = mega_ability;
    // }
    public String getGender_ratio() {
        return gender_ratio;
    }
    // public void setGender_ratio(String gender_ratio) {
    //     this.gender_ratio = gender_ratio;
    // }
    public int getCatch_rate() {
        return catch_rate;
    } 
    // public void setCatch_rate(int catch_rate) {
    //     this.catch_rate = catch_rate;
    // } 
    public String getE_G_G_1() {
        return E_G_G_1;
    }
    // public void setE_G_G_1(String E_G_G_1) {
    //     this.E_G_G_1 = E_G_G_1;
    // }
    public String getE_G_G_2() {
        return E_G_G_2;
    }
    // public void setE_G_G_2(String E_G_G_2) {
    //     this.E_G_G_2 = E_G_G_2;
    // }

};

