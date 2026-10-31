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
    // Here we are inizialize an empty object
    var name : String;
    var userStats : UserStats;
    
    init(name: String , userStats : UserStats = UserStats()){
        self.name = name;
        self.userStats = userStats;
    }
}

@Model
final class UserStats{
    // Default Values
    // In this case an empty array
    var skillsList = [Skill]()

    init(skillsList: [Skill] = [Skill]()) {
        self.skillsList = skillsList
    }
}

@Model
final class Skill{
    // Default Values
    var skillName : String = ""
    var totalTime : Int = 0 //sec
    var rank : Rank = Rank.iron
    
    init(skillName: String) {
        self.skillName = skillName
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

// The main point here is that you has to use some default values for doing it you has to like set the value not only on the main class but also on the sub class so that every time you try to init a new obj with a empty obj it can use the default values otherwise it will not work, also this means that in reality you are always doing easily this ops , create an empty obj and then edit it.
