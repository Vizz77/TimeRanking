//
//  HomeView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 25/08/2026.
//

import SwiftUI

struct HomeView: View {
    let user: User
    
    var body: some View {
        Text("TimeRank")
        Text("Welcome Back " + user.name + "!")
    }
}

#Preview {
    HomeView(user: User(name: "Vizz"))
}

// Make a list of the skill, that then navigate to the next page based on the rank
// Pass to it the account that is created that should contains the name and then empty list of skill
