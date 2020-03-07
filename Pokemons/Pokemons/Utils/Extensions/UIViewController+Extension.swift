//
//  UIViewController+Extension.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func createAlertView(title: String,
                         message: String,
                         hasCancelButton: Bool,
                         handlerAccept: ((UIAlertAction) -> Void)? = nil,
                         handlerCancel: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if hasCancelButton {
            alert.addAction(alert.createAction(title: TextsApp.cancel.rawValue, handler: handlerCancel))
        }
        alert.addAction(alert.createAction(title: TextsApp.accept.rawValue, handler: handlerAccept))
        
        return alert
    }
}
