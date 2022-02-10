//
//  TimerView.swift
//  PomodoroTimer
//
//  Created by Joey Chau on 06/02/2022.
//
import SwiftUI

struct TimerView: View {
    @StateObject var viewModel = TimerViewModel()
    @State private var timeRemaining = 3
    let timer = Timer.publish(every: 1, on: .main, in: .common) //.autoconnect //replace autoconnect.
    
    /* timer pause when app in background ?
     @Environment(\.scenePhase) var scenePhase
     @State private var isActive = true
     */
    
    //var counter = 0
    
    var body: some View {
        
        NavigationView {
           
            VStack{
                
                VStack{
                    
                    Spacer()
                    
                    if timeRemaining >= 1 {
                        Image(Consts.Images.redTomato)
                            .resizable()
                            .frame(width: 260, height: 260 )
                            .onTapGesture {
                                timer.connect() //Works, but??? -->
                            }
                        
                        
                    } else {
                        
                        Image(Consts.Images.greenTomato)
                            .resizable()
                            .frame(width: 260, height: 290 )
                            .blur(radius: 5)
                            .overlay(
                                Text("Quote:\(viewModel.quotes[0].q)\nAuthor:\(viewModel.quotes[0].a)")
                                    .font(.system(size: 18))
                                
                                   
                            )
                        
                    }
                    
                    if timeRemaining >= 1 {
                        Text("\(timeRemaining)")
                            .font(.system(size: 32))
                        
                        
                        
                    } else {
                        
                        Text("Pause timer")
                            .font(.system(size: 32))
                        
                        Text("MM:SS") // pause timer logic
                            .font(.system(size: 32))
                        
                    }
                }.onReceive(timer) {
                    timer in if timeRemaining > 0 {  //TODO: Timer
                        timeRemaining -= 1
                    }
                }
                
                Spacer()
                //PAUSE
                VStack {
                    Spacer()
                    
                    if timeRemaining == 0 {
                        
                        Button {
                            //Action
                        } label: {
                            Text("Skip break")
                                .font(.system(size: 18))
                                .frame(width: 300)
                                .foregroundColor(Color.black)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 1))
                        }.background(Color(Consts.Color.lightGreen))
                        
                        Button {
                            //Action
                        } label: {
                            Text("End Session")
                                .font(.system(size: 18))
                                .frame(width: 300)
                                .foregroundColor(Color.black)
                                .background(Color(Consts.Color.lightRed))
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 1))
                        }
                        .background(Color(Consts.Color.lightRed))
                        Spacer()
                            .frame(height: 5)
                        
                    } else {
                        
                        Button {
                            //Action
                        } label: {
                            Text("End Session")
                                .font(.system(size: 18))
                                .frame(width: 300)
                                .foregroundColor(Color.black)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 1))
                        }
                        .background(Color(Consts.Color.lightRed))
                        Spacer()
                            .frame(height: 5)
                    }
                }
            }
            .navigationBarTitle(Text("Timer"), displayMode: .inline)
        }
        
        
        
        
    }
}


struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}

