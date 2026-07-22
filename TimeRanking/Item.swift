//
//  Item.swift
//  TimeRanking
//
//  Created by Vincenzo Pregadio on 22/07/2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
