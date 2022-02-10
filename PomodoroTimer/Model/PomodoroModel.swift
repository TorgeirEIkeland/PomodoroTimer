//
//  PomodoroModel.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 10/02/2022.
//

import Foundation

struct PomodoroModel{
    //var topic: Topic
    
    var historyTopics: [Topic] = []{
        didSet {
            UserDefaults.standard.set(historyTopics, forKey: "history")
        }
    }
    
    init(){
        if let storedTopics = UserDefaults.standard.array(forKey: "history") as? [Topic]{
            historyTopics = storedTopics
        }else{
            historyTopics = []
            }
    }
    
    mutating func addTopic(to: String){
        historyTopics.append(Topic(name: to, time: 0))
    }
}
