//
//  ImageView.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()

    init(withURL url:String) {
        imageLoader = ImageLoader(urlString:url)
    }

    var body: some View {
        Image(uiImage: imageLoader.image ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100, height:100)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(withURL:  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png")
    }
}
