//  TimePicker.swift
//  TimeRanking
//  Created by Vincenzo Pregadio on 20/10/2026.

import SwiftUI
import SwiftData

struct Time {
    var hours : Int
    var mininutes : Int
    var seconds : Int
}

struct TimePicker : View{
    @Binding var h : String
    @Binding var m : String
    @Binding var s : String
    
    var body: some View{
        Grid{
            GridRow{
                TextField("Hours" , text : $h  )
                TextField("Minutes" , text : $m )
                TextField("Seconds" , text : $s )
            }
        }
    }
}
