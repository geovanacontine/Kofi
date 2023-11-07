//
//  RatingFeature.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import GeoKit

@ReducerFeature
struct RatingFeature {
    enum Action {
        case addCoffeeRating
        case listCoffeesBasedOnUserRatings
    }
    
    struct State {}
}
