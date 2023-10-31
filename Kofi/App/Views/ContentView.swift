//
//  ContentView.swift
//  Kofi
//
//  Created by Geovana Contine on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.designTokens) var tokens
    
    var body: some View {
        Text("Kofi")
            .textStyle(
                tokens.font.largeTitleEmphasized,
                withColor: tokens.color.brand.primary10
            )
    }
}

#Preview {
    ContentView()
}
