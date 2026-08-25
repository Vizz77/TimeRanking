//
//  IntroView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 20/08/2026.
//

import SwiftUI

struct IntroView: View {
    @State var username : String = ""
    
    var body: some View {
        Text("Welcome to TimeRanking")
        Form{
            Section{
                TextField("Name" , text: $username).textContentType(.name)
                Button("Create Username"){
                    var user = User(name : username)
                }
                
            }
        }.navigationTitle("Add your Username").navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    IntroView()
}
