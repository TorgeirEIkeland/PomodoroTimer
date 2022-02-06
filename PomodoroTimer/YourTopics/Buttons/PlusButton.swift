//
//  PlusButton.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 04/02/2022.
//

import Foundation
import SwiftUI

struct PlusButton: View{

    var body: some View{
        VStack{
            Image(systemName: Consts.Icons.plusIcon)
                .resizable().frame(width: 32, height: 32, alignment: .leading)
                .foregroundColor(Color(Consts.Color.textColor))
        }
    }
}

