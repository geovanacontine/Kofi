//
//  KofiApp.swift
//  Kofi
//
//  Created by Geovana Contine on 27/10/23.
//

import SwiftUI

@main
struct KofiApp: App {
    
    private var supportedThemes: [DesignTheme] = [KofiLightTheme()]
    
    var body: some Scene {
        WindowGroup {
            DesignSystemView(themes: supportedThemes) {
                ContentView()
            }
        }
    }
}
