//
//  Pokemon.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import Foundation

struct PokemonList: Decodable {
    var results: [Pokemon]
}

struct Pokemon: Decodable {
    var name: String
    var url: String
}
