//
//  BasePresenter.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

protocol BaseViewProtocol {
    func alertErrorsWithRepeat(title: String, message: String)
}

protocol BaseModelProtocol {
    func sendMessageWithRepeat(title: String, message: String)
}
