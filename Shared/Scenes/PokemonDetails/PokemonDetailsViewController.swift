//
//  PokemonDetailsViewController.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 14/10/21.
//

import UIKit

class PokemonDetailsViewController: UIViewController {
    // MARK: - Constants
    
    private let contentView: PokemonDetailsView
    
    init() {
        self.contentView = PokemonDetailsView()
        super.init()
    }
}
