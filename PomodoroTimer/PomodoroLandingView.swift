//
//  ContentView.swift
//  PomodoroTimer
//
//  Created by Torgeir Eikeland on 02/02/2022.
//

import SwiftUI

struct PomodoroLandingView: View {
    
    @State var title: String = "The Pomodoro Technique is a time management method developed by Francesco Cirillo in the late 1980s"
    
    var body: some View {
        
        VStack{
            VStack {
                Spacer()
                Text(title)
                    .lineSpacing(5)
                    .font(.title)
                    .lineLimit(5)
                    .padding()
                
                Spacer()
                
                NavigationLink( destination: TechniqueView(color: .brown)) {
                   
                        Text("Learn more about Pomodoro")
                            .font(.system(size: 18))
                            .frame(width: 300)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1))
                    }.background(Color(Consts.Color.greyColor))
                        .cornerRadius(10)
                    
                
                
                NavigationLink(destination: MainView()) {
                        Text("Chose topic to study...")
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
        .navigationBarTitle(Text("Pomodoro info"), displayMode: .inline)
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PomodoroLandingView()
    }
}
