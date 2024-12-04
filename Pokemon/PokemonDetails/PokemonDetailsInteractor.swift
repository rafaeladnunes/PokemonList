import Foundation

protocol PokemonDetailsInteracting: AnyObject {
    func getDetails(index: Int)
}

final class PokemonDetailsInteractor: PokemonDetailsInteracting {

    private let service: PokemonDetailsServicing
    private let presenter: PokemonDetailsPresenting

    init(service: PokemonDetailsServicing, presenter: PokemonDetailsPresenting) {
        self.service = service
        self.presenter = presenter
    }
    
    func getDetails(index: Int) {
        service.getDetails(index: index) { result in
            switch result {
            case .success(let response):
                self.presenter.setDetails(pokemon: response)
            case .failure(let error):
                break
            }
        }
    }
}
