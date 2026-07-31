//
//  IronView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 22/07/2026.
//

import SwiftUI
import SwiftData

struct IronView: View{
    @State private var showingAlert = false
    
    var corner_text : some View{
        Text("Streak : 10 days").font(Font.title.weight(.bold))
    }
    
    var propic : some View{
        Image(systemName: "person.fill")
    }
    
    var main : some View{
        Text("Total time spent : 10h")
    }
    
    var buttonLog : some View{
        Button("Show Alert") {
            showingAlert = true
        }.alert(isPresented:$showingAlert) {
            Alert(
                title : Text("PLUTO")
            )
        }.buttonStyle(IronButton())
    }
    
    var body: some View{
        VStack(alignment: .leading , spacing: 16){
            corner_text;
            propic;
            main;
            buttonLog;
        }
    }
}

#Preview {
    IronView()
}
