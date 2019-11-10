//
//  ShoppingItem.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import Foundation
import SwiftUI


struct ShoppingItem: Identifiable, Equatable, Hashable {
    var id: String = UUID().uuidString
    let name: String
    let isComplete: Bool
}
