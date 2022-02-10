//
//  ViewModelMainView.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 08/02/2022.
//

import Foundation
import SwiftUI

class ViewModelMainView: ObservableObject {
    
    var model: PomodoroModel = PomodoroModel()
    
  @Published var topics: [Topic] = []

    func intentAddTopic(to: String){
        
        model.addTopic(to: to)
    }
}
