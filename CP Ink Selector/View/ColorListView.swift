//
//  ColorListView.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/19/22.
//

import SwiftUI

struct ColorListView: View {
    @State private var selectedOrder = 0
    private let pickerOptions = ["All Colors", "My Colors"]
    
    var body: some View {
        VStack {
            Picker("Ink Colors", selection: $selectedOrder) {
                ForEach(0..<pickerOptions.count) { index in
                    Text(pickerOptions[index]).tag(index)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            if(selectedOrder == 0) {
                SpaColorsListView()
            } else {
                MySpaColorsListView()
            }
            
        }
    }
}
