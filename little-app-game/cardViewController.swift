//
//  cardViewController.swift
//  little-app-game
//
//  Created by User24 on 2019/5/13.
//  Copyright © 2019 User24. All rights reserved.
//

import UIKit
import SafariServices

class cardViewController: UIViewController {

    var imageName: String? = "s_test"
    var imageUrl: String? = "s_test"
    var imageValue: Int? = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageName = imageName{
            imageView.image = UIImage(named: imageName)
        }
        
        if let imageValue = imageValue{
            if(imageValue == 50){
                imageText.text = "SSS"
                imageText.font = UIFont(name: imageText.font!.fontName, size: 95)
                imageText.textColor = UIColor.black
            }
            if(imageValue == 10){
                imageText.text = "SS"
                imageText.font = UIFont(name: imageText.font!.fontName, size: 90)
                imageText.textColor = UIColor.white
            }
            if(imageValue == 5){
                imageText.text = "S"
                imageText.font = UIFont(name: imageText.font!.fontName, size: 90)
                imageText.textColor = UIColor.orange
            }
            if(imageValue == 3){
                imageText.text = "A"
                imageText.font = UIFont(name: imageText.font!.fontName, size: 70)
                imageText.textColor = UIColor.blue
            }
            
            print(imageName)
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func linkToWeb(_ sender: Any) {
        if let url = URL(string: imageUrl ?? "") {
            let controller = SFSafariViewController(url: url)
            controller.delegate = self as? SFSafariViewControllerDelegate
            present(controller, animated: true)
        }
    }
    @IBAction func goback(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
