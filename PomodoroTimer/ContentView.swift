//
//  ContentView.swift
//  PomodoroTimer
//
//  Created by Torgeir Eikeland on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
   
    @State var title: String = "Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest. Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest.."
    
    var body: some View {
        
                VStack (spacing: 100) {
                    Text(title)
                        .font(.title)
                        .lineLimit(5)
                        .padding()
                    
                    
                    Spacer()
                    
                    NavigationLink( destination: TechniqueView(color: .brown), label: {
                        Text("Learn more about Pomodoro")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    })
                    
                    NavigationLink(destination: MainView(), label: {
                        Text("Chose topic to study...")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        
                    })
                    Spacer()
                    
                }
            
        }
        
        
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
