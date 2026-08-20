//
//  RootView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 20/08/2026.
//

import SwiftUI
import SwiftData

struct RootView: View {
    @Query private var user : [User]
    
    var body: some View {
        if let user = user.first {
            IronView(user: user)
        }
        else {
            IntroView()
        }
    }
}

#Preview {
    RootView()
}
