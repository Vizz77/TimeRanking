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
    let user : User
    
    var corner_text : some View{
        Text("Streak : 10 days").font(Font.title.weight(.bold))
    }
    
    var propic : some View{
        Image(systemName: "person.fill").frame(maxHeight: .infinity , alignment: .topLeading).padding()
    }
    
    var name : some View{
        Text("Welcome back " + user.name + " !").frame(maxHeight: .infinity , alignment: .topLeading).padding()
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
    
    let BackgroundIron = Color(hex: 0xcbcdcd)
    
    var body: some View{
        ZStack {
            BackgroundIron.ignoresSafeArea()
            HStack(alignment: .top){
                Spacer()
                propic;
                name;
                Spacer()
            }
            VStack(spacing: 16){
                corner_text;
                main;
                buttonLog;
                
            }
        }
    }
}

#Preview {
    IronView(
        user : User(
            name : "Vizz"
        )
    )
}
