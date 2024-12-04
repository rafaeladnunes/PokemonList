//
//  PokemonTableViewCell.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 12/10/21.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    //MARK: Compenents
    
    private let pokemonName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    private var pokemonImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    func setupCell(pokemon: Results) {
        addSubviews()
        nameConstrains()
        imageConstrains()
        setupComponents(pokemon: pokemon)
    }
    
    private func addSubviews() {
        addSubview(pokemonName)
        addSubview(pokemonImageView)
    }
    
    private func setupComponents(pokemon: Results) {
        pokemonName.text = pokemon.name
        let url = URL(string: pokemon.url)
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        pokemonImageView.image = UIImage(data: data!)
//        pokemonImageView.downloaded(from: pokemon.url)
    }
    
    private func nameConstrains() {
        NSLayoutConstraint.activate([
            pokemonName.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            pokemonName.leadingAnchor.constraint(equalTo: pokemonImageView.trailingAnchor, constant: 8),
            pokemonName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
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

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
