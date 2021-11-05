import Foundation

protocol PokemonDetailsPresenting: AnyObject {
    var viewController: PokemonDetailsDisplaying? { get set }
    func setDetails(pokemon: PokemonDetails)
}

final class PokemonDetailsPresenter: PokemonDetailsPresenting {

    private let router: PokemonDetailsRouting
    weak var viewController: PokemonDetailsDisplaying?

    init(router: PokemonDetailsRouting) {
        self.router = router
    }
    
    func setDetails(pokemon: PokemonDetails) {
        viewController?.setDetails(pokemon: pokemon)
    }
}
