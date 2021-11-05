//
//  PokemonListPresenter.swift
//  Pokemon
//
//  Created by Rafaela Nunes on 04/11/21.
//

import UIKit

protocol PokemonListPresenting: AnyObject {
    var viewController: PokemonListViewController? { get set }
    func setPokemons(pokemons: PokemonsList)
    func didTapDetails(index: Int)
}

class PokemonListPresenter: PokemonListPresenting {
    
    weak var viewController: PokemonListViewController?
    private let router: PokemonListRouting
    
    init(router: PokemonListRouting) {
        self.router = router
    }

    func setPokemons(pokemons: PokemonsList) {
        viewController?.setPokemons(pokemons: pokemons)
    }
    
    func didTapDetails(index: Int) {
        router.showDetails(index: index)
    }
}
