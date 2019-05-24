//
//  scoreViewController.swift
//  little-app-game
//
//  Created by User24 on 2019/5/21.
//  Copyright © 2019 User24. All rights reserved.
//

import UIKit

class scoreViewController: UIViewController {

    @IBOutlet weak var sssDisplay: UITextView!
    @IBOutlet weak var ssDisplay: UITextView!
    @IBOutlet weak var sDisplay: UITextView!
    @IBOutlet weak var aDisplay: UITextView!
    @IBOutlet weak var valueDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sssDisplay.text = "SSS: " + String(sssNum)
        ssDisplay.text = "SS: " + String(ssNum)
        sDisplay.text = "S: " + String(sNum)
        aDisplay.text = "A: " + String(aNum)
        valueDisplay.text = "Tatal Value: " + String(tatalValue)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
