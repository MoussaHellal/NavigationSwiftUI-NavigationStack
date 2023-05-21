//
//  DrinkModel.swift
//  NavigationSwiftUI
//
//  Created by Moussa on 21/5/2023.
//

import Foundation

struct Drink: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
    let shortDescription: String
    let longDescription: String
}

