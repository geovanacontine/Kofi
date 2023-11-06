//
//  ExploreEffects.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import Foundation
import GeoKit

// MARK: - Protocol

protocol ExploreEffectsProtocol {
    func fetchAllCoffeesFromCloudKitWithLogger() async throws -> [Coffee]
}

// MARK: - Init

struct ExploreEffects {
    
    private let context: CKContextProtocol
    
    init(context: CKContextProtocol = CKContext.shared) {
        self.context = context
    }
}

// MARK: - API

extension ExploreEffects: ExploreEffectsProtocol {
    
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
