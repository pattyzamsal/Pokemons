//
//  UIAlertController+Extension.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    
    func createAction(title: String, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
        let action = UIAlertAction(title: title, style: .default, handler: handler)
        return action
    }
}
