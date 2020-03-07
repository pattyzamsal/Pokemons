//
//  PokemonTableViewCell.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    
    func setData(name: String, number: Int) {
        lblName.text = name
        lblNumber.text = "\(number)"
    }
    
}
