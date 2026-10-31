//  TimePicker.swift
//  TimeRanking
//  Created by Vincenzo Pregadio on 20/10/2026.

import SwiftUI
import SwiftData

struct TimePicker : View{
    @Environment(\.dismiss) private var dismiss
    @State private var hours : String = "0"
    @State private var minutes : String = "0"
    @State private var seconds : String = "0"
    
    let onSave : (Int) -> Void
    
    private var enteredSecond: Int? {
        guard let h = Int(hours), h >= 0,
              let m = Int(minutes), (0..<60).contains(m),
              let s = Int(seconds), (0..<60).contains(s)
        else { return nil }
        
        let total = h * 3600 + m * 60 + s
        return total > 0 ? total : nil
    }
    
    var body: some View {
        VStack {
            TextField("Hours", text: $hours).keyboardType(.numberPad)
            TextField("Minutes", text: $minutes).keyboardType(.numberPad)
            TextField("Seconds", text: $seconds).keyboardType(.numberPad)

            Button("Add time") {
                if let enteredSecond {
                    onSave(enteredSecond)
                    dismiss()
                }
            }
            .disabled(enteredSecond == nil)
        }
        .padding()
    }
}
