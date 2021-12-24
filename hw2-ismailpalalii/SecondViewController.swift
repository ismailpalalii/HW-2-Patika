//
//  SecondViewController.swift
//  hw2-ismailpalalii
//
//  Created by ismail palali on 22.12.2021.
//

import UIKit

//protocol DataSend: AnyObject {
//    func send(myData: String)
//}
//Create Protocol DataSend

extension Notification.Name {
    static let myData = Notification.Name("myData")
}

// Create Notification

class SecondViewController: UIViewController {
    
    @IBOutlet weak var closureTextField: UITextField!
    @IBOutlet weak var delegateTextField: UITextField!
    @IBOutlet weak var notificationCenterTextField: UITextField!
    
// weak var delegate: DataSend?
// Initilize delegate
    
//var closure: ((_ myData: String) -> Void)?
//Create Closure
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonSendTapped(_ sender: Any) {
        dismiss(animated: true)
        
        //NS Using
        NotificationCenter.default.post(name: .myData, object: nil, userInfo: ["send": notificationCenterTextField.text!])
        
        
//        //Closure Using
//        if let myData = closureTextField.text, let closure = closure {
//            closure(myData)
//       }
//
        
        
        //Delegate Using
//                if let myData = delegateTextField.text{
//                    delegate?.send(myData: myData)
//                }
    }
}
