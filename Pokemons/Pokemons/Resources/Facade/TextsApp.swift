//
//  TextsApp.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

enum TextsApp: String {
    
    //MARK: home view
    case pokemons = "Pokemons"
    
    //MARK: progress view
    case loading = "loading"
    
    //MARK: alerts
    case cancel = "Cancel"
    case accept = "Accept"
    
    //MARK: constants
    case baseURL = "Base Url"
    
    //MARK: errors
    case withoutInternetTitle = "Without connection"
    case withoutInternetMessage = "Please, review your connection to internet"
    case errorWithDownloadTitle = "Something wrong happened"
    case errorWithDownloadMessage = "Your request cann't be processed, try again"
    
    //MARK: objects in the app
    case progressView = "ProgressView"
    case pokemonTableViewCell = "PokemonTableViewCell"
}
