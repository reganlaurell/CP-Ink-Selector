//
//  CPInkViewModel.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/19/22.
//

import Foundation

class CPInkViewModel {
    
    let cpInks: [CPInkColor]
    
    init() {
        self.cpInks = JsonParseUtility.decodeJson(filePath: cpInkFilePath) ?? []
    }
}
