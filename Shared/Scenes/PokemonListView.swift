//
//  PokemonListView.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 30/09/21.
//

import Foundation
import UIKit

protocol PokemonListViewProtocol: AnyObject {
}

class PokemonListView: UIView, PokemonListViewProtocol {
    //MARK: - Component
    
    lazy var tableView: UITableView = {
        var tableView = UITableView()
        return tableView
    }()
    
    
}
