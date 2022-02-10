//
//  TimerView.swift
//  PomodoroTimer
//
//  Created by Joey Chau on 06/02/2022.
//
import SwiftUI

struct TimerView: View {
    
    @StateObject var viewModel = TimerViewModel()
    @State var breakTime = false
    
    var body: some View {
        
        VStack{
            VStack{
                VStack{
                    
                    Spacer()
                    
                    if breakTime == false {
                        Image(Consts.Images.redTomato)
                            .resizable()
                            .frame(width: 260, height: 260 )
                            .onTapGesture {
                                viewModel.timer.connect()
                            }
                            .alert("It´s time for a break", isPresented: $viewModel.showAlert) {
                                Button("OK", role: .cancel) { breakTime = true }
                            }
                        
                    } else {
                        
                        Image(Consts.Images.greenTomato)
                            .resizable()
                            .frame(width: 260, height: 290 )
                            .blur(radius: 5)
                            .overlay(
                                Text("\(viewModel.quotes[0].q)\n\n-\(viewModel.quotes[0].a)")
                                    .font(.system(size: 18))
                        )
                    }
                }
                
                if breakTime == false {
                    Text("\(viewModel.timeRemaining)")
                        .font(.system(size: 32))
                    
                } else {
                    
                    Text("Pause timer")
                        .font(.system(size: 32))
                    
                    Text("05:00") // pause timer logic
                        .font(.system(size: 32))
                    
                }
                
            }.onReceive(viewModel.timer) {
                timer in if viewModel.timeRemaining > 0 {
                    viewModel.timeRemaining -= 1
                }
            }
            
            Spacer()

            VStack {
                
                Spacer()
                
                if breakTime == true {
                    
                    
                    Button {
                        //action
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
                        .cornerRadius(10)
                    
                    NavigationLink(destination: MainView()){
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
                    .cornerRadius(10)
                    Spacer()
                        .frame(height: 5)
                    
                } else {
                    
                    NavigationLink(destination: MainView()){
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
                    .cornerRadius(10)
                    Spacer()
                        .frame(height: 5)
                }
            }
        }.navigationBarTitle(Text("Timer"), displayMode: .inline)
        
        
        
    }
    
}




struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}

