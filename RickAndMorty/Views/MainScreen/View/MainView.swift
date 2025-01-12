//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Муртазали Магомедов on 10.01.2025.
//

import SwiftUI

struct MainView: View {
    //MARK: Property
    @StateObject var vm = MainViewModel()
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    ForEach(vm.data, id: \.id) { data in
                        
                        
                        HStack(alignment: .top) {
                            ImageLoad(model: data, geometry: geometry)
                            
                            TextLoad(model: data, textColor: vm.getTextColor(model: data), backColor: vm.getBackColor(model: data), geometry: geometry)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 10)
                    }
                }
            }
            .navigationTitle("Characters")
        }
    }
}
//MARK: Preview
#Preview {
    MainView()
}
