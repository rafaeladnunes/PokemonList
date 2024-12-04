import Foundation

protocol PokemonDetailsServicing {
    func getDetails(index: Int, completion: @escaping (Result<PokemonDetails, PokemonError>) -> Void)
}

final class PokemonDetailsService: PokemonDetailsServicing {
    func getDetails(index: Int, completion: @escaping (Result<PokemonDetails, PokemonError>) -> Void) {
        let url = "https://pokeapi.co/api/v2/pokemon/\(index)"
        PokemonAPI(url: url).requestAPI { result in
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
}
