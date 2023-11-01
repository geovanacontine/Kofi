//
//  ActionType.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import Foundation
import GeoKit

@Redux
enum Action {
    case explore(ExploreAction)
    case rating(RatingAction)
}
