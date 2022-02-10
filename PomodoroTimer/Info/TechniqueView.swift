//
//  TechniqueView.swift
//  PomodoroTimer
//
//  Created by Bruker on 10/02/2022.
//

import SwiftUI

struct TechniqueView: View {
    @State var title1: String = "Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest. Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest.."
    @State var title2: String = "Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest. Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest. Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest.. Pomodoro is a study technique that gives you 25 studytime and 5 minutes rest.."
    
    var color: Color
    
    var body: some View {
        
        VStack (spacing: 30){
            Text(title1)
            //.font(.title3)
                .lineLimit(5)
                .padding()
            
            Spacer()
            
            
            ButtonView(color: color, title: "Chose Topic to Study")
                .navigationTitle("POMODORO-Technique")
                .offset(y: -60)
            
            Text(title2)
            //.font(.title3)
                .lineLimit(10)
                .padding()
            
            Spacer()
            
            NavigationLink(destination: MainView(), label: {
                Text("Go to Your Topics")
                    .bold()
                    .frame(width: 280, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
            })
            
            }
        
    }
}

//struct TechniqueView_Previews: PreviewProvider {
//    static var previews: some View {
//        TechniqueView()
//    }
//}
