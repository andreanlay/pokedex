//
//  Pokemon.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import Foundation

struct Result: Decodable {
    var results: [PokemonList]
}

struct PokemonList: Decodable {
    var name: String
    var url: String
    
    var formattedName: String {
        String(Array(name)[0].uppercased() + name.dropFirst())
    }
}
