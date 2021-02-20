//
//  AttributeModifier.swift
//  Pokedex
//
//  Created by Andrean Lay on 20/02/21.
//

import SwiftUI

struct Attribute: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .padding(5)
            .background(color)
            .clipShape(Capsule())
    }
}
