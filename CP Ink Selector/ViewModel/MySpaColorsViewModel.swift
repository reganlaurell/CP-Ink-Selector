//
//  MySpaColorsViewModel.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/20/22.
//

import Foundation

class MySpaColorsViewModel {
    var myInks: [MyCPInkColor] = []
    private let cpInks: [CPInkColor]
    
    init() {
        self.cpInks = JsonParseUtility.decodeJson(filePath: cpInkFilePath) ?? []
        getMyInks()
    }
    
    private func getMyInks() {
        for ink in self.cpInks {
            self.myInks.append(MyCPInkColor(checked: false, inkColor: ink))
        }
    }
}
