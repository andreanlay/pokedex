//
//  View+AttributeStyle.swift
//  Pokedex
//
//  Created by Andrean Lay on 20/02/21.
//

import SwiftUI

extension View {
    func attributeStyle(color: Color) -> some View {
        self.modifier(Attribute(color: color))
    }
}
