//
//  Coffee.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import Foundation

struct Coffee {
    let id: String
    let name: String
    let author: String
    let sweetness: Double
    let intensity: Double
    let cupSize: CupSize
    let instructions: String
}

enum CupSize {
    case small
    case large
}

extension Coffee: Identifiable {}
