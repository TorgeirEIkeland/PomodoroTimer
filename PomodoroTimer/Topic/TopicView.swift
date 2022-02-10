//
//  TopicView.swift
//  PomodoroTimer
//
//  Created by Torgeir Eikeland on 07/02/2022.
//

import Foundation
import SwiftUI

struct TopicView: View{
    @State private var isShowingAlert = false
    @State private var alertInput = ""
    
    var topic: Topic
    let index: Int

    var body: some View{
        HStack{
            Spacer()
                    VStack {
                        Spacer()
                        Text("Shows total time spent studying current topic")
                        Spacer()
                        
                        
                        Button(action: {
                            withAnimation {
                                self.isShowingAlert.toggle()
                            }
                        }) {
                            Text("Have you been to a lecture? Or forgotten to add time studying this topic? Add this time manually here")
                        }
                        Spacer()
                        NavigationLink(destination: TimerView()){
                            Text("Start studying")
                                .frame(width: 250, height: 75)
                                .font(Font.headline.weight(.bold))
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color(Consts.Color.lightGreen))
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 1))
                        }
                        Spacer().frame(height: 50)
                    }
            Spacer()
    }
        .textFieldAlert(isShowing: $isShowingAlert, text: $alertInput, title: "Time")
        .navigationTitle(topic.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
