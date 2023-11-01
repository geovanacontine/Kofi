//
//  ExploreMapper.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import Foundation

struct ExploreMapper {
    let state: AppState
    let effects = ExploreEffects()
}

extension ExploreMapper {
    func listAllCoffees() async {
        state.explore.allCoffees = LocalDatabase.coffees
    }
}
