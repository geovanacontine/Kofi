//
//  ExploreMapper.swift
//  Kofi
//
//  Created by Geovana Contine on 01/11/23.
//

import Foundation
import GeoKit

struct ExploreMapper {
    
    private let state: AppState
    private let effects: ExploreEffectsProtocol
    
    init(
        state: AppState,
        effects: ExploreEffectsProtocol = ExploreEffects()
    ) {
        self.state = state
        self.effects = effects
    }
}

extension ExploreMapper {
    func listAllCoffees() async {
        do {
            state.explore.allCoffees = try await effects.fetchAllCoffeesFromCloudKitWithLogger()
            state.explore.isShowingFetchError = false
        } catch {
            state.explore.isShowingFetchError = true
        }
    }
}
