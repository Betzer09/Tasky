//
//  ContentView.swift
//  Tasky
//
//  Created by Austin Betzer on 11/9/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Calander View")
                    .tabItem() {
                        Text("Calender")
                }.tag(0)
                
                ShoppingListScene()
                    .tabItem() {
                        Text("Shopping")
                }.tag(1)
                
                
                Text("Cellar")
                    .tabItem() {
                        Text("Cellar")
                }.tag(2)
            }.font(.largeTitle)
                .navigationBarTitle("Tasky")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
