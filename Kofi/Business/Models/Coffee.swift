//
//  Coffee.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import GeoKit

@CKModel
struct Coffee {
    let id: String
    let name: String
    let author: String
    let sweetness: Double
    let intensity: Double
    let cupSize: String
    let instructions: String
    
    var cupSizeType: CupSize {
        .init(rawValue: cupSize) ?? .large
    }
}
