//
//  ContentView.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NavigationView {
                ColorListView()
                    .navigationTitle("CP Spa Inks")
                    .navigationBarTitleDisplayMode(.large)
            }.tabItem {
                Label("Ink Colors", systemImage: "paintpalette.fill")
                Text("Ink Colors")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
