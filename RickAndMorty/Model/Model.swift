//
//  Model.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 10.01.2025.
//

import Foundation

struct Model: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    let location: Location
}

struct Location: Codable {
    let name: String
}

struct ResponseModel: Codable {
    let results: [Model]
}

