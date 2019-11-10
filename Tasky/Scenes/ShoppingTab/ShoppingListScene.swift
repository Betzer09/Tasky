//
//  ShoppingListScene.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct ShoppingListScene: View {
    @State var isPresentingView = false
    var body: some View {
        NavigationView {
            List(SHOPPING_ITEMS) { item in
                ShoppingRow(item: item)
            }.navigationBarTitle("Shopping").navigationBarItems(trailing:
                    Button(action: {
                        print("Button Tapped")
                        self.isPresentingView = true
                    }, label: {
                        Text("Add").foregroundColor(Color.black)
                    }).sheet(isPresented: $isPresentingView, content: {
                        AddItemScene()
                    })
            )
        }
    }
}

struct ShoppingListScene_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListScene()
    }
}
