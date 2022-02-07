//
//  MainView.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 04/02/2022.
//

import Foundation
import SwiftUI
import UIKit


struct MainView: View {
    
    @ObservedObject var uiAlertController: UIAlertController = UIAlertController()
    
    


    
    var body: some View {
        
        
 
        NavigationView{
            VStack(){
                HStack(){
                    VStack(){
                        Text("YOUR TOPICS")
                            .padding(.bottom, 10)
                        Button{
//                            uiAlertController.showAlert(title: "", message: nil, preferredStyle: .alert)
                        
                        }label:{
                            Label("Add new topic", systemImage: Consts.Icons.plusIcon)
                    }
                }
                }
                VStack(){
                    List{
                        ForEach(uiAlertController.topics, id: \.self){ topic in
                            Text(topic)
                        }
                    }
                }
            }
        }
   }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
