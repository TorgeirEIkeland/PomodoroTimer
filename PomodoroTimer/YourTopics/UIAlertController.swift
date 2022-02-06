//
//  UIAlertController.swift
//  PomodoroTimer
//
//  Created by Stine Marie Vørner on 06/02/2022.
//
//
//import Foundation
//import UIKit
//
//
//class UIAlertController : UIViewController{
//    
//    override func viewDidLoad(){
//        super.viewDidLoad()
//        
//    }
//    
//    
//    @objc private func showAlert(){
//        let alert = UIAlertController(
//            title: "Add new topic",
//            message: "Type in the name of your nre topic",
//            preferredStyle: .alert
//        )
//        
//        alert.addAction(UIAlertAction(
//            title: "Cancel",
//            style: .cancel,
//            handler: nil,
//        ))
//        alert.addAction(UIAlertAction(
//            title: "Continue",
//            style: .default,
//            handler: {_ in
//                
//                
//            }))
//
//    }
//    
//    
//    
//    
//    
//    let alert = UIAlertController(title: "Add new topic", message: "Type in the name of your nre topic", preferredStyle: .alert)
//
//  
//    alert.addTextField { (textField) in
//        textField.text = "The new topic"
//    }
//
//
//    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
//        let textField = alert?.textFields![0]
//        print("Text field: \(textField?.text)")
//    }))
//
//
//    self.present(alert, animated: true, completion: nil)
//}
