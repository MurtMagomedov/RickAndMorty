//
//  NetworkManager.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 10.01.2025.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let urlNews = "https://rickandmortyapi.com/api/character"
    private let decoder = JSONDecoder()
        
    func getData() async throws -> [Model] {
        guard let url = URL(string: urlNews) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        do {
            let responseModel = try decoder.decode(ResponseModel.self, from: data)
            return responseModel.results
        } catch {
            throw NetworkError.invalidData
        }
    }

}
