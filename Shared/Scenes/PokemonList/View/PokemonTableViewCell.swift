//
//  PokemonTableViewCell.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 12/10/21.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    //MARK: Compenents
    
    private let namePokemon: UILabel = {
        let label = UILabel()
        return label
    }()

    func setupCell(pokemon: PokemonsList.abilities) {
        namePokemon.text = pokemon.ability.name
    }
}
