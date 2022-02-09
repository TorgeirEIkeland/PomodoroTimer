//
//  ViewModelMainView.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 08/02/2022.
//

import Foundation
import SwiftUI

class ViewModelMainView: ObservableObject {
    
    @Published var name: String = "JavaScript"
    @Published var time: Int = 50
    
    @Published var topics: [Topic] = []
    
    
    
}
