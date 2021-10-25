//
//  PokemonListView.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import Foundation
import UIKit

class PokemonListView: UIView {
    //MARK: - Component

    private unowned var tableView: UITableView
    
    init(tableView: UITableView) {
        self.tableView = tableView
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.addSubview(tableView)
    }
    
}
