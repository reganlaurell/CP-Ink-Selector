//
//  MySpaColorsListView.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/20/22.
//

import SwiftUI

struct MySpaColorsListView: View {
    var viewModel = MySpaColorsViewModel()
    
    @State private var showSheet = false
    
    var body: some View {
        List {
            ForEach(viewModel.myInks, id: \.inkColor.id) { ink in
                CardView {
                    Text("\(ink.inkColor.colorName)")
                }.background(Color(.sRGB,
                                   red: ink.inkColor.rgbCode.red / 255,
                                   green: ink.inkColor.rgbCode.green / 255,
                                   blue: ink.inkColor.rgbCode.blue / 255,
                                   opacity: 1))
            }
        }.listStyle(.plain)
            .toolbar {
                Button {
                    showSheet.toggle()
                } label: {
                    Image(systemName: "plus.app")
                }.sheet(isPresented: $showSheet) {
                    NavigationView {
                        AddSpaColorsView(viewModel: viewModel)
                    }
                }
            }
    }
}
