//
//  ViewController.swift
//  LoginAnimation
//
//  Created by sachin yadav on 31/12/16.
//  Copyright © 2016 sachin yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var view1:UIView!
    @IBOutlet var LogINbtn:UIButton!
    @IBOutlet var text1:UITextField!
    @IBOutlet var text2:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LogINbtn.center.y += 2*(self.view.center.y)
        text1.center.x    += 2*( self.view.center.x)
        text2.center.x    -=  2*(self.view.center.x)
        view1.center.y    -=  2*(self.view.center.y)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animation()
    }
    
    
    
   func animation()
 {
    UIView.animate(withDuration: 0.5, delay: 0.5, options: [.curveEaseIn,.curveEaseOut], animations: {
        self.LogINbtn.center.y -= 2*( self.view.center.y)
        self.text1.center.x -=  2*(self.view.center.x)
        self.text2.center.x +=  2*(self.view.center.x)
        self.view1.center.y +=  2*(self.view.center.y)

        
    }, completion: nil)
    
    }
    
    
    
   

}

