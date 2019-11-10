//
//  ShoppingListScene.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct ShoppingListScene: View {
    var body: some View {
        List(SHOPPING_ITEMS) { item in
            ShoppingRow(item: item)
        }
    }
}

struct ShoppingListScene_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListScene()
    }
}
