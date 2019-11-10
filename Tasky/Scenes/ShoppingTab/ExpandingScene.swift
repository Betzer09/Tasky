//
//  ExpandingScene.swift
//  Tasky
//
//  Created by Austin Betzer on 11/10/19.
//  Copyright © 2019 SPARQDEV. All rights reserved.
//

import SwiftUI

struct ExpandingScene: View {
    @State var sectionState: [Int:Bool] = [:]

    var body: some View {
        NavigationView {
            List {
                ForEach(1...6, id: \.self) { section in
                    Section(header: Text("Section \(section)").onTapGesture {
                        self.sectionState[section] = !self.isExpanded(section)
                    }) {
                        if self.isExpanded(section){
                            ForEach(1...4, id:\.self){ row in
                                Text("Row \(row)")
                            }
                        }
                    }
                }
            }.navigationBarTitle("Hello Nav")
            .listStyle(GroupedListStyle())
        }
    }
    
    func isExpanded(_ section:Int) -> Bool {
        sectionState[section] ?? false
    }
}

struct ExpandingScene_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingScene()
    }
}
