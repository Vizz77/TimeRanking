//
//  IntroView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 20/08/2026.
//

import SwiftUI
import SwiftData

struct IntroView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var username: String = ""
    
    var body: some View {
        Text("Welcome to TimeRanking")
        Form {
            Section {
                TextField("Name", text: $username)
                    .textContentType(.name)
                
                Button("Create Username") {
                    let user = User(name: username)
                    modelContext.insert(user)
                }// you has to add the action to move
            }
        }
        .navigationTitle("Add your Username")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    IntroView()
}
