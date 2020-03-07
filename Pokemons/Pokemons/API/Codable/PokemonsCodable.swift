//
//  PokemonsCodable.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

struct PokemonsCodable: Codable {
    var count: Int?
    var next: String?
    var previous: String?
    var results: [PokemonCodable]?
}
