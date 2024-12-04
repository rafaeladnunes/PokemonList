import Foundation

protocol PokemonListInteracting: AnyObject {
    func getPokemons(offSet: Int)
    func didTapDetails(index: Int)
}

final class PokemonListInteractor: PokemonListInteracting {

    private let service: PokemonListServicing
    private let presenter: PokemonListPresenting
    
    private enum Constants {
        static var offSet: Int = 0
        static let limit: Int = 10
    }

    init(service: PokemonListServicing, presenter: PokemonListPresenting) {
        self.service = service
        self.presenter = presenter
    }
    
    func getPokemons(offSet: Int) {
        if offSet >= Constants.offSet {
            Constants.offSet += 1
        }
        service.getPokemonList(offSet: Constants.offSet, limit: Constants.limit) { result in
            switch result {
            case .success(let response):
                self.presenter.setPokemons(pokemons: response)
            case .failure(let error):
                break
            }
        }
    }
    
    func didTapDetails(index: Int) {
        presenter.didTapDetails(index: index)
    }
}
