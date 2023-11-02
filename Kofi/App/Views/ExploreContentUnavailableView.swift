//
//  ExploreContentUnavailableView.swift
//  Kofi
//
//  Created by Geovana Contine on 02/11/23.
//

import SwiftUI

struct ExploreContentUnavailableView: View {
    var body: some View {
        ContentUnavailableView.init(
            "Content Unavailable",
            systemImage: "wifi.exclamationmark.circle.fill",
            description: Text("Please try again in a few minutes")
        )
    }
}
