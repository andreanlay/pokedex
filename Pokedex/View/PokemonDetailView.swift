//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import SwiftUI

struct PokemonDetailView: View {
    @ObservedObject private var viewModel = PokemonDetailViewModel()
    private var id: Int
    
    init(id: Int) {
        self.id = id
        viewModel.fetchPokemonDetail(pokemonId: id)
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("#\(self.id, specifier: "%0.3d")")
                    .font(.title)
                HStack(spacing: 30) {
                    ForEach(viewModel.pokemon.types, id: \.type.name) {
                        Text($0.type.name)
                            .attributeStyle(color: Color.green)
                    }
                }
                HStack {
                    VStack {
                        ImageView(withURL: viewModel.pokemon.sprites.frontDefault)
                        Text("Front View")
                    }
                    VStack {
                        ImageView(withURL: viewModel.pokemon.sprites.backDefault)
                        Text("Back View")
                    }
                }
                HStack(spacing: 30) {
                    VStack {
                        Text("Height")
                            .attributeStyle(color: Color.orange)
                        Text("\(viewModel.pokemon.height) cm")
                    }
                    VStack {
                        Text("Weight")
                            .attributeStyle(color: Color.blue)
                        Text("\(viewModel.pokemon.weight) kg")
                    }
                }
                Section(header: Text("Stats").font(.headline)) {
                    ForEach(viewModel.pokemon.stats, id: \.stat.name) { stat in
                        VStack {
                            HStack(spacing: 25) {
                                Group {
                                    Text(stat.formattedName)
                                        .fontWeight(.bold)
                                        .frame(minWidth: 60, alignment: .leading)
                                    Text("\(stat.baseStat)")
                                        .frame(minWidth: 40)
                                }
                                ProgressBar(value: Float(stat.baseStat) / Float(stat.maximumStat))
                            }
                        }
                    }
                }
                Spacer()
            }
            .padding(25)
        }
        .navigationBarTitle(Text(viewModel.pokemon.formattedName), displayMode: .inline)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(id: 1)
    }
}
