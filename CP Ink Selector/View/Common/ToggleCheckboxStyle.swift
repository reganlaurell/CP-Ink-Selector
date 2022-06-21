//
//  CheckboxToggleStyle.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/20/22.
//

import Foundation
import SwiftUI

struct ToggleCheckboxStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            if(configuration.isOn) {
                Image(systemName: "checkmark.square.fill")
            } else {
                Image(systemName: "square")
            }
        }
    }
}

extension ToggleStyle where Self == ToggleCheckboxStyle {
    static var checklist: ToggleCheckboxStyle { .init() }
}
