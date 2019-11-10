//
//  AddItemScene.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct AddItemScene: View {
    @State var itemPlaceholder: String = ""
    @Binding var isPresenting: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            TextField("Bananas", text: $itemPlaceholder)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                // Create row
                let newItem = ShoppingItem(id: Int.random(in: 0...1000), name: self.itemPlaceholder, isComplete: false)
                SHOPPING_ITEMS.append(newItem)
                print("We now have \(SHOPPING_ITEMS.count)")
                self.isPresenting = false
            }) {
                Text("Add Item")
                    .foregroundColor(Color.black)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2)
                )
            }
        }.padding(20)
    }
}

// MARK: - Preview Doesn't work on this page
//struct AddItemScene_Previews: PreviewProvider {
//    static var previews: some View {
//        AddItemScene(isPresenting: Binding<Bool>(false))
//    }
//}
