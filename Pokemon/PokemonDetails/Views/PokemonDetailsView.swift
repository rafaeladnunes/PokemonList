//
//  PokemonDetailsView.swift
//  Pokemon
//
//  Created by Rafaela Nunes on 04/11/21.
//

import Foundation
import UIKit

class PokemonDetailsView: UIView {
    private let pokemonName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    private let pokemonOrder: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        return label
    }()
    
    private let pokemonHeight: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        return label
    }()
    
    private let pokemonExperience: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        return label
    }()
    
    private var pokemonImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    func setupCell(pokemon: PokemonDetails) {
        backgroundColor = .white
        addSubviews()
        nameConstrains()
        imageConstrains()
        orderConstrains()
        heightConstrains()
        experienceConstrains()
        setupComponents(pokemon: pokemon)
    }
    
    private func addSubviews() {
        addSubview(pokemonName)
        addSubview(pokemonOrder)
        addSubview(pokemonHeight)
        addSubview(pokemonExperience)
        addSubview(pokemonImageView)
    }
    
    private func setupComponents(pokemon: PokemonDetails) {
        pokemonName.text = pokemon.name
        pokemonOrder.text = "Order: \(pokemon.order)"
        pokemonHeight.text = "Height: \(pokemon.height)"
        pokemonExperience.text = "Experience: \(pokemon.baseExperience)"

//        let url = URL(string: pokemon.url)
//        let data = try? Data(contentsOf: url!)
//        pokemonImageView.image = UIImage(data: data!)
//        pokemonImageView.downloaded(from: pokemon.url)
    }
    
    private func nameConstrains() {
        NSLayoutConstraint.activate([
            pokemonName.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            pokemonName.leadingAnchor.constraint(equalTo: pokemonImageView.trailingAnchor, constant: 8),
            pokemonName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    private func orderConstrains() {
        NSLayoutConstraint.activate([
            pokemonOrder.topAnchor.constraint(equalTo: pokemonName.bottomAnchor, constant: 5),
            pokemonOrder.leadingAnchor.constraint(equalTo: pokemonImageView.trailingAnchor, constant: 8),
            pokemonOrder.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    private func heightConstrains() {
        NSLayoutConstraint.activate([
            pokemonHeight.topAnchor.constraint(equalTo: pokemonOrder.bottomAnchor, constant: 5),
            pokemonHeight.leadingAnchor.constraint(equalTo: pokemonImageView.trailingAnchor, constant: 8),
            pokemonHeight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    private func experienceConstrains() {
        NSLayoutConstraint.activate([
            pokemonExperience.topAnchor.constraint(equalTo: pokemonHeight.bottomAnchor, constant: 5),
            pokemonExperience.leadingAnchor.constraint(equalTo: pokemonImageView.trailingAnchor, constant: 8),
            pokemonExperience.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    private func imageConstrains() {
        NSLayoutConstraint.activate([
            pokemonImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            pokemonImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            pokemonImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 20),
            pokemonImageView.heightAnchor.constraint(equalToConstant: 90),
            pokemonImageView.widthAnchor.constraint(equalToConstant: 90)
        ])
    }
}
