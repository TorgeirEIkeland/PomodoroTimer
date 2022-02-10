//
//  ButtonView.swift
//  PomodoroTimer
//
//  Created by Bruker on 10/02/2022.
//

import SwiftUI

struct ButtonView: View {
    var color: Color
    var title: String
    @State var to :CGFloat = 0
    @State var timeOuration = 1500
    @State var isTimerStarted = false
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .trim(from: 0, to: 1)
            //.stroke(color.opacity(0
                .stroke(Color.black.opacity(0.06),style:
                            StrokeStyle(lineWidth:35,lineCap: .round))
                .frame(width: 200, height: 200)
            Circle()
            //.trim(from: 0, to: self.to)
                .trim(from: 0, to: 5)
                .stroke(color, style: StrokeStyle(lineWidth: 35, lineCap: .round))
                .frame(width: 200, height: 200)
                .rotationEffect(.init(degrees: -90))
            //.foregroundColor(color)
            VStack{
                Text("\(self.timeOuration)")
            }
            //Text("\(title)")
            
            //  .foregroundColor(.white)
            //.font(.system(size: 20, weight: .bold))
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
