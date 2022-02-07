//
//  TimerView.swift
//  PomodoroTimer
//
//  Created by Joey Chau on 06/02/2022.
//

import SwiftUI

struct TimerView: View {
    
    var counter = 25
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                VStack{
                    
                    Spacer()
                    
                    if counter > 0 {
                        
                        Image(Consts.Images.greenTomato)
                            .resizable()
                            .frame(width: 260, height: 290 )
                            .blur(radius: 5)
                            .overlay(
                            Text("duwihdnjiweiowejwdnioewjdiowediowenoidweiomwejnioewjdoewdoewopdjewojdiewojdieowniohdwoduwihdnjiweiowejwdnioewjdiowediowenoidweiomwejnioewjdoewdoewopdjewojdiewojdieowniohdwoduwihdnjiweiowejwdnioewjdiowediowenoidweiomwejnioewjdoewdoewopdjewojdiewojdieowniohdwo")
                                .font(.system(size: 18))
                            
                            )
                        
                    } else {
                        
                        Image(Consts.Images.redTomato)
                            .resizable()
                            .frame(width: 260, height: 260 )
                        
                    }
                    
                    Spacer()
                    
                    
                    if counter < 0 {
                    Text("MM:SS") // TIMER logic
                        .font(.system(size: 32))
                   
                    } else {
                        
                        Text("Pause timer")
                            .font(.system(size: 32))

                        Text("MM:SS") // pause timer logic
                            .font(.system(size: 32))

                        
                    }
                }
                
                VStack {
                    Spacer()
                    
                    if counter < 0 {
                        
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
                        }.background(Color(Consts.Color.lightRed))
                        
                    }
                    
                }
            }
            .navigationBarTitle(Text("Timer"), displayMode: .inline)
        }
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
