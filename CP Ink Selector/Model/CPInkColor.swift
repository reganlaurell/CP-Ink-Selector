//
//  CPInkService.swift
//  CP Ink Selector
//
//  Created by Regan Laurell on 6/19/22.
//

import Foundation

let cpInkFilePath: String = "/Users/reganlaurell/Documents/Projects/CP Ink Selector/CP Ink Selector/cpinks.json"

enum ColorFamily {
    case R, RO, O, OY, Y, YG, G, GB, BG, B, BV, V, RV
}

struct CPInkColor: Codable, Identifiable {
    let colorName: String
    let rgbCode: RgbColor
    let colorFamily: String
    
    var id: String { colorName }
}

struct RgbColor: Codable {
    let red: Double
    let green: Double
    let blue: Double
}

struct MyCPInkColor: Codable {
    var checked: Bool = false
    let inkColor: CPInkColor
}
