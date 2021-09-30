//
//  PokemonListViewController.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import UIKit

protocol PokemonListDisplayng: AnyObject {
    func setPokemons()
}

class PokemonListViewController: UIViewController, PokemonListDisplayng {
    
    private var contentView: PokemonListViewProtocol?
    private let interactor: PokemonListInteracting
    
    init(interactor: PokemonListInteracting) {
        self.interactor = interactor
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cicle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contentView == nil {
            contentView = PokemonListView()
        }
    }
    
    func setPokemons() {}
}
