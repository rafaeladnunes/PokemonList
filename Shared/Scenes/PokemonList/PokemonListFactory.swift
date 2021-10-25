//
//  PokemonListFactory.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 14/10/21.
//

import UIKit

protocol PokemonListFactoring: AnyObject {
    func makePokemonList() -> UIViewController
}

class PokemonListFactory: PokemonListFactoring {

    func makePokemonList() -> UIViewController {
        let presenter = PokemonListPresenter()
        let router = PokemonListRouter()
        let interactor = PokemonListInteractor()
        let controller = PokemonListViewController(
            interactor: interactor,
            router: router
        )
        router.viewController = controller
        presenter.viewController = controller
        return controller
    }
}
