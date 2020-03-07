//
//  BaseModel.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation

class BaseModel {
    
    private var view: BaseViewProtocol
    
    init(view: BaseViewProtocol) {
        self.view = view
    }
}

extension BaseModel: BaseModelProtocol {
    func sendMessageWithRepeat(title: String, message: String) {
        self.view.alertErrorsWithRepeat(title: title, message: message)
    }
}
