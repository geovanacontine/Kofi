//
//  RatingMapper.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import Foundation

struct RatingMapper {
    let state: AppState
    let effects = RatingEffects()
}

extension RatingMapper {
    func addCoffeeRating() async {}
    func listCoffeesBasedOnUserRatings() async {}
}
