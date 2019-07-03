//
//  ViewController.swift
//  CAGradientLayer Examples
//
//  Created by mallikarjun on 03/07/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // View1
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view1.frame.size.width, height: self.view1.frame.size.height)
        
        self.view1.layer.insertSublayer(gradient, at: 0)
        
      //View 2
        
        _ = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 35))
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = self.view2.frame.size
        gradientLayer.colors =
            [UIColor.white.cgColor,UIColor.red.withAlphaComponent(1).cgColor]
        //Use diffrent colors
        view2.layer.addSublayer(gradientLayer)
        
        
        _ = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 35))
        let gradientLayer2:CAGradientLayer = CAGradientLayer()
        gradientLayer2.frame.size = self.view3.frame.size
        gradientLayer2.colors =
            [UIColor.white.cgColor,UIColor.red.withAlphaComponent(1).cgColor]
        gradientLayer2.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer2.endPoint = CGPoint(x: 1.0, y: 1.0)
        //Use diffrent colors
        view3.layer.addSublayer(gradientLayer2)
    }


}

