//
//  KofiApp.swift
//  Kofi
//
//  Created by Geovana Contine on 27/10/23.
//

import SwiftUI
import GeoKit

@main
struct KofiApp: App {
    
    @State var state = AppState.shared
    
    var body: some Scene {
        WindowGroup {
            DesignSystemView(themes: KofiThemes.supportedThemes) {
                NavigationStack {
                    ContentView()
                }
            }
            .environment(state)
        }
    }
}
