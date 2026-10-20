//
//  TimePicker.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 20/10/2026.
//

import SwiftUI
import SwiftData

struct Time {
    var hours : Int
    var mininutes : Int
    var seconds : Int
}

struct TimePicker : View{
    @Binding var time : Time
    
    var body: some View{
        Grid{
            GridRow{
                TextField("Hours" ,time.hours )
                TextField("Minutes" , time.mininutes )
                TextField("Seconds" , time.seconds)
            }
        }
    }
}
