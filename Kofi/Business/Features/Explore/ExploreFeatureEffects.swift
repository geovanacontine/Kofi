//
//  ExploreFeatureEffects.swift
//  Kofi
//
//  Created by Geovana Contine on 07/11/23.
//

import Foundation
import GeoKit

protocol ExploreFeatureEffectsProtocol {
    func fetchAllCoffeesFromCloudKitWithLogger() async throws -> [Coffee]
}

struct ExploreFeatureEffects: ExploreFeatureEffectsProtocol {
    
    // External Dependencies
    private let context: CKContextProtocol
    
    init(context: CKContextProtocol = CKContext.shared) {
        self.context = context
    }
    
    @Logger(
        "Fetching all coffees from CloudKit...",
        success: "Coffees loaded from CloudKit",
        error: "Failed to fetch coffees from CloudKit",
        feature: "Explore"
    )
    func fetchAllCoffeesFromCloudKit() async throws -> [Coffee] {
        try await context.fetch(withPredicate: .init(value: true), withDerivedProperties: false)
    }
}
