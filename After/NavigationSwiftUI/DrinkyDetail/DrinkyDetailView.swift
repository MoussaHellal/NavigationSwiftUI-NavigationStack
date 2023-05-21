//
//  DrinkyDetailView.swift
//  NavigationSwiftUI
//
//  Created by Moussa on 21/5/2023.
//

import SwiftUI

struct DrinkyViewDetails: View {
    
    @State var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(drink.image)
                .resizable()
                .frame(maxWidth: 400, maxHeight: 300)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12)
                .padding(.bottom)
            Text(drink.name)
                .font(.largeTitle.bold())
                .padding(.bottom)
            Text(drink.longDescription)
                .font(.system(size: 25, weight: .regular))
            Spacer()
        }.padding(.horizontal)
    }
}

struct DrinkyViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkyViewDetails(drink: Drink(name: "Brew Coffe", image: "brewCoffee", shortDescription: "Brew Coffee", longDescription: "Indulge in the aromatic journey of a meticulously brewed cup of coffee. From the moment the fragrant beans meet hot water, a dance of flavors ensues, unfolding rich notes of earthiness, caramel, and subtle fruitiness."))
        
    }
}

