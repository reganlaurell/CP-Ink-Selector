//
//  SpaColorsListView.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/20/22.
//

import SwiftUI

struct SpaColorsListView: View {
    var viewModel = CPInkViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.cpInks) { ink in
                CardView {
                    Text("\(ink.colorName)")
                }.background(Color(.sRGB,
                                   red: ink.rgbCode.red / 255,
                                   green: ink.rgbCode.green / 255,
                                   blue: ink.rgbCode.blue / 255,
                                   opacity: 1))
            }
        }.listStyle(.plain)
    }
}

struct SpaColorsListView_Previews: PreviewProvider {
    static var previews: some View {
        SpaColorsListView()
    }
}
