//
//  ContentView.swift
//  Kofi
//
//  Created by Geovana Contine on 27/10/23.
//

import SwiftUI
import GeoKit

struct ContentView: View {
    
    @Environment(AppState.self) var state
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: PaddingSize.md.rawValue) {
                SectionHeaderView("For You") {
                    ForYouCoffeeView()
                }
                
                SectionHeaderView("Popular") {
                    ForYouCoffeeView()
                }
            }
            .padding(.vertical, size: .xxs)
        }
        .navigationTitle("Kofi")
    }
}
