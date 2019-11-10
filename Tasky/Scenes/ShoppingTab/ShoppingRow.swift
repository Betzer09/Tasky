//
//  ShoppingRow.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct ShoppingRow: View {
    var item: ShoppingItem
    
    var body: some View {
        HStack {
            Text("\(item.name)")
            .font(.title)
            .fontWeight(.bold)
        }.padding()
    }
}

struct ShoppingRow_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingRow(item: SHOPPING_ITEMS.first!)
    }
}
