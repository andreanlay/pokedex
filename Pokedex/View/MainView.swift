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
            List(viewModel.pokemonList.indices, id: \.self) { index in
                NavigationLink(destination: PokemonDetailView(pokemonId: index + 1)) {
                    HStack {
                        ImageView(withURL: viewModel.getImageURL(pokemonId: index + 1))
                        Text(viewModel.pokemonList[index].formattedName)
                    }
                }
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
