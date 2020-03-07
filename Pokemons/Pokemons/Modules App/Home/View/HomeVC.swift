//
//  HomeVC.swift
//  Pokemons
//
//  Created by Patricia Zambrano on 6/03/20.
//  Copyright © 2020 Patricia Zambrano. All rights reserved.
//

import UIKit

class HomeVC: BaseVC {

    @IBOutlet weak var pokemonsTableView: UITableView!
    
    private lazy var presenter = HomeModel(view: self)
    
    private var searchBarButton: UIBarButtonItem!
    private var listOfPokemons = [PokemonCodable]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = TextsApp.pokemons.rawValue
        searchBarButton = UIBarButtonItem.init(image: ImageNamesApp.search.value, style: .plain, target: self, action: #selector(searchOnClick))
        self.navigationItem.setRightBarButtonItems([searchBarButton], animated: false)
        
        pokemonsTableView.delegate = self
        pokemonsTableView.dataSource = self
        pokemonsTableView.separatorStyle = .none
        let nib = UINib(nibName: TextsApp.pokemonTableViewCell.rawValue, bundle: nil)
        pokemonsTableView.register(nib, forCellReuseIdentifier: TextsApp.pokemonTableViewCell.rawValue)
        
        showProgress()
        presenter.getAllPokemonsKanto()
    }
    
    //MARK: Actions buttons
    @objc private func searchOnClick() {
        print("go to search")
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonsTableView.dequeueReusableCell(withIdentifier: TextsApp.pokemonTableViewCell.rawValue) as! PokemonTableViewCell
        
        if !listOfPokemons.isEmpty {
            cell.setData(name: listOfPokemons[indexPath.row].name ?? "", number: indexPath.row)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("go to the detail")
    }
}

extension HomeVC: HomeViewProtocol {
    func onSuccessListPokemons(pokemons: [PokemonCodable]) {
        hideProgress()
        listOfPokemons = pokemons
        pokemonsTableView.reloadData()
    }
}
