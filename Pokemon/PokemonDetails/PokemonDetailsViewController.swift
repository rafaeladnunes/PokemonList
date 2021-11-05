import UIKit

protocol PokemonDetailsDisplaying: AnyObject {
    func setDetails(pokemon: PokemonDetails)
}

final class PokemonDetailsViewController: UIViewController, PokemonDetailsDisplaying {
    
    private let interactor: PokemonDetailsInteracting
    private var pokemon: PokemonDetails?
    private let index: Int
    private var contentView: PokemonDetailsView?
    
    init(interactor: PokemonDetailsInteracting, index: Int) {
        self.interactor = interactor
        self.index = index
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cicle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        interactor.getDetails(index: index)
    }
    
    override func loadView() {
        super.loadView()
        contentView = PokemonDetailsView()
        self.view = contentView
    }
    
    func setDetails(pokemon: PokemonDetails) {
        self.pokemon = pokemon
        contentView?.setupCell(pokemon: pokemon)
    }
}
