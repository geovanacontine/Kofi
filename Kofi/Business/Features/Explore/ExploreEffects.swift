//
//  ExploreEffects.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import Foundation
import GeoKit

protocol ExploreEffectsProtocol {
    func fetchAllCoffeesFromCloudKit() async throws -> [Coffee]
}

struct ExploreEffects {
    
    private let context: CKContextProtocol
    
    init(context: CKContextProtocol = CKContext.shared) {
        self.context = context
    }
}

extension ExploreEffects: ExploreEffectsProtocol {
    func fetchAllCoffeesFromCloudKit() async throws -> [Coffee] {
        try await context.fetch(withPredicate: .init(value: true), withDerivedProperties: false)
    }
}
