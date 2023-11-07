//
//  CoffeeCarouselView.swift
//  Kofi
//
//  Created by Geovana Contine on 02/11/23.
//

import SwiftUI
import GeoKit

struct CoffeeCarouselView: View {
    
    @Environment(Store.self) var store
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: PaddingSize.xxxs.rawValue) {
                ForEach(store.state.explore.allCoffees) { coffee in
                    VStack(alignment: .leading) {
                        ZStack {
                            Rectangle()
                                .fill(.teal.gradient)
                            
                            Image("cup")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(size: .xxs)
                        }
                        .frame(width: 150, height: 150)
                        
                        Text(coffee.name)
                            .style(.subheadline, weight: .bold)
                        
                        Text(coffee.author)
                            .style(.footnote, weight: .regular, color: .secondary)
                    }
                }
            }
            .padding(.horizontal, size: .xxxs)
        }
    }
}
