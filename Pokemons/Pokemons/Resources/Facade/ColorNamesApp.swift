//
//  ColorNamesApp.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import UIKit

enum ColorNamesApp: String {
    case lightGreen = "LightGreen"
}

extension ColorNamesApp {
    
    var value: UIColor {
        var instanceColor = UIColor.clear
        
        switch self {
        case .lightGreen:
            instanceColor = UIColor(named: ColorNamesApp.lightGreen.rawValue)!
        }
        
        return instanceColor
    }
}
