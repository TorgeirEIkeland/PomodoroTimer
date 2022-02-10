//
//  AlertAddTopic.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 10/02/2022.
//

import Foundation
import SwiftUI

struct AlertAddTopic<Presenting>: View where Presenting: View{
    
    @Binding var isShowing: Bool
    @Binding var inputText: String
    let presenting: Presenting
    let title: String
    
    var body: some View{
        GeometryReader { (deviceSize: GeometryProxy) in
            ZStack{
                self.presenting
                    .disabled(isShowing)
                VStack{
                    Text(self.title)
                    TextField(self.title, text: self.$inputText)
                    Divider()
                    HStack{
                        Button(action: {
                            withAnimation {
                                self.isShowing.toggle()
                           //     vm.intentAddTopic(to: "\($input)")
                            }
                        }) {
                            Text("Add new topic")
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .frame(
                    width: deviceSize.size.width*0.7,
                    height: deviceSize.size.height*0.7
                )
                .shadow(radius: 1)
                .opacity(self.isShowing ? 1 : 0)
                
            }
    }
    
}
}

extension View {

    func addTopicAlert(isShowing: Binding<Bool>,
                        text: Binding<String>,
                        title: String) -> some View {
        AlertAddTopic(isShowing: isShowing,
                       inputText: text,
                       presenting: self,
                       title: title)
    }

}
