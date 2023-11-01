//
//  ForYouCoffeeView.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import SwiftUI
import GeoKit

struct ForYouCoffeeView: View {
    
    @Environment(AppState.self) var state
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: PaddingSize.xxxs.rawValue) {
                ForEach(state.explore.allCoffees) { coffee in
                    VStack(alignment: .leading) {
                        ZStack {
                            Rectangle()
                                .fill(.teal.gradient)
                            
                            Image("cup")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(size: .xxs)
                        }
                        .frame(width: 150, height: 200)
                        
                        Text(coffee.name)
                            .style(.subheadline, weight: .bold)
                        
                        Text(coffee.author)
                            .style(.footnote, weight: .regular, color: .secondary)
                    }
                }
            }
            .padding(.horizontal, size: .xxxs)
        }
        .task {
            await Action.run(.explore(.listAllCoffees))
        }
    }
}
