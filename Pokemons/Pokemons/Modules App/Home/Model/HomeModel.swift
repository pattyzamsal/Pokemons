//
//  HomeModel.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

class HomeModel: BaseModel {
    
    private var view: HomeViewProtocol
    
    init(view: HomeViewProtocol) {
        self.view = view
        super.init(view: view)
    }
    
    func getAllPokemonsKanto() {
        if APIClient.validateConnectInternet() {
            APIClient.getAllPokemonsKanto { (pokemons) in
                if let listPokemons = pokemons {
                    self.onSuccessListPokemons(pokemons: listPokemons)
                } else {
                    self.sendMessageWithRepeat(title: TextsApp.errorWithDownloadTitle.rawValue, message: TextsApp.errorWithDownloadMessage.rawValue)
                }
            }
        } else {
            self.sendMessageWithRepeat(title: TextsApp.withoutInternetTitle.rawValue, message: TextsApp.withoutInternetMessage.rawValue)
        }
    }
}

extension HomeModel: HomeModelProtocol {
    func onSuccessListPokemons(pokemons: [PokemonCodable]) {
        self.view.onSuccessListPokemons(pokemons: pokemons)
    }
}
