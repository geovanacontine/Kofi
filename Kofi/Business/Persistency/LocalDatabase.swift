//
//  LocalDatabase.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import Foundation

struct LocalDatabase {
    static var coffees: [Coffee] = [
        .init(
            id: "1",
            name: "Cowards'",
            author: "Geovana Contine",
            sweetness: 5,
            intensity: 1,
            cupSize: .small,
            instructions: "Selecione o café pequeno com a intensidade 1 e acrescente um sache de açúcar."
        ),
        .init(
            id: "2",
            name: "Sérgios'",
            author: "Sérgio Ordine",
            sweetness: 1,
            intensity: 5,
            cupSize: .large,
            instructions: "Selecione dois cafés pequenos com a intensidade 3."
        )
    ]
}
