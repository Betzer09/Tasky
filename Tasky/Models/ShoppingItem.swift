//
//  ShoppingItem.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import Foundation
import SwiftUI


class ShoppingItem: Identifiable, Equatable, Hashable {
    var id: String = UUID().uuidString
    let name: String
    var isComplete: Bool
    
    init(name: String, isComplete: Bool) {
        self.name = name
        self.isComplete = isComplete
    }
    
    func toggleIsComplete() {
        isComplete = !isComplete
    }
    
    // MARK: - Equatable / Hashable
    static func == (lhs: ShoppingItem, rhs: ShoppingItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
