//
//  AddColorListView.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/20/22.
//

import SwiftUI

struct AddSpaColorsView: View {
    var viewModel: MySpaColorsViewModel
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        List {
            ForEach(viewModel.myInks, id: \.inkColor.id) { ink in
                HStack {
                    Toggle(isOn: $isSelected, label: { Text("This isn't showing") } )
                        .toggleStyle(.checklist)
                        .labelsHidden()
                    CardView {
                        Text("\(ink.inkColor.colorName)")
                    }
                }
                .padding(.horizontal)
                .background(Color(.sRGB,
                                   red: ink.inkColor.rgbCode.red / 255,
                                   green: ink.inkColor.rgbCode.green / 255,
                                   blue: ink.inkColor.rgbCode.blue / 255,
                                   opacity: 1))
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Add Colors")
        .toolbar {
            Button("Save") {
                
            }
        }
    }
}
