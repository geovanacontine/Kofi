//
//  RatingFeatureReducer.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import Foundation

struct RatingFeatureReducer {
    let effects: RatingFeatureEffectsProtocol
}

extension RatingFeatureReducer {
    func addCoffeeRating(state: inout RatingFeature.State) async {}
    func listCoffeesBasedOnUserRatings(state: inout RatingFeature.State) async {}
}
