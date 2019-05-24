//
//  ViewControllerFor.swift
//  little-app-game
//
//  Created by User24 on 2019/5/6.
//  Copyright © 2019 User24. All rights reserved.
//

import UIKit



class ViewControllerFor: UIViewController {

    var cashInDraw: Int = 0
    
    
    @IBOutlet weak var RemainingCash: UITextView!
    
    
    let cardshow = [card.init(name: "SSS", cardURL: "https://www.google.com/search?q=%E6%B8%A1%E9%82%8A%E7%9B%B4%E7%BE%8E&oq=%E6%B8%A1%E9%82%8A&aqs=chrome.1.69i57j0l5.2961j0j4&sourceid=chrome&ie=UTF-8", value: 50),
                    card.init(name: "SS02", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557291672.A.43F.html", value: 10),
                    card.init(name: "SS03", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1556723687.A.9E0.html", value: 10),
                    card.init(name: "SS05", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1556348345.A.73D.html", value: 10),
                    card.init(name: "S01", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557619346.A.916.html", value: 5),
                    card.init(name: "S02", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557914518.A.060.html", value: 5),
                    card.init(name: "S03", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1556348345.A.73D.html", value: 5),
                    card.init(name: "S04", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1476581282.A.617.html", value: 5),
                    card.init(name: "S05", cardURL: "https://www.ptt.cc/bbs/Beauty/index.html", value: 5),
                    card.init(name: "S06", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1476581282.A.617.html", value: 5),
                    card.init(name: "A01", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557908010.A.460.html", value: 3),
                    card.init(name: "A03", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557719911.A.CA4.html", value: 3),
                    card.init(name: "A04", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557145878.A.CC3.html", value: 3),
                    card.init(name: "A05", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1557024377.A.687.html", value: 3),
                    card.init(name: "A06", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1556462536.A.AF1.html", value: 3),
                    card.init(name: "A07", cardURL: "https://www.ptt.cc/bbs/Beauty/M.1556291059.A.75A.html", value: 3),
                    card.init(name: "A08", cardURL: "oq=宋仲基&aqs=chrome..69i57j69i59j69i60l2j69i61j0.4293j0j4&sourceid=chrome&ie=UTF-8", value: 3)]
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var testcard: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        RemainingCash.text = "Cash Remaining: " + String(cashInDraw)
    }
    
    func show_new_cardView(delayTime: Double, ranEle: card){
        Timer.scheduledTimer(withTimeInterval: delayTime,repeats: false){_ in print("hi")
            self.cardImage.image = UIImage(named: "")
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration:1.5, delay: 0, animations: {
                self.cardImage.center = CGPoint(x: self.cardImage.center.x, y:275)
            })
            if let controller2 =
                self.storyboard?.instantiateViewController(withIdentifier: "card")as? cardViewController
            {
                
                let imageName = ranEle.name
                let imageUrl = ranEle.cardURL
                let imageValue = ranEle.value
                controller2.imageName = imageName
                controller2.imageUrl = imageUrl
                controller2.imageValue = imageValue
                self.present(controller2, animated: true, completion: nil)
            }
            
            
            
        }
    }
    
    
    @IBAction func Draw(_ sender: Any) {
        if(self.cashInDraw == 0){
            let controller = UIAlertController(title: "Not enought cash!", message: "Go add value now", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }else{
        
        let controller = UIAlertController(title: "抽卡", message: "是否花費5魔法石抽一張卡", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "當然", style: .default) { (_) in
            
                self.cashInDraw = self.cashInDraw - 5
                self.RemainingCash.text = "Cash Remaining: " + String(self.cashInDraw)
                
                let ranEle = self.cardshow.randomElement()
                if(ranEle?.value == 50){
                    tatalValue += 50
                    sssNum += 1
                    self.cardImage.image = UIImage(named: "黑金")
                    UIViewPropertyAnimator.runningPropertyAnimator(withDuration:1.5, delay: 0, animations: {
                        self.cardImage.center = CGPoint(x: self.cardImage.center.x, y:1200)
                    })
                    self.show_new_cardView(delayTime: Double(2.5), ranEle: ranEle!)
                }else if(ranEle?.value == 10){
                    tatalValue += 10
                    ssNum += 1
                    self.cardImage.image = UIImage(named: "白金")
                    UIViewPropertyAnimator.runningPropertyAnimator(withDuration:1.2, delay: 0, animations: {
                        self.cardImage.center = CGPoint(x: self.cardImage.center.x, y:1200)
                    })
                    self.show_new_cardView(delayTime: 2.2, ranEle: ranEle!)
                }else if(ranEle?.value == 5){
                    tatalValue += 5
                    sNum += 1
                    self.cardImage.image = UIImage(named: "金")
                    UIViewPropertyAnimator.runningPropertyAnimator(withDuration:1, delay: 0, animations: {
                        self.cardImage.center = CGPoint(x: self.cardImage.center.x, y:1200)
                    })
                    self.show_new_cardView(delayTime: Double(2), ranEle: ranEle!)
                }else if(ranEle?.value == 3){
                    tatalValue += 3
                    aNum += 1
                    self.cardImage.image = UIImage(named: "銀")
                    UIViewPropertyAnimator.runningPropertyAnimator(withDuration:0.8, delay: 0, animations: {
                        self.cardImage.center = CGPoint(x: self.cardImage.center.x, y:1200)
                    })
                    self.show_new_cardView(delayTime: 1.8, ranEle: ranEle!)
                }
            
        }
        controller.addAction(cancelAction)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
        
        
        
        }
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
