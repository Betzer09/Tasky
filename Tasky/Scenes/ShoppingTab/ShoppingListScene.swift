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
//    @State var currenSelectedList: ShoppingList?
    
    var body: some View {
        NavigationView {
            List(SHOPPING_LIST) { list in
                Section(header: Text("\(list.name)").onTapGesture {
                    self.shoppingListState[list] = !self.isExpanded(list)
                }) {
                    if self.isExpanded(list) {
                        ForEach(list.shoppingItems, id:\.self){ item in
                            Text(item.name)
                        }
                    }
                }.navigationBarTitle("Shopping List")
                 .navigationBarItems(trailing:
                        Button(action: {
                            self.isPresentingView = true
                        }, label: {
                            Text("Add").foregroundColor(Color.black)
                        }).sheet(isPresented: self.$isPresentingView, content: {
                            AddItemScene(isPresenting: self.$isPresentingView)
                        })
                 )
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
