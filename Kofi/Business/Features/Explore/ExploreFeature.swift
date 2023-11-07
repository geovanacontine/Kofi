//
//  ExploreFeature.swift
//  Kofi
//
//  Created by Geovana Contine on 07/11/23.
//

import Foundation
import GeoKit

@ReducerFeature
struct ExploreFeature {
    enum Action {
        case listAllCoffees
    }
    
    struct State {
        var allCoffees: [Coffee] = []
    }
}
