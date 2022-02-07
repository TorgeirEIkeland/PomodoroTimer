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
                    Image("redTomato")
                        .resizable()
                        .frame(width: 260, height: 260 )
                    
                } else {
                    
                    Image("greenTomato")
                        .resizable()
                        .frame(width: 260, height: 290 )
                    
                }
                
                Text("11:11:11") // TIMER
                
                
                Spacer()
                    .frame(height: 250)
                
                
                if counter == 0 {
                    Button {
                        //Action
                    } label: {
                        Text("End Session")
                            .font(.system(size: 18))
                            .clipShape(Rectangle())
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                } else {
                    
                    Button {
                        //Action
                    } label: {
                        
                    }
                    
                    Button {
                        //Action
                    } label: {
                        
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
