//
//  ContentView.swift
//  Kofi
//
//  Created by Geovana Contine on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Kofi")
                .style(
                    .largeTitle,
                    weight: .bold,
                    color: .highlight(color: .feedbackNegative)
                )
            
            Rectangle()
                .color(.feedbackAlert)
                .frame(width: 100, height: 100)
                .cornerRadius(size: .circle)
                .shadow(type: .thick)
        }
    }
}

#Preview {
    ContentView()
}
