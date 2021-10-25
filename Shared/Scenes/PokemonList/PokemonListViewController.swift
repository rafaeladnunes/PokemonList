//
//  PokemonListViewController.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import UIKit

protocol PokemonListDisplayng: AnyObject {
    func setPokemons()
}

class PokemonListViewController: UIViewController, PokemonListDisplayng {
    
    private var contentView: PokemonListView?
    private let interactor: PokemonListInteracting
    private let router: PokemonListRouting
    
    private lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    init(interactor: PokemonListInteracting, router: PokemonListRouting) {
        self.interactor = interactor
        self.router = router
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cicle

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PokemonTableViewCell.self, forCellReuseIdentifier: "PokemonTableViewCell")
    }
    
    override func loadView() {
        super.loadView()
        contentView = PokemonListView(tableView: tableView)
        self.view = contentView
    }
    
    func setPokemons() {}
}

extension PokemonListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return .zero
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath) as? PokemonTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router.showDetails()
    }
}
