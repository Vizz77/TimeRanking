//
//  HomeView.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 25/08/2026.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
    let user: User
    @State private var skillName: String = ""
    @State private var showingPopover = false
    
    private let maxSkillCount = 3
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("TimeRank").font(.largeTitle)
            Text("Welcome Back \(user.name)!")
            
            if user.userStats.skillsList.isEmpty {
                Text("No skill").foregroundStyle(.secondary)
            } else {
                List(user.userStats.skillsList) {
                    skill in Text(skill.skillName)
                }.frame(minHeight: 160)
            }
            
            if user.userStats.skillsList.count < maxSkillCount {
                Button("Add your skill") {
                    showingPopover = true
                }.popover(isPresented: $showingPopover) {
                    VStack(spacing: 12) {
                        TextField("Skill", text: $skillName).textFieldStyle(.roundedBorder)
                        Button("Save your skill"){ addSkill() }.disabled(skillName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                    }.padding().frame(width: 240)
                }
            }
        }.padding()
    }
    
    private func addSkill() {
        let trimmedSkillName = skillName.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedSkillName.isEmpty,
              user.userStats.skillsList.count < maxSkillCount else {
            return
        }
        
        let skill = Skill(skillName: trimmedSkillName)
        modelContext.insert(skill)
        user.userStats.skillsList.append(skill)
        skillName = ""
        showingPopover = false
    }
}

//#Preview {
    //HomeView(user: User(name: "Vizz"))
//}

// Make a list of the skill, that then navigate to the next page based on the rank
// Pass to it the account that is created that should contains the name and then empty list of skill
