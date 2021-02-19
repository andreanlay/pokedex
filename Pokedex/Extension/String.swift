//
//  String.swift
//  Pokedex
//
//  Created by Andrean Lay on 19/02/21.
//

import Foundation

extension String {
    func capitalizeFirstLetterHelper() -> String {
        return prefix(0).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizeFirstLetterHelper()
    }
}
