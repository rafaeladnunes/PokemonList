//
//  PokemonListInteractor.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import Foundation

protocol PokemonListInteracting: AnyObject {
    func getPokemons()
}

class PokemonListInteractor: PokemonListInteracting {
    func getPokemons() {}
}
