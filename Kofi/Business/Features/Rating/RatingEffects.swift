//
//  RatingEffects.swift
//  Kofi
//
//  Created by Geovana Contine on 30/10/23.
//

import Foundation
import CoreML

struct RatingEffects {
    func recommend(usingRatings ratings: [Rating]) throws -> [Coffee] {
        let model = try CoffeeRecommendation(configuration: MLModelConfiguration()).model
        let items = ratings.reduce(into: [String: Double]()) { $0[$1.coffeeId] = $1.value }
        
        let input = CoffeeRecommendationInput(items: items, k: 3)
        let results = try model.prediction(from: input)
        let output = CoffeeRecommendationOutput(features: results)
        let recommendedIds = output.recommendations
        
        let database = LocalDatabase.coffees
        
        return recommendedIds.compactMap { id in
            database.first(where: { $0.id == id })
        }
    }
}
