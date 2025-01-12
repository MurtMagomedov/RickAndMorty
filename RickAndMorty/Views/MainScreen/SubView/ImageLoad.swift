//  SwiftUIView.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 10.01.2025.

import SwiftUI

struct ImageLoad: View {
    let model: Model
    let geometry: GeometryProxy
    var body: some View {
        ScrollView {
//            GeometryReader { geometry in
                if let image = URL(string: model.image) {
                    AsyncImage(url: image) { data in
                        if let image = data.image {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width * 0.33, height: geometry.size.width * 0.33)
                                .saturation(model.status == "Dead" ? 0 : 1)
                                .cornerRadius(40)
                        } else {
                            ZStack {
                                Rectangle()
                                    .frame(width: geometry.size.width * 0.33, height: geometry.size.width * 0.33)
                                    .foregroundColor(.secondary)
                                    .cornerRadius(40)
                                Image(systemName: "photo")
                                    .resizable()
                                    .frame(width: geometry.size.width * 0.2, height: geometry.size.width * 0.2)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
            }
        }
//    }
}


