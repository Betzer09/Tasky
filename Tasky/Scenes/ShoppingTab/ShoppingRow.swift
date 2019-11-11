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
    @ObservedObject var item: ShoppingItem

    var body: some View {
        HStack {
            Text("\(item.name)")
                .font(.headline)
                .fontWeight(.regular)
            
            Spacer()
            
            if item.isComplete {
                Button(action: {
                    self.item.toggleIsComplete()
                }) {
                    Image("Checked").renderingMode(.original)
                }
            } else {
                Button(action: {
                    self.item.toggleIsComplete()
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
        ShoppingRow(item: SHOPPING_ITEMS1[1])
    }
}
#endif
