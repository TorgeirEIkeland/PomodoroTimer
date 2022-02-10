//
//  TimerViewModel.swift
//  PomodoroTimer
//
//  Created by Joey Chau on 07/02/2022.
//

import Foundation
import SwiftUI


class TimerViewModel: ObservableObject {
    
    @Published var quotes: [Quote] = []
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common)
    @Published var showAlert: Bool = false
    @Published var timeRemaining: Int = 3 {
        didSet{
            if timeRemaining == 0 {
                showAlert = true 
            }
        }
    }
    
    
    init(){
        fetchData()
    }
    
    
    func fetchData() {
        if let url = URL(string: "https://zenquotes.io/api/random") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let result = try decoder.decode([Quote].self, from: safeData)
                            DispatchQueue.main.async { [weak self] in
                                self?.quotes = result
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    
    
    
    
}
