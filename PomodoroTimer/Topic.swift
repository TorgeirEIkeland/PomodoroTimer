//
//  Topic.swift
//  PomodoroTimer
//
//  Created by Torgeir Eikeland on 07/02/2022.
//

import Foundation

struct TopicsData: Codable{
    let topics: [Topic]
}

struct Topic: Codable, Hashable{
    var name: String
    var time: Int
}
