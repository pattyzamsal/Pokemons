//
//  HomePresenter.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

protocol HomeViewProtocol: BaseViewProtocol {
    func onSuccessListPokemons(pokemons: [PokemonCodable])
}

protocol HomeModelProtocol: BaseModelProtocol {
    func onSuccessListPokemons(pokemons: [PokemonCodable])
}
