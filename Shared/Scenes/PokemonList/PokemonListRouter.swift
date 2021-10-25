//
//  PokemonListRouter.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import UIKit

protocol PokemonListRouting {
    func showDetails()
}

class PokemonListRouter: PokemonListRouting {
    
    weak var viewController: UIViewController?

    func showDetails() {
        let controller = PokemonListFactory.makePokemonList()
        viewController?.navigationController?.pushViewController(controller, animated: true)
    }
}
