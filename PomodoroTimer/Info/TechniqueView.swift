//
//  TechniqueView.swift
//  PomodoroTimer
//
//  Created by Bruker on 10/02/2022.
//

import SwiftUI

struct TechniqueView: View {
    @State var title1: String = "The Pomodoro Technique is a time management method developed by Francesco Cirillo in the late 1980s.[1] It uses a timer to break work into intervals,"
    @State var title2: String = "traditionally 25 minutes in length, separated by short breaks. Each interval is known as a pomodoro, from the Italian word for tomato, after the tomato-shaped kitchen timer Cirillo used as a university student"
    
    var color: Color
    
    var body: some View {
        
        VStack (spacing: 30){
            Spacer()
            Text(title1)
            //.font(.title3)
                .lineLimit(5)
                .padding()
            
            Spacer()
            
            ButtonView(color: color, title: "Chose Topic to Study")
                .navigationTitle("POMODORO-Technique")
            
            
            Text(title2)
                .lineLimit(10)
                .padding()
            
            NavigationLink(destination: MainView()) {
                Text("Go to your topics")
                    .font(.system(size: 18))
                    .frame(width: 300)
                    .foregroundColor(Color.black)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 1))
            }.background(Color(Consts.Color.lightGreen))
                .cornerRadius(10)
            
        }
        Spacer()
            .frame(height: 5)
    }
    
}


struct TechniqueView_Previews: PreviewProvider {
    static var previews: some View {
        TechniqueView(color: Color.black)
    }
}
