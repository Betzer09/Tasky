//
//  ShoppingItem.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import Foundation
import SwiftUI

var SHOPPING_ITEMS: [ShoppingItem] = [
    ShoppingItem(id: 1000, name: "Item 1", isComplete: false),
    ShoppingItem(id: 1001, name: "Item 2", isComplete: true),
    ShoppingItem(id: 1002, name: "Item 3", isComplete: true)
]


struct ShoppingItem: Identifiable {
    var id: Int
    let name: String
    let isComplete: Bool
}
