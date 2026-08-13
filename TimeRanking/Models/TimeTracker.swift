//
//  TimeTracker.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 13/08/2026.
//

import Foundation
import SwiftData

@Model
final class UserStats{
    var SkillsList = [Skill]()
    
    init(SkillsList: [Skill] = [Skill]()) {
        self.SkillsList = SkillsList
    }
}

@Model
final class Skill{
    var skillName : String
    var Totaltime : Int
    var Rank : Rank
    
    init(skillName: String, Totaltime: Int, Rank: Rank) {
        self.skillName = skillName
        self.Totaltime = Totaltime
        self.Rank = Rank
    }
}

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
