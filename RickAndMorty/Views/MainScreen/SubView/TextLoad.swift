//
//  TextLoading.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 12.01.2025.
//

import SwiftUI

struct TextLoad: View {
    let model: Model
    let textColor: Color
    let backColor: Color
    let geometry: GeometryProxy
    var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text(model.name)
                        .font(.system(size: geometry.size.width * 0.055, weight: .regular))
                        .lineLimit(2)
                        .minimumScaleFactor(0.8)
                    
                    /// Информация о том, жив ли персонаж
                    Spacer()
                    
                    Text(model.status)
                        .font(.system(size: geometry.size.width * 0.035, weight: .regular))
                        .padding(.vertical, 4)
                        .padding(.horizontal, 8)
                        .foregroundColor(textColor)
                        .background(backColor)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
                Text("\(model.species), \(model.gender)")
                    .font(.system(size: geometry.size.width * 0.035, weight: .regular))
                
                HStack(spacing: 6) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 12))
                    Text("Watch epizodes")
                        .font(.system(size: geometry.size.width * 0.035, weight: .regular))
                        .foregroundColor(.orange)
                }
                .padding(.vertical, 9)
                .padding(.horizontal, 12)
                .background(.lightOrange)
                .clipShape(RoundedRectangle(cornerRadius: 17))
                
                HStack(spacing: 6) {
                    Image("marker")
                        .resizable()
                        .frame(width: 12, height: 12)
                    Text(model.location.name)
                        .font(.system(size: geometry.size.width * 0.03, weight: .regular))
                        .foregroundStyle(.gray)
                }
            }
            .padding(.leading, 10)
    }
}
