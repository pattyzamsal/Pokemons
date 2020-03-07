//
//  ImageNamesApp.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import UIKit

enum ImageNamesApp: String {
    case search = "Search"
}

extension ImageNamesApp {
    var value: UIImage {
        return UIImage(named: self.rawValue) ?? UIImage()
    }
}
