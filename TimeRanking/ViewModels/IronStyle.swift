//
//  IronStyle.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 31/07/2026.
//
import SwiftUI


// The color hexs
let Battleship = 0x848482
let LightIron = 0xcbcdcd
let WroughtIron = 0x999e98
let BlackIron = 0x343432
let DuronCast = 0x696b5e

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}


struct IronButton : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.background(Color(hex: 0x848482)).clipShape(Capsule())
    }
}
