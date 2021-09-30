//
//  PokemonListPresenter.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import Foundation

protocol PokemonListPresenting: AnyObject {
    func setPokemons()
}

class PokemonListPresenter: PokemonListPresenting {
    
    weak var viewController: PokemonListDisplayng?
    func setPokemons() {}
}
