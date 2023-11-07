//
//  Store.swift
//  Kofi
//
//  Created by Geovana Contine on 07/11/23.
//

import GeoKit

@ReducerStore(features: "Explore")
@Observable
class Store {
    var state = State()
}
