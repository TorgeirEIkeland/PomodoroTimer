//
//  MainView.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 04/02/2022.
//

import Foundation
import SwiftUI



struct MainView: View {
    
   // @ObservedObject var uiAlertController: UIAlertController = UIAlertController()
   // @ObservedObject var topics: Topics = Topics()


    var body: some View {

       NavigationView{
            VStack(){
                HStack(){
                    VStack(){
                        Text("YOUR TOPICS")
                            .padding(.bottom, 10)
                        Button{

                        }label:{
                            Label("Add new topic", systemImage: Consts.Icons.plusIcon)
                        }
                    }
                }
                VStack(){
                    List{
                   //     ForEach(topics.myTopics, id: \.self){ item in
                   //     }
                    }
              }
            }
        }
   }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
