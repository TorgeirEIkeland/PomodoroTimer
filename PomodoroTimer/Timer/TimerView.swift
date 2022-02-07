//
//  TimerView.swift
//  PomodoroTimer
//
//  Created by Joey Chau on 06/02/2022.
//

import SwiftUI

struct TimerView: View {
    
    var counter = 0
    
    var body: some View {
        NavigationView{
            VStack{
                
                Spacer()
                
                
                if counter == 0 {
                    Image("RedTomato")
                        .resizable()
                        .frame(width: 260, height: 260 )
                    
                } else {
                    
                    Image("GreenTomato")
                        .resizable()
                        .frame(width: 260, height: 290 )
                    
                }
                
                Text("11:11:11") // TIMER
                    .font(.system(size: 32))
                
                Spacer()
                    .frame(height: 250)
                
                
                if counter == 2 {
                    Button {
                        //Action
                    } label: {
                        Text("End Session")
                            .font(.system(size: 18))
                            .foregroundColor(Color.black)
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 1))
                    }
                } else {
                    
                    Button {
                        //Action
                    } label: {
                        Text("Skip break")
                            .font(.system(size: 18))
                            .foregroundColor(Color.black)
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 1))
                    }
                    
                    Button {
                        //Action
                    } label: {
                        Text("End Session")
                            .font(.system(size: 18))
                            .foregroundColor(Color.black)
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 1))
                    }
                    
                    
                }
                
                
                
                Spacer()
                    .frame(height: 20)
                
            }
            
        }
        
        
        
        
        
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
