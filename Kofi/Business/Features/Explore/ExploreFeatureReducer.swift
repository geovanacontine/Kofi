//
//  ExploreFeatureReducer.swift
//  Kofi
//
//  Created by Geovana Contine on 07/11/23.
//

import Foundation

struct ExploreFeatureReducer {
    let effects: ExploreFeatureEffectsProtocol
}

extension ExploreFeatureReducer {
    func listAllCoffees(state: inout ExploreFeature.State) async {
        do {
            state.allCoffees = try await effects.fetchAllCoffeesFromCloudKitWithLogger()
        } catch {
            //
        }
    }
}
