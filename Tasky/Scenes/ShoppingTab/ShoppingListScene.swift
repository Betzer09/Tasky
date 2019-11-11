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
    @State var shoppingListState: [ShoppingList:Bool] = [:]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(SHOPPING_LISTS, id: \.self) { list in
                    Section(header: ShoppingListHeaderScene(shoppingList: list).onTapGesture {
                        self.shoppingListState[list] = !self.isExpanded(list)
                    }) {
                        if self.isExpanded(list){
                            ForEach(list.shoppingItems, id:\.self){ item in
                                ShoppingRow(item: item)
                            }
                        }
                    }
                }.navigationBarTitle("Shopping List")
                .listStyle(GroupedListStyle())
            }
        }
    }
    
    func isExpanded(_ shoppingList:ShoppingList) -> Bool {
        shoppingListState[shoppingList] ?? false
    }
}

struct ShoppingListScene_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListScene()
    }
}
