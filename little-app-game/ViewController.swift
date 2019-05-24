//
//  ViewController.swift
//  little-app-game
//
//  Created by User24 on 2019/5/6.
//  Copyright © 2019 User24. All rights reserved.
//

import UIKit
import UserNotifications

var sssNum = Int(0)
var ssNum = Int(0)
var sNum = Int(0)
var aNum = Int(0)
var tatalValue = Int(0)

class ViewController: UIViewController {

    @IBOutlet weak var CashDisplay: UITextView!
    var cashInMain = Int(10)
    
    @IBOutlet weak var timetext: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            let now = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss E"
            let time = formatter.string(from: now)
            self.timetext.text = time
        }
        
        CashDisplay.text = "Cash Remaining: " + String(cashInMain) + "NTD"
    }
    
    
    @IBAction func NotifyRule(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.title = "眼睛冰淇淋"
        content.subtitle = "抽卡機"
        content.body = "每花費５魔法石就可以獲得一張精美的圖片唷！！黑金卡片甚至價值50分！"
        content.badge = 1
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification1", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let identifier = segue.identifier
        if(identifier == "1"){
            let controller = segue.destination as! ViewControllerFor
            controller.cashInDraw = cashInMain
        }
        
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
