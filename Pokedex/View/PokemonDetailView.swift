//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import SwiftUI

struct PokemonDetailView: View {
    var pokemonId: Int
    
    var body: some View {
        Text("\(pokemonId)")
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemonId: 1)
    }
}
