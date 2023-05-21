//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by Moussa on 21/5/2023.
//

import SwiftUI

struct DrinkyView: View {
    @State private var path: [Drink] = []
    
    @StateObject private var viewModel = DrinkViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.drinks) { drink in
                        Button {
                            path.append(drink)
                        } label: {
                            VStack(alignment: .leading) {
                                Image(drink.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(12)
                                Text(drink.name)
                                    .font(.system(size: 20, weight: .bold))
                                Text(drink.shortDescription)
                                    .font(.system(size: 20, weight: .regular))
                            }.padding()
                        }.buttonStyle(.plain)
                    }
                    .navigationTitle("Drinky")
                    .navigationDestination(for: Drink.self) { drink in
                        DrinkyViewDetails(drink: drink)
                    }
                }
            }
        }
    }
}

struct DrinkyView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkyView()
    }
}
