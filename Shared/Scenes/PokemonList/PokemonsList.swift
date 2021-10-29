//
//  PokemonsList.swift
//  PokemonList (iOS)
//
//  Created by Rafaela Nunes on 14/10/21.
//
import Foundation

struct PokemonsList: Codable {
    let count: Int
    let next: String
    let previous: JSONNull?
    var results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let name: String
    let url: String
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
