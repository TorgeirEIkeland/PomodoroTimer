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

    var body: some View{
        HStack{
            Spacer()
                    VStack {
                        Spacer()
                        Text("420hrs 69mins")
                        Spacer()
                        
                        
                        Button(action: {
                            withAnimation {
                                self.isShowingAlert.toggle()
                            }
                        }) {
                            Text("Show alert")
                        }
                        Spacer()
                        NavigationLink(destination: TimerView()){
                            Text("Start studying")
                                .frame(width: 250, height: 75)
                                .font(Font.headline.weight(.bold))
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color(Consts.Color.greyColor))
                                .cornerRadius(8)
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
