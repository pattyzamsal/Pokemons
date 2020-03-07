//
//  APIConstants.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

enum URLConstants: String {
    case allPokemonsKanto = "pokemon"
}

func returnUrl(path: String) -> URL {
    
    let baseUrl = Bundle.main.infoDictionary?[TextsApp.baseURL.rawValue] as! String
    return try! baseUrl.asURL()
}
