//
//  MainViewModels.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 12.01.2025.
//

import SwiftUI

final class MainViewModel: ObservableObject {
    @Published var data: [Model] = []
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        Task {
            do {
                let data = try await NetworkManager.shared.getData()
                self.data = data
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                } else {
                    print("Unknown error: \(error)")
                }
            }
        }
    }
    
    func getBackColor(model: Model) -> Color {
        if model.status == "Alive" {
            return .lightGreen
        } else if model.status == "Dead" {
            return .lightRed
        } else {
            return .lighttGray
        }
    }
    
    func getTextColor(model: Model) -> Color {
        if model.status == "Alive" {
            return .green
        } else if model.status == "Dead" {
            return .red
        } else {
            return .gray
        }
    }
}
