//
//  ViewController.swift
//  hw2-ismailpalalii
//
//  Created by ismail palali on 22.12.2021.
//

//In this project, we will send data in 3 different ways.
// 1 -> Closure 2 -> Delegate 3 -> Notification center

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var closureLabelText: UILabel!
    @IBOutlet weak var delegateLabelText: UILabel!
    @IBOutlet weak var notificationCenterLabelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.callData(notification:)), name: .myData, object: nil)
    }

    // NS call
    @objc func callData(notification: NSNotification){
        let myData = notification.userInfo?["send"]
        
        notificationCenterLabelText.text = " NS Example : \(myData!)"
    }
    
    
// Delegate call
    
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if segue.identifier == "SC" {
//                if let secondController = segue.destination as? SecondViewController {
//                    secondController.delegate = self
//                }
//            }
//            }
    
    
    
// Closure call
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "SC" {
//            if let secondController = segue.destination as? SecondViewController {
//                secondController.closure = {
//                    myData in self.closureLabelText.text = "Closure Example : \(myData)"
//                }
//            }
//        }
//    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
    }
    
//    func send(myData: String) {
//        delegateLabelText.text = "Delegate Example : \(myData)"
//    }
    
}
