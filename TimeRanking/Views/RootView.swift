//
//  RootView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 20/08/2026.
//

import SwiftUI
import SwiftData

struct RootView: View {
    @Query private var users: [User]
    
    var body: some View {
        NavigationStack {
            if let user = users.first {
                HomeView(user: user)
            } else {
                IntroView()
            }
        }
    }
}

#Preview {
    RootView()
}
