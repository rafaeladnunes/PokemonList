//
//  PokemonDetails.swift
//  Pokemon
//
//  Created by Rafaela Nunes on 04/11/21.
//

import Foundation

struct PokemonDetails: Decodable {
    let name: String
    let order: Int
    let id: Int
    let height: Int
    let baseExperience: Int
    let weight: Int
//    let sprites: [String : Any]?
//    let types: [[String : Any]]?
//    let moves: [[String : Any]]?
    
    enum CodingKeys: String, CodingKey {
        case baseExperience = "base_experience"
        case name, order, id, height, weight
    }
    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        name = try container.decode(String.self)
//        order = try container.decode(Int.self)
//        id = try container.decode(Int.self)
//        height = try container.decode(Int.self)
//        baseExperience = try container.decode(Int.self)
//        weight = try container.decode(Int.self)
//    }
}
