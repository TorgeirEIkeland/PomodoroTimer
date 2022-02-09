//
//  TopicsDataService.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 08/02/2022.
//

import Foundation
import SwiftUI

class TopicsDataService: ObservableObject{
    
    @Published var topics: [Topic] = []
    
    init(){
        readTopicFile()
    }
    
    private func readTopicFile(){
        if let url = Bundle.main.url(forResource: "topic", withExtension: "json"),
           let data = try? Data(contentsOf: url){
            let decoder = JSONDecoder()
            if let jsonTopic = try? decoder.decode(Topics.self, from: data){
                self.topics = jsonTopic.topics
                print(topics)
            }
            
        }
    }
}
