//
//  ExploreView.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import SwiftUI
import GeoKit

struct ExploreView: View {
    
    @Environment(AppState.self) var state
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: PaddingSize.md.rawValue) {
                SectionHeaderView("For You") {
                    CoffeeCarouselView()
                }
                
                SectionHeaderView("Popular") {
                   CoffeeCarouselView()
                }
            }
            .padding(.vertical, size: .xxs)
        }
        .navigationTitle("Kofi")
        .task {
            await Action.run(.explore(.listAllCoffees))
        }
    }
}
