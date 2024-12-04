import UIKit

protocol PokemonDetailsRouting: AnyObject {
    var viewController: UIViewController? { get set }
}

final class PokemonDetailsRouter: PokemonDetailsRouting {

    weak var viewController: UIViewController?
}
