import UIKit

enum PokemonDetailsFactory {
    static func make(index: Int) -> UIViewController {
        let service: PokemonDetailsServicing = PokemonDetailsService()
        let router: PokemonDetailsRouting = PokemonDetailsRouter()
        let presenter: PokemonDetailsPresenting = PokemonDetailsPresenter(router: router)
        let interactor = PokemonDetailsInteractor(service: service, presenter: presenter)
        let viewController = PokemonDetailsViewController(interactor: interactor, index: index)

        router.viewController = viewController
        presenter.viewController = viewController

        return viewController
    }
}
