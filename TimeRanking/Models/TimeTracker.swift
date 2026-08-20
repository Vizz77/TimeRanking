//
//  TimeTracker.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 13/08/2026.
//

import Foundation
import SwiftData

@Model
final class User{
    @Attribute(.unique) var id: Int

    var name : String
    var userStats : UserStats
    
    init(id: Int, name: String, userStats: UserStats) {
        self.id = id
        self.name = name
        self.userStats = userStats
    }
}

@Model
final class UserStats{
    var skillsList = [Skill]()

    init(skillsList: [Skill] = [Skill]()) {
        self.skillsList = skillsList
    }
}

@Model
final class Skill{
    var skillName : String
    var totalTime : Int
    var rank : Rank
    
    init(skillName: String, totalTime: Int, rank: Rank) {
        self.skillName = skillName
        self.totalTime = totalTime
        self.rank = rank
    }
}

// this is like creating a type or better a limited one
extension Skill{
    enum Rank : String , CaseIterable , Codable{
        case iron = "Iron"
        case bronze = "Silver"
        case gold = "Gold"
        case platinum = "Platinum"
        case diamond = "Diamon"
        case master = "Master"
        case grandMaster = "GrandMaster"
        case titan = "Titan"
    }
}
