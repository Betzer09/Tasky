//
//  ShoppingList.swift
//  Tasky
//
//  Created by Austin Betzer on 11/10/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import Foundation
import SwiftUI



var SHOPPING_ITEMS1: [ShoppingItem] = [
    ShoppingItem(name: "Milk", isComplete: false),
    ShoppingItem(name: "Meat", isComplete: true),
    ShoppingItem(name: "Breat", isComplete: true)
]

var SHOPPING_ITEMS2: [ShoppingItem] = [
    ShoppingItem(name: "Ceral", isComplete: false),
    ShoppingItem(name: "Apple Juice", isComplete: true),
    ShoppingItem(name: "Avicados", isComplete: true)
]

var SHOPPING_ITEMS3: [ShoppingItem] = [
    ShoppingItem(name: "iPhone Charger", isComplete: false),
    ShoppingItem(name: "AirPods Pro", isComplete: true),
    ShoppingItem(name: "Candy", isComplete: true)
]

var SHOPPING_LISTS: [ShoppingList] = [
    ShoppingList(name: "Costco", shoppingItems: SHOPPING_ITEMS3),
    ShoppingList(name: "Fred Meyers", shoppingItems: SHOPPING_ITEMS1),
    ShoppingList(name: "Smiths", shoppingItems: SHOPPING_ITEMS2)
]

struct ShoppingList: Identifiable, Hashable  {
    static func == (lhs: ShoppingList, rhs: ShoppingList) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: String = UUID().uuidString
    var name: String
    var shoppingItems: [ShoppingItem]
}
