//
//  ShoppingRow.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI



/**
 This is really a shopping item cell
 */
struct ShoppingRow: View {
    var item: ShoppingItem
    @State var isComplete: Bool

    
    var body: some View {
        HStack {
            Text("\(item.name)")
                .font(.headline)
                .fontWeight(.regular)
            
            Spacer()
            
            if isComplete {
                Button(action: {
                    print("Is Complete is false")
                    self.isComplete = false
                    self.item.toggleIsComplete()
                    print("Our item is now: \(self.item.isComplete)")
                }) {
                    Image("Checked").renderingMode(.original)
                }
            } else {
                Button(action: {
                    print("Is Complete is now true")
                    self.isComplete = true
                    self.item.toggleIsComplete()
                    print("Our item is now: \(self.item.isComplete)")
                }) {
                    Image("Unchecked").renderingMode(.original)
                }
            }
        }
        .frame(maxWidth: .some(325))
        .padding([.leading, .trailing], 12)
        .padding([.top, .bottom], 10)
    }
}

#if DEBUG
struct ShoppingRow_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingRow(item: SHOPPING_ITEMS1[1], isComplete: SHOPPING_ITEMS1[1].isComplete)
    }
}
#endif
