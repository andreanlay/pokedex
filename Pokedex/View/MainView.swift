//
//  ContentView.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.pokemonList, id: \.name) { pokemon in
                Text(pokemon.name)
            }
            .navigationTitle("P@kedex")
        }
        .onAppear(perform: viewModel.fetchData)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
