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
    
    var body: some View {
        
        VStack(spacing: 10) {
            TextField("Bananas", text: $itemPlaceholder)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                print("Button Pressed")
            }) {
                Text("Border Button")
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

struct AddItemScene_Previews: PreviewProvider {
    static var previews: some View {
        AddItemScene()
    }
}
