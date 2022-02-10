//
//  MainView.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 04/02/2022.
//

import Foundation
import SwiftUI



struct MainView: View {
    
    @ObservedObject var topicsDataService: TopicsDataService = TopicsDataService()
    @ObservedObject var vm: ViewModelMainView = ViewModelMainView()
    @State private var showAlert = false
    @State private var input = ""

    var body: some View {

           VStack(){
                HStack(){
                    VStack(){
                        Text("YOUR TOPICS")
                            .padding(.bottom, 30)
                        Button{
                            self.showAlert.toggle()
                    //        vm.intentAddTopic(to: "\($input)")
                        }label:{
                            Label("Add new topic", systemImage: Consts.Icons.plusIcon)
                        }
                    }
                }
                VStack(){
                    List{
                        ForEach(topicsDataService.topics, id: \.self){ t in
                            NavigationLink(destination: TopicView(topic: t)){
                                Label("\(t.name) - (\(t.time)h)", systemImage: Consts.Icons.arrowIcon)
                            }
                        }
                    }
                }
                VStack(){
                   HStack(){
                       NavigationLink(destination: TechniqueView(color: .black)){
                           Text("What is pomodoro?")
                       }.padding()
                       Spacer()
                       Text("Edit")
                           .padding()
                   }
                }
            }
           .addTopicAlert(isShowing: $showAlert, text: $input, title: "Add Topic")
           .navigationBarHidden(true)
   }
}


//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
