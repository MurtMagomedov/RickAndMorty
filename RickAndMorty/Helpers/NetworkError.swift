//
//  NetworkError.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 12.01.2025.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid Response from the Server"
    case invalidData = "The Data from the Server is invalid"
}
