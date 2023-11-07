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
    
    @State var store = Store()
    
    init() {
        CKContext.shared.setup(identifier: "iCloud.br.com.geovanacontine.Kofi", databaseType: .public)
        GeoLogger.shared.setupSubsystem(named: "br.com.geovanacontine.Kofi")
    }
    
    var body: some Scene {
        WindowGroup {
            DesignSystemView(themes: KofiThemes.supportedThemes) {
                NavigationStack {
                    ExploreView()
                }
            }
            .environment(store)
            .onAppear {
                GeoLogger.shared.view.notice("Kofi session started")
            }
        }
    }
}
