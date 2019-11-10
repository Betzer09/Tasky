//
//  ShoppingListHeaderScene.swift
//  Tasky
//
//  Created by Austin Betzer on 11/10/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct ShoppingListHeaderScene: View {
    var shoppingList: ShoppingList
    
    var body: some View {
        HStack {
            Text("\(shoppingList.name)")
                .font(.headline)
                .fontWeight(.medium)
            // Adds a spce
            Spacer()
            
            Image("Down")
        }.frame(maxWidth: .infinity)
        .padding()
    }
}

struct ShoppingListHeaderScene_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListHeaderScene(shoppingList: SHOPPING_LISTS.first!)
    }
}
