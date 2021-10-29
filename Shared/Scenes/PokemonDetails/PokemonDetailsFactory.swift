//
//  PokemonDetailsFactory.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 14/10/21.
//

import UIKit

protocol PokemonDetailsFactoring {
    func makePokemonDetails() -> UIViewController
}

class PokemonDetailsFactory: PokemonListFactoring {

    func makePokemonDetails() -> UIViewController {
        let controller = PokemonDetailsViewController()
        return controller
    }
}
