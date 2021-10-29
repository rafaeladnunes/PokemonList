//
//  PokemonListInteractor.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import Foundation

protocol PokemonListInteracting: AnyObject {
    func getPokemons(offSet: Int)
}

class PokemonListInteractor: PokemonListInteracting {
    
    private let service: PokemonListServicing
    
    private enum Constants {
        static var offSet: Int = 0
        static let limit: Int = 10
    }
    
    init(service: PokemonListServicing) {
        self.service = service
    }
    func getPokemons(offSet: Int) {
        if offSet >= Constants.offSet {
            Constants.offSet += 1
        }
        service.getPokemonList(offSet: Constants.offSet, limit: Constants.limit) { result in
            switch result {
            case .success:
                break
            }
        }
    }
}
