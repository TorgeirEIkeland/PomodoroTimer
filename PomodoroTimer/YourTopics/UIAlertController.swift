//
//  UIAlertController.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 06/02/2022.


import Foundation
import UIKit


class UIAlertController : ObservableObject{
    

//    private func showAlert(){
//        let ac = UIAlertController(title: "Enter topic", message: nil, preferredStyle: .alert)
//        ac.addTextField()
//
//        let submitAction = UIAlertAction(title: "Submit", style: .default){ [unowned ac] _ in
//            let answer = ac.textFields![0]
//            //do something with answer
//        }
//        ac.addAction(submitAction)
//
//        present(ac, animated: true)
//    }
}



    
//let alert = UIAlertController(
//    title: "Add new topic",
//    message: "Type in the name of your nre topic",
//    preferredStyle: .alert
//)
//
//alert.addTextField{ field in
//    field.placeholder = "Placeholder"
//}
//
//alert.addAction(UIAlertAction(
//    title: "Cancel",
//    style: .cancel,
//    handler: nil,
//))
//
//alert.addAction(UIAlertAction(
//    title: "Continue",
//    style: .default,
//    handler: {_[weak alert] (_) in
//        let textField = alert?.textFields![0]
//        print("Text field: \(textField?.text)")
//
//    }))
//present(alert, animated: true)
//
//}
//
//
//
//
//
//let alert = UIAlertController(title: "Add new topic", message: "Type in the name of your nre topic", preferredStyle: .alert)
//
//
//alert.addTextField { (textField) in
//textField.text = "The new topic"
//}
//
//
//alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
//let textField = alert?.textFields![0]
//print("Text field: \(textField?.text)")
//}))
//
//
//self.present(alert, animated: true, completion: nil)
