//
//  IntroView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 20/08/2026.
//

import SwiftUI

struct IntroView: View {
    @State var user : String = ""
    var body: some View {
        Text("Welcome to TimeRanking")
        Text("Choose your Username")
        TextField(
            "Username",
            text: $user
        )
    }
}

#Preview {
    IntroView()
}
